# remember to install z3 (or put the 'build' dir in the PYTHONPATH
# var)
from __future__ import print_function

# install pyglet with apt-get
# install pyprocessing with pip


from z3 import *
from tqdm import tqdm
import sys
from polybori.interred import interred
from polybori import *
from polybori.parallel import groebner_basis_first_finished
from polybori.gbcore import * #variety_size_from_gb
from time import time


# p cnf nvar nclauses
# cr projected_var_ids
def bitblast(formula):
    input_vars = [x for x in collect_vars(formula)]
    # map bits in the bv input vars
    map_clauses, map_vars = map_bitvector(input_vars)
    id_table = {}  # {varname: id}

    curr_id = 1
    for var in map_vars:
        name = var.decl().name()
        id_table[name] = curr_id
        curr_id = curr_id + 1
    projection_scope = curr_id - 1

    # bitblast
    g = Goal()
    g.add(map_clauses)
    g.add(formula)
    t = Then(Tactic('simplify'), Tactic('bit-blast'), Tactic('tseitin-cnf'), Tactic('simplify'))
    # t = Then(Tactic('simplify'),Tactic('bit-blast'))
    # t = Tactic('tseitin-cnf')
    bitblasted = t(g)[0]

    return bitblasted, id_table


def is_literal(e):
    return is_const(e) and e.decl().kind() == Z3_OP_UNINTERPRETED


def is_ite(e):
    return e.decl().kind() == Z3_OP_ITE


def is_iff(e):
    return e.decl().kind() == Z3_OP_IFF


def map_bitvector(input_vars):
    clauses = []
    mapped_vars = []
    for var in input_vars:
        name = var.decl().name()
        size = var.size()
        for x in range(size):
            extracted_bool = Bool(name + "!" + str(x))
            clause = extracted_bool == (Extract(x, x, var) == BitVecVal(1, 1))
            mapped_vars.append(extracted_bool)
            clauses.append(clause)
    return clauses, mapped_vars


hit = 0
miss = 0


def collect_vars(e, seen=None):
    if seen is None:
        seen = {}
    if e in seen:
        return
    seen[e] = True

    # check if 'e' is a bitvector input variable
    if is_literal(e) and is_bv(e):
        yield e
    elif is_app(e):
        for ch in e.children():
            for e in collect_vars(ch, seen):
                yield e
        return
    elif is_quantifier(e):
        for e in collect_vars(e.body(), seen):
            yield e
        return


def or_gb(t1, t2):
    return t1 * t2


def not_gb(t1):
    # TODO: doublecheck correcteness
    return 1 + t1


def and_gb(t1, t2):
    return t1 + t2 - t1 * t2


def iff_gb(t1, t2):
    raise NotImplementedError('IFF not implemented yet')
    # return simplify_gb((1+t1*t2)*(t1+t2+t1*t2))


def ite_gb(f, g, h):
    raise NotImplementedError('ITE not implemented yet')
    # return simplify_gb(f + f*f + g + f*f*g + f*f*h + f*g*h + f*f*g*h)


def count_groebner(cnf, id_table, ringVariableNames):
    ringVariables = []
    positions = {}
    position = 0
    for variableName in ringVariableNames:
        ringVariables.append(Block(variableName, 1))  # right now, every variable is a bit. We shall move to bitvectors
        positions[variableName] = position
        position += 1

    #declare_ring(ringVariables)
    r = declare_ring(ringVariables)
    r = r.clone(ordering=dlex)
    
    table = {}
    for variable in positions:
        table[variable] = r.variable(positions[variable])

    projected_vars = set(table.values())
    cnf_clauses = []
    cache = {}
    for clause in tqdm(cnf, desc="Converting Z3 expr to GB format..."):
        gb_clause = list(gb_visitor(clause, table, cache))
        assert len(gb_clause) == 1
        cnf_clauses.append(gb_clause[0])

    print(str(time()) + ": polynomials built from CNF", file=sys.stderr)

    print(cnf_clauses)


    gb = groebner_basis_first_finished(cnf_clauses,
                                       #{'heuristic': False, 'faugere': True, 'linear_algebra_in_last_block': True},
                                       #{'heuristic': True, 'faugere': True, 'linear_algebra_in_last_block': True},
                                       {'heuristic': True},
                                       {'heuristic': False})
    print(str(time()) + ": Groebner basis computed", file=sys.stderr)
    v = variety_size_from_gb(gb)

    return v


