#!/bin/bash

#paths are hardcoded; do not run the script outside of the 'tools' dir
#this script will run the counters with all .cnf files under $1

BENCHMARK_FOLDER=$1
RESULTS_FOLDER=$PWD/results


function call_sharpsat {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time sharpSAT/Release/sharpSAT $INPUT_FILE
}

function call_approxmc {
	INPUT_FILE=$(readlink -f $1)
	cd ApproxMC
	/usr/bin/time python ApproxMC.py -delta=0.14 -epsilon=0.5 $INPUT_FILE
}

#TODO need to check if cryptominisat5 is backwards compatible with 4 for this counter
function call_approxmc_py {
	INPUT_FILE=$(readlink -f $1)
	cd approxmc-py
	/usr/bin/time ./approxmc-p.py -vvvv --sat-command 'adapters/cryptominisat4.sh {maxcount} {file}' $INPUT_FILE
}

# sts = searchTreeSampler
function call_sts {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time STS/simp/STS $INPUT_FILE
}


mkdir -p results
shopt -s globstar
SCRIPT_DIR=$(pwd)
for file in $BENCHMARK_FOLDER/**/*.cnf; do
	echo "========== $file ==========="
	NO_SLASHES=$(echo "$file" | sed 's#/#_#g')
	RESULT_FILE="$RESULTS_FOLDER/${NO_SLASHES}"

	echo "  ===> sharpsat"
	call_sharpsat $file 2>&1 | tee "${RESULT_FILE}.sharpsat"
	cd $SCRIPT_DIR

	echo "  ===> approxmc"
	call_approxmc $file 2>&1 | tee "${RESULT_FILE}.apc"
	cd $SCRIPT_DIR

	echo "  ===> approxmc_py"
	call_approxmc_py $file 2>&1 | tee "${RESULT_FILE}.apcpy"
	cd $SCRIPT_DIR

	echo "  ===> sts"
	call_sts $file 2>&1 | tee "${RESULT_FILE}.sts"
	cd $SCRIPT_DIR
done
