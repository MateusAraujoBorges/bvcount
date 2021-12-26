#!/usr/bin/env python3

# remember to install z3 (or put the 'build' dir in the PYTHONPATH
# var)

from z3 import *
from tqdm import tqdm
from typing import Any
from dataclasses import dataclass
import sys
import argparse
import subprocess
import itertools
import tempfile


@dataclass(frozen=True)
class VarData:
    id: int
    lit: Any


# the "0" at the end of the header is required
# -------------------------
# c ind projected_var_ids 0
# p cnf nvar nclauses
def bitblast(formula):
    input_vars = [x for x in collect_vars(formula)]
    # map bits in the bv input vars
    print(f"input vars: {input_vars}", file=sys.stderr)

    map_clauses, map_vars = map_bitvector(input_vars)
    assert (
        map_clauses
    ), "there should be at least one variable mapped for bitblasting!"  # should not be empty
    id_table = {}  # {varname: id}

    curr_id = 1

    for var, weight in map_vars:
        name = var.decl().name()
        id_table[name] = VarData(curr_id, var)
        curr_id = curr_id + 1
        print(f"{name} -> ${id_table[name]}", file=sys.stderr)
    projection_scope = curr_id - 1

    # bitblast
    g = Goal()
    g.add(map_clauses)
    g.add(formula)
    t = Then(
        # Tactic("simplify"),
        # Tactic("fpa2bv"),
        Tactic("simplify"),
        Tactic("propagate-values"),
        Tactic("ctx-solver-simplify"),  # makes z3 die if int2bv is used
        Tactic("bit-blast"),
        Tactic("tseitin-cnf"),
    )

    # print(f"starting to bitblast, {g}", file=sys.stderr)
    bitblasted = t(g)[0]
    # print(f"done bitblasting: {bitblasted.sexpr()}", file=sys.stderr)

    return bitblasted, id_table


def is_literal(e):
    return is_const(e) and e.decl().kind() == Z3_OP_UNINTERPRETED


def is_ite(e):
    return e.decl().kind() == Z3_OP_ITE


def is_iff(e):
    return e.decl().kind() == Z3_OP_IFF


def proj_id_last(var, n_proj_vars, n_vars):
    assert var != 0
    is_neg = var < 0
    if abs(var) <= n_proj_vars:
        new_var = abs(var) - n_proj_vars + n_vars
    else:
        new_var = abs(var) - n_proj_vars

    return new_var * (-1 if is_neg else 1)


def to_dimacs(cnf, table):
    cnf_clauses = []
    projection_scope = len(table)

    for clause in tqdm(cnf):
        assert is_or(clause) or is_not(clause) or is_literal(clause)
        dimacs_clause = list(dimacs_visitor(clause, table))
        dimacs_clause.append("0")
        cnf_clauses.append(" ".join(dimacs_clause))

    # unigen-specific format
    cnf_header = [
        "c ind {} 0".format(" ".join([str(x) for x in range(1, projection_scope + 1)])),
        "p cnf {} {}".format(len(table), len(cnf_clauses)),
    ]

    return cnf_header, cnf_clauses


def map_bitvector(input_vars):
    clauses = []
    mapped_vars = []
    for var in input_vars:
        if is_bool(var):
            mapped_vars.append((var, 1))
            continue

        assert not is_int(
            var
        ), "bitblasting integer variables doesn't work well - replace all ints with bvs"

        name = var.decl().name()
        size = var.size()
        for x in range(size):
            extracted_bool = Bool(name + "!" + str(x))
            clause = extracted_bool == (Extract(x, x, var) == BitVecVal(1, 1))
            if is_fp(var):
                bitweight = compute_weight(var.sort(), x)
            else:
                bitweight = 1
            tup = (extracted_bool, bitweight)
            mapped_vars.append(tup)
            clauses.append(clause)
    return clauses, mapped_vars


FP_WEIGHT_TABLE = {
    "FPSort(5, 11)": (10, 14),
    "FPSort(8, 24)": (23, 30),
    "FPSort(11, 53)": (52, 62),
}


def compute_weight(sort, bit_index):
    pass


hit = 0
miss = 0


def bexpr_visitor(e, table, cache):
    global hit, miss
    if e in cache:
        hit += 1
        #        print("hit: {}".format(hit))
        #        print(str(e) + "\n" + str(cache[e]) + "\n======")
        yield cache[e]
        return
    else:
        miss += 1
        #        print("miss: {}".format(miss))
        if is_literal(e):
            name = e.decl().name().replace("!", "X")
            if name in table:
                bvar = table[name]
            else:
                bvar = bexpr.exprvar(name)
                table[name] = bvar
            cache[e] = bvar
            yield bvar
            return
        elif is_not(e):
            assert len(e.children()) == 1
            ch = e.children()[0]
            for var in bexpr_visitor(ch, table, cache):
                term = bexpr.Not(var, simplify=False)
                cache[e] = term
                yield term
            return
        elif is_or(e):
            or_clauses = []
            for ch in e.children():
                # assert is_not(ch) or is_literal(ch)
                for var in bexpr_visitor(ch, table, cache):
                    or_clauses.append(var)
            term = bexpr.Or(*or_clauses, simplify=False)
            cache[e] = term
            yield term
            return
        elif is_eq(e) or is_iff(e):
            eq_clauses = []
            for ch in e.children():
                for var in bexpr_visitor(ch, table, cache):
                    eq_clauses.append(var)
            term = bexpr.Equal(*eq_clauses, simplify=False)
            cache[e] = term
            yield term
            return
        elif is_ite(e):
            children = e.children()
            assert len(children) == 3
            ite_clauses = []
            for ch in children:
                for var in bexpr_visitor(ch, table, cache):
                    ite_clauses.append(var)
            assert len(ite_clauses) == 3
            # in pyEDA: ITE(expr,if_false,if_true)
            term = bexpr.ITE(ite_clauses[0], ite_clauses[2], ite_clauses[1])
            cache[e] = term
            yield term
            return
        else:
            raise Exception("Unhandled type: ", e)


