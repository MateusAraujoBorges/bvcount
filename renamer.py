#!/usr/bin/env python3

import sys

def read_cnf(infile):
    id_map = {}
    id_counter = 1
    projection = None
    clauses = []
    for line in infile:
        line = line.strip()
        if line == '':
            continue
        if line.startswith("p"):
            continue
        elif line.startswith("cr"):
            proj_vars = [int(x) for x in line.split(" ")[1:]] #skip the cr
            projection = set(proj_vars)
        elif line.startswith("c"):
            continue
        else:
            cvars = [int(x) for x in line.split(" ")[:-1]] #skip the 0
            clause = []
            for var in cvars:
                var_id = abs(var)
                to_append = None
                if var_id in id_map:
                    to_append = id_map[var_id]
                else:
                    id_map[var_id] = id_counter
                    to_append = id_counter
                    id_counter += 1
                if var < 0:
                    to_append *= -1

                clause.append(to_append)
            clauses.append(clause)

    if projection:
        tmp = []
        for i in projection:
            if i in id_map:
                tmp.append(id_map[x])
        projection = tmp
    return (id_counter - 1, clauses, projection)

def main():
    with open(sys.argv[1]) as infile:
        nvars, clauses, projection = read_cnf(infile)

        print("p cnf {} {}".format(nvars,len(clauses)))
        if projection:
            print("cr " + " ".join([str(x) for x in projection]))
        for clause in clauses:
            print(" ".join([str(x) for x in clause]) + " 0")
        

main()
