#!/usr/bin/env python3

import sys

def main():
    with open(sys.argv[1]) as infile:
        bits = []
        no_check_sat = True
        for line in infile:
            if "declare-fun" in line:
                toks = line.strip().split(" ")
                name = toks[1]
                size = int(toks[5][:-2])

                print(line)
                for i in range(size):
                    bit_name = "{}b{}".format(name,i)
                    bits.append(bit_name)
                    print("(declare-fun {} () Bool)".format(bit_name))
                    print("(assert (= (= #b1 ((_ extract {} {}) {})) {}))".format(i,i,name,bit_name))
            elif "check-sat" in line:
                no_check_sat = False
                print("(check-allsat ( {} ))".format(" ".join(bits)))
            else:
                print(line)

        if no_check_sat:
            print("(check-allsat ( {} ))".format(" ".join(bits)))

    
main()