def dimacs_visitor(e, table):
    if is_literal(e):
        name = e.decl().name()
        if name in table:
            id_var = table[name].id
        else:
            id_var = len(table) + 1
            table[name] = VarData(id_var, e)
        yield str(id_var)
        return
    elif is_not(e):
        assert len(e.children()) == 1
        ch = e.children()[0]
        for var in dimacs_visitor(ch, table):
            yield "-" + var
        return
    elif is_or(e):
        for ch in e.children():
            for var in dimacs_visitor(ch, table):
                yield var
        return
    else:
        raise Exception("Unhandled type: ", e)


def collect_vars(e, seen=None):
    if seen is None:
        seen = {}
    if e in seen:
        return
    seen[e] = True
    # check if 'e' is a bitvector, int, or bool input variable
    if is_literal(e) and (is_bv(e) or is_bool(e) or is_int(e)):
        yield e
    elif is_app(e):
        for ch in e.children():
            for e in collect_vars(ch, seen):
                yield e
    elif is_quantifier(e):
        for e in collect_vars(e.body(), seen):
            yield e
    elif type(e) == AstVector:
        for f in e:
            for e in collect_vars(f, seen):
                yield e
    else:
        print(f"failed {type(e)} {e}")
        yield None


def rebuild_model(line, id_to_var):
    model = {}
    for tok in line.strip().split(" ")[:-1]:  # remove last 0
        if tok.startswith("-"):
            val = False
            id = int(tok[1:])
        else:
            val = True
            id = int(tok)
        lit = id_to_var[id].lit
        name = lit.decl().name()

        if "!" in name and val:  # bit from bitvector, no need to toggle 0 bits
            var_name, bit_pos = name.split("!")
            current = model.get(var_name, 0)
            current = current | (1 << int(bit_pos))
            model[var_name] = current
        elif "!" not in name:  # boolean
            model[name] = val

    return model


def run_unigen(dimacs, var_to_id, formula, options):
    id_to_var = {v.id: v for k, v in var_to_id.items()}
    with tempfile.NamedTemporaryFile(
        prefix="unigen", delete=False, mode="w+t"
    ) as input_file:
        input_file.write(dimacs)
        input_file.flush()
        unigen = subprocess.Popen(
            [
                "unigen",
                f"--samples={options.samples}",
                f"--seed={options.seed}",
                f"--epsilon={options.epsilon}",
                f"--delta={options.delta}",
                input_file.name,
            ],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
        )

        while not unigen.poll():
            line = unigen.stdout.readline()
            if not line.strip():
                continue

            print(line, file=sys.stderr, end="")
            if line.startswith("c [unig] Samples generated"):
                break
            if line.startswith("c"):
                continue

            print(f"sample: {line.strip()}", file=sys.stderr)
            sample = rebuild_model(line, id_to_var)
            print(f">> {sample}")
            if options.validate_samples:
                solver = Solver()
                solver.add(formula)
                for k, v in sample.items():
                    lit = Bool(k) if type(v) is bool else Int(k)
                    solver.add(lit == v)

                assert (
                    solver.check() == sat
                ), f"previous sample failed to satisfy input formula: \n {solver}"


def main():
    parser = argparse.ArgumentParser(description="sample bitblasted smt input formula")
    parser.add_argument(
        "input_file",
        help="formula in smt2 format to be counted. BVs/Bools only for now.",
    )
    parser.add_argument(
        "--seed", type=int, default=12345678, help="seed to be passed to unigen"
    )
    parser.add_argument(
        "--samples", type=int, default=1000, help="number of samples to be taken"
    )
    parser.add_argument(
        "--epsilon",
        type=float,
        default=0.8,
        help="unigen 'ε' parameter -> 1/(1+ε)*#sol ≤ Pr[y is output] ≤ (1+ε)/#sol",
    )
    parser.add_argument(
        "--delta",
        type=float,
        default=0.2,
        help="unigen/approxmc 'δ' parameter -> Pr[#sol/(1+ε) ≤ c ≤ (1+ε)*#sol] ≥ 1−δ",
    )
    parser.add_argument(
        "--bitblast-only",
        action="store_true",
        help="print bitblasted formula in DIMACS format and stop",
    )
    parser.add_argument(
        "--validate-samples",
        action="store_true",
        help="check with z3 if samples satisfy the original formula",
    )

    args = parser.parse_args()

    set_param("rewriter.hi_fp_unspecified", "false")

    print("Reading formula...", file=sys.stderr)
    formula = parse_smt2_file(args.input_file)
    print("Generating DIMACS with projection...", file=sys.stderr)
    bitblasted, id_table = bitblast(formula)
    header, clauses = to_dimacs(bitblasted, id_table)
    dimacs = "\n".join(itertools.chain(header, clauses, ["\n"]))

    if args.bitblast_only:
        print(dimacs)
        return

    print("Running UNIGEN", file=sys.stderr)
    run_unigen(dimacs, id_table, formula, args)


if __name__ == "__main__":
    main()
