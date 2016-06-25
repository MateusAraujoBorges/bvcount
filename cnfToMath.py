import sys

def main():
    filename = sys.argv[1]
    projection_vars = []
    disjunctions = []

    with open(filename) as infile:
        for line in infile:
            if line.startswith('p'):
                pass
            elif line.startswith('cr'):
                toks = line.split(' ')
                projection_vars = ["v" + x for x in toks[1:]]
            elif line.startswith('c'):
                pass
            else:
                toks = line.split(' ')
                toks = toks[:-1] #remove last 0
                term = " || ".join(["v" + tok for tok in toks])
                term = term.replace("v-","!v")
                disjunctions.append(term)
        
    with open(filename + ".m",'w') as outfile:
        outfile.write("And[")
        outfile.write(",\n".join(disjunctions))
        outfile.write("]")

    if len(projection_vars) > 0:
        with open(filename + ".proj.m",'w') as outfile:
            outfile.write("{")
            outfile.write(",".join(projection_vars))
            outfile.write("}")

main()
