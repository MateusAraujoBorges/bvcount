#!/usr/bin/env python3

# remember to install z3 (or put the 'build' dir in the PYTHONPATH
# var)

from z3 import *
from tqdm import tqdm
import sys
import argparse


INPUT_FORMAT = "unigen"  # unigen, sharpsat

# the "0" at the end of the header is required
# -------------------------
# c ind projected_var_ids 0
# p cnf nvar nclauses
def bitblast(formula):
    input_vars = [x for x in collect_vars(formula)]
    # map bits in the bv input vars
    print(f"input vars: {input_vars}",file=sys.stderr)

    map_clauses, map_vars = map_bitvector(input_vars)
    assert map_clauses # should not be empty
    id_table = {}  # {varname: id}

    curr_id = 1

    for var,weight in map_vars:
        name = var.decl().name()
        id_table[name] = curr_id
        curr_id = curr_id + 1
        print(f"{name} -> ${id_table[name]}",file=sys.stderr)
    projection_scope = curr_id - 1

    # bitblast
    g = Goal()
    g.add(map_clauses)
    g.add(formula)
    t = Then(
        Tactic("simplify"),
        Tactic("fpa2bv"),
        Tactic("simplify"),
        Tactic("propagate-values"),
        Tactic("ctx-solver-simplify"),
        Tactic("bit-blast"),
        Tactic("tseitin-cnf"),
    )
    # t = Then(Tactic('simplify'),Tactic('bit-blast'))
    bitblasted = t(g)[0]

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
            id_var = table[name]
        else:
            id_var = len(table) + 1
            table[name] = id_var
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
    # check if 'e' is a bitvector input variable or boolean
    if is_literal(e) and (is_bv(e) or is_bool(e)):
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



def main():
    parser = argparse.ArgumentParser(description="sample bitblasted smt input formula")
    parser.add_argument("input_file")
    parser.add_argument(
        "--seed", type=int, default=1000, help="seed to be passed to unigen"
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

    args = parser.parse_args()

    set_param("rewriter.hi_fp_unspecified", "false")

    print("Reading formula...", file=sys.stderr)
    formula = parse_smt2_file(args.input_file)
    print("Generating DIMACS with projection...", file=sys.stderr)
    bitblasted, id_table = bitblast(formula)
    header, clauses = to_dimacs(bitblasted, id_table)
    print("\n".join(header))
    print("\n".join(clauses))


if __name__ == "__main__":
    main()
