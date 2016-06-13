# remember to install z3 (or put the 'build' dir in the PYTHONPATH
# var)

from z3 import *
from tqdm import tqdm
import sys


# p cnf nvar nclauses
# cr projected_var_ids
def process(formula):
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
    t = Then(Tactic('simplify'),Tactic('bit-blast'), Tactic('tseitin-cnf'))
    bitblasted = t(g)[0]

    cnf_clauses = to_dimacs(bitblasted,id_table)
    cnf_header = [
        "p cnf {} {}".format(len(id_table),len(cnf_clauses)),
        "cr {}".format(" ".join([str(x) for x in range(1,projection_scope + 1)]))
        ]
    return cnf_header,cnf_clauses

def is_literal(e):
    return is_const(e) and e.decl().kind() == Z3_OP_UNINTERPRETED

def to_dimacs(cnf,table):
    output = []
    for clause in tqdm(cnf):
        assert is_or(clause) or is_not(clause) or is_literal(clause)
        dimacs_clause = list(dimacs_visitor(clause,table))
        dimacs_clause.append('0')
        output.append(" ".join(dimacs_clause))
    return output

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
    header, clauses  = process(formula)
    print('\n'.join(header))
    print('\n'.join(clauses))

main()