def gb_visitor(e, table, cache):
    global hit, miss
    if e in cache:
        hit += 1
        # print("hit: {}".format(hit))
        #        print(str(e) + "\n" + str(cache[e]) + "\n======")
        yield cache[e]
        return
    else:
        miss += 1
        # print("miss: {}".format(miss))
        if is_literal(e):
            name = e.decl().name().replace('!', "X")
            # vars.add(name)
            if name in table:
                bvar = table[name]
            else:
                raise ValueError('Variable ' + str(name) + ' is undefined')
                bvar = str(name)
                table[name] = bvar
            cache[e] = bvar
            yield bvar
            return
        elif is_not(e):
            assert len(e.children()) == 1
            ch = e.children()[0]
            for var in gb_visitor(ch, table, cache):
                term = not_gb(var)
                cache[e] = term
                yield term
            return
        elif is_or(e):
            or_clauses = []
            for ch in e.children():
                # assert is_not(ch) or is_literal(ch)
                for var in gb_visitor(ch, table, cache):
                    or_clauses.append(var)
            term = or_clauses[0]
            for clause in or_clauses[1:]:
                term = or_gb(term, clause)
            cache[e] = term
            yield term
            return
        elif is_eq(e) or is_iff(e):
            eq_clauses = []
            for ch in e.children():
                for var in gb_visitor(ch, table, cache):
                    eq_clauses.append(var)
            term = eq_clauses[0]
            for clause in eq_clauses[1:]:
                term = iff_gb(term, clause)
            cache[e] = term
            yield term
            return
        elif is_ite(e):
            children = e.children()
            assert len(children) == 3
            ite_clauses = []
            for ch in children:
                for var in gb_visitor(ch, table, cache):
                    ite_clauses.append(var)
            assert len(ite_clauses) == 3
            # in pyEDA: ITE(expr,if_false,if_true)
            term = ite_gb(ite_clauses[0], ite_clauses[2], ite_clauses[1])
            cache[e] = term
            yield term
            return
        else:
            raise Exception("Unhandled type: ", e)


def to_variables(cnf, collector):
    for clause in tqdm(cnf, desc="Extracting variables from Z3 model..."):
        gb_clause = list(variables_visitor(clause, collector))
        assert len(gb_clause) == 1


def variables_visitor(e, collector):
    if is_literal(e):
        name = e.decl().name().replace('!', "X")
        collector.add(name)
        yield None
        return
    elif is_not(e) or is_or(e) or is_eq(e) or is_iff(e) or is_ite(e):
        for ch in e.children():
            for var in variables_visitor(ch, collector):
                None
        yield None
        return
    else:
        raise Exception("Unhandled type: ", e)


def count_formula(formula):
    bitblasted, id_table = bitblast(formula)
    print(str(time()) + ": bitblasting complete", file=sys.stderr)

    ringVariableNames = set()
    to_variables(bitblasted, ringVariableNames)
    print(str(time()) + ": " + str(len(ringVariableNames)) + " variables collected (including slack ones)",
          file=sys.stderr)

    print(ringVariableNames)

    count = count_groebner(bitblasted, id_table, ringVariableNames)
    print(str(time()) + ": counting complete", file=sys.stderr)

    return count


def regression():
    p0 = Bool('p0')
    q0 = Bool('q0')
    r0 = Bool('r0')
    s0 = Bool('s0')
    formula = Not(Implies(And(Or(p0,q0),r0), Not(s0)))
    assert int(count_formula(formula)) == 3

    i = BitVec('i', 32)
    j = BitVec('j', 32)
    formula = And(And(i>=0, i<=j), j<10)
    assert int(count_formula(formula))==55



def main():

    #regression()

    print(str(time()) + ": start", file=sys.stderr)
    inputfile = './inputs/s-rsa-13.smt2'  # sys.argv[1]

    formula = parse_smt2_file(inputfile)
    print(str(time()) + ": formula parsed", file=sys.stderr)


    result = int(count_formula(formula))
    print('Number of solutions: '+str(result))


    # header, clauses  = to_dimacs(bitblasted, id_table)
    # print('\n'.join(header))
    # print('\n'.join(clauses))


if __name__ == '__main__':
    try:
        main()
    except (KeyboardInterrupt, SystemExit):
        print(str(time()) + ": execution interrupted", file=sys.stderr)
