#!/usr/bin/env python3

import sys

def extract(constraint):
    toks = constraint.split(" ")
    return set([tok for tok in toks if tok.startswith("h") or tok.startswith("l0")])

def write_smt_file(header,body,i):
    with open("{}.smt".format(i),"w") as outfile:
#        print("========= {} ==========".format(i))
        print(header,file=outfile)
        print(body,file=outfile)
        if "l0_0" in header:
            print("(assert (PC{} l0_0)) \n(check-sat)".format(i),file=outfile)
        else:
            print("(assert PC{}) \n(check-sat)".format(i),file=outfile)
    
def main():
    varDecls = {}
    i = 1
    with open(sys.argv[1]) as infile:
        for line in infile:
            if "declare-fun" in line:
                var = line.split(" ")[1]
                lo = infile.readline()
                hi = infile.readline()
                varDecls[var] = "".join([line,lo,hi])
            elif "define-fun" in line:
                l1 = line
                l2 = infile.readline()
                l3 = infile.readline()
                constraintVars = extract(l2)
                body = "".join([l1,l2,l3])
                header = "\n".join([varDecls[x] for x in constraintVars])
                
                write_smt_file(header, body, i)
                i = i + 1
            else:
                pass
                
main()
