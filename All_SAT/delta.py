#!/usr/bin/env python3

import sys,subprocess,shutil
from subprocess import CalledProcessError,TimeoutExpired

TMP_FILENAME="tmp-script-out"

def run(header,clauses,include):
    with open(TMP_FILENAME,'w') as outfile:
        content = [x[1] for x in list(zip(include,clauses)) if x[0]]
        print("".join(header),file=outfile)
        print("".join(content),file=outfile)
        
    try:
        result = subprocess.check_output(["./batch_all_sat",TMP_FILENAME],timeout=2)
        return "Assertion" in result
    except CalledProcessError as e:
        print(e)
        return True
    except TimeoutExpired as e:
        print(e)
        return False



def main():
    header_start = int(sys.argv[2])

    lines = []
    with open(sys.argv[1]) as infile:
        lines = infile.readlines()


    header = lines[0:header_start]
    clauses = lines[header_start:]
    include = [True] * len(clauses)

    for i in range(len(clauses)):
        include[i] = False
        if not run(header,clauses,include):
            include[i] = True
        else:
            print("skip line {}".format(i+header_start))

    print("".join(header))
    print("".join([x[1] for x in zip(include,clauses) if x[0]]))

main()    


