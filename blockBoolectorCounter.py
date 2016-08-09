#!/usr/bin/env python3

# boolector API doesn't provide logical boolean functions,
# so we need to use the standard interface

import sys,pexpect

BOOLECTOR="/home/mateus/workspace/boolector/boolector/boolector -m --smt2 -i -x"

def main():
    lines = None
    with open(sys.argv[1]) as infile:
        lines = infile.readlines()

    formula = "".join(lines)
    if "check-sat" in formula:
        print("Error: input file should not contain any calls to check-sat!")
        sys.exit(1)

    solver = pexpect.spawn(BOOLECTOR,timeout=None,echo=False)
    solver.sendline(formula)
    #solver.logfile = sys.stdout
    solver.sendline("(check-sat)")
    isSat = solver.expect(["unsat","sat"]) == 1

    totalSolutions = 0
    while isSat:
        totalSolutions += 1
        model = {}
        solver.sendline("(get-model)")
        solver.expect("\(model.+\n\)") #last line is a single ')'
        #print("<<< " + solver.after)
        for line in solver.after.split("\n")[1:-1]:
            toks = line.strip()[1:-1].split(' ')
            var = toks[1]
            val = toks[6]
            model[var] = val

        print(model)

        assertCmd = "(assert (or {}))"
        assertCmd1 = "(assert {})"
        neqCmd = "(not (= {} {}))"
        neqs = [neqCmd.format(var,val) for var,val in model.items()]

        if len(model) == 1:
            finalCmd = assertCmd1.format(" ".join(neqs))
        else:
            finalCmd = assertCmd.format(" ".join(neqs))
        #print(">>> " + finalCmd)
        solver.sendline(finalCmd)
        solver.sendline("(check-sat)")
        isSat = solver.expect(["unsat","sat"]) == 1
        #print("----------------")
        #print(solver.before)
        #print(solver.after)

    print(totalSolutions)
    
main()
