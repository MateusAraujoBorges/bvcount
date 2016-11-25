#!/usr/bin/env python3

from z3 import *
import sys

def main():
    formula = parse_smt2_file(sys.argv[1])
    s = Solver()
    total_solutions = 0

    s.add(formula)

    while s.check() == sat:
        m = s.model()
        #print(m)
        total_solutions += 1
        block = []
        for d in m:
            block.append(m[d] != d())
        s.add(Or(block))

    print("total: " + str(total_solutions))

main()
