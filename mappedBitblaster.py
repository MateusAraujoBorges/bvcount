# remember to install z3 (or put the 'build' dir in the PYTHONPATH
# var)

from z3 import *
from tqdm import tqdm
import pyeda.boolalg.bdd as bdd
import pyeda.boolalg.expr as bexpr
import sys


# p cnf nvar nclauses
# cr projected_var_ids
def bitblast(formula):
    input_vars = [x for x in collect_vars(formula)]
    # map bits in the bv input vars
    map_clauses, map_vars = map_bitvector(input_vars)
    id_table = {} # {varname: id}

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
    #t = Then(Tactic('simplify'),Tactic('bit-blast'), Tactic('tseitin-cnf'))
    t = Then(Tactic('simplify'),Tactic('bit-blast'))
    bitblasted = t(g)[0]

    return bitblasted, id_table

def is_literal(e):
    return is_const(e) and e.decl().kind() == Z3_OP_UNINTERPRETED

def is_ite(e):
    return e.decl().kind() == Z3_OP_ITE

def is_iff(e):
    return e.decl().kind() == Z3_OP_IFF

def to_bdd(cnf,id_table):
    table = {}
    for key, val in id_table.items():
        name = key.replace('!',"X")
        table[name] = bexpr.exprvar(name)
    projected_vars = set(table.values())
    cnf_clauses = []
    cache = {}
    for clause in tqdm(cnf,desc="Converting Z3 expr to PyEDA format..."):
#        print(cache)
        bdd_clause = list(bexpr_visitor(clause,table,cache))
#        print(bdd_clause)
        assert len(bdd_clause) == 1
        cnf_clauses.append(bdd_clause[0])
    print("Generating BDD...", file=sys.stderr)
    conjunction = bexpr.And(*cnf_clauses,simplify=False)
    out_bdd = bdd.expr2bdd(conjunction)
    return out_bdd

def to_dimacs(cnf,table):
    cnf_clauses = []
    projection_scope = len(table)

    for clause in tqdm(cnf):
        assert is_or(clause) or is_not(clause) or is_literal(clause)
        dimacs_clause = list(dimacs_visitor(clause,table))
        dimacs_clause.append('0')
        cnf_clauses.append(" ".join(dimacs_clause))

    cnf_header = [
        "p cnf {} {}".format(len(table),len(cnf_clauses)),
        "cr {}".format(" ".join([str(x) for x in range(1,projection_scope + 1)]))
    ]
    return cnf_header,cnf_clauses

def map_bitvector(input_vars):
    clauses = []
    mapped_vars = []
    for var in input_vars:
        name = var.decl().name()
        size = var.size()
        for x in range(size):
            extracted_bool = Bool(name + "!" + str(x))
            clause = extracted_bool == (Extract(x,x,var) == BitVecVal(1,1))
            mapped_vars.append(extracted_bool)
            clauses.append(clause) 
    return clauses, mapped_vars

hit = 0
miss = 0


def bexpr_visitor(e,table,cache):
    global hit,miss
    if e in cache:
        hit += 1
        print("hit: {}".format(hit))
#        print(str(e) + "\n" + str(cache[e]) + "\n======")
        yield cache[e]
        return
    else:
        miss += 1
        print("miss: {}".format(miss))
        if is_literal(e):
            name = e.decl().name().replace('!',"X")
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
                term = bexpr.Not(var,simplify=False)
                cache[e] = term
                yield term
            return
        elif is_or(e):
            or_clauses = []
            for ch in e.children():
                #assert is_not(ch) or is_literal(ch)
                for var in bexpr_visitor(ch, table, cache):
                    or_clauses.append(var)
            term = bexpr.Or(*or_clauses,simplify=False)
            cache[e] = term
            yield term
            return
        elif is_eq(e) or is_iff(e):
            eq_clauses = []
            for ch in e.children():
                for var in bexpr_visitor(ch, table, cache):
                    eq_clauses.append(var)
            term = bexpr.Equal(*eq_clauses,simplify=False)
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
            term = bexpr.ITE(ite_clauses[0],ite_clauses[2],ite_clauses[1])
            cache[e] = term
            yield term
            return
        else:
            raise Exception("Unhandled type: ", e)


def dimacs_visitor(e,table):
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
    
            
def collect_vars(e,seen=None):
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

def main():
    inputfile = sys.argv[1]
    print("Reading formula...", file=sys.stderr)
    formula = parse_smt2_file(inputfile)
    print("Generating DIMACS with projection...", file=sys.stderr)  
    bitblasted, id_table = bitblast(formula)
    header, clauses  = to_dimacs(bitblasted, id_table)
    print('\n'.join(header))
    print('\n'.join(clauses))

if __name__ == '__main__':
    main()
