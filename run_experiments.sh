#!/bin/bash

#paths are hardcoded; do not run the script outside of the 'tools' dir
#this script will:

# for each .smt file under $1:
#   run the blocking counter
#   bitblast to a .cnf file (and measure the time)
#   run SAT modelcounters for the .cnf
#
# output from the counters is sent to the results folder 

BENCHMARK_FOLDER=$1
RESULTS_FOLDER=$PWD/results


function call_sharpsat {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time sharpSAT/Release/sharpSAT $INPUT_FILE
}

#TODO need to check if cryptominisat5 is backwards compatible with 4 for this counter
function call_approxmc_py {
	INPUT_FILE=$(readlink -f $1)
	cd approxmc-py
	/usr/bin/time ./approxmc-p.py -vvvv --sat-command 'adapters/cryptominisat4.sh {maxcount} {file}' $INPUT_FILE
}

function call_z3bc {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time ./blockCounter.py $INPUT_FILE
}

function call_allsat {
	INPUT_FILE=$(readlink -f $1)
	PROJECTION_SCOPE=$(head "$INPUT_FILE" | grep "^cr " | awk -F\  '{print NF-1}')
	/usr/bin/time allsat/batch_all_sat $INPUT_FILE $PROJECTION_SCOPE 256 | grep -v "^[01]\+$"
}

function call_sharpcdcl {
	INPUT_FILE=$(readlink -f $1)
	#write projection variables to file
	head "$INPUT_FILE" | grep "^cr " | fmt -1 | tail -n +2 > scope
	/usr/bin/time sharpCDCL -countMode=2 -projection=scope $INPUT_FILE
}


mkdir -p results
shopt -s globstar
shopt -s nullglob

SCRIPT_DIR=$(pwd)
for file in $BENCHMARK_FOLDER/**/*.smt ; do
	echo "========== $file ==========="
	
	NO_SLASHES=$(echo "$file" | sed 's#/#_#g')
	RESULT_FILE="$RESULTS_FOLDER/${NO_SLASHES}"
	BITBLASTED=current.cnf
	
	/usr/bin/time -o "${RESULT_FILE}.bitblast" ./mappedBitblaster.py "$file" true > $BITBLASTED

	echo "  ===> approxmc_py"
	call_approxmc_py $BITBLASTED 2>&1 | tee "${RESULT_FILE}.apcpy"
	cd $SCRIPT_DIR
	
	echo "  ===> sharpsat"
	call_sharpsat $BITBLASTED 2>&1 | tee "${RESULT_FILE}.sharpsat"
	cd $SCRIPT_DIR

	echo "  ===> z3 "
	call_z3bc $file 2>&1 | tee "${RESULT_FILE}.z3"
	cd $SCRIPT_DIR

	echo "  ===> allsat"
	call_allsat $BITBLASTED 2>&1 | tee "${RESULT_FILE}.allsat"
	cd $SCRIPT_DIR

	echo "  ===> sharpcdcl"
	call_sharpcdcl $BITBLASTED 2>&1 | tee "${RESULT_FILE}.sharpcdcl"
	cd $SCRIPT_DIR

done

