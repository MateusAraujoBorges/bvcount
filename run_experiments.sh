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
	/usr/bin/time timeout -k 10s 1h sharpSAT/Release/sharpSAT $INPUT_FILE
}

#TODO need to check if cryptominisat5 is backwards compatible with 4 for this counter
function call_approxmc_py {
	INPUT_FILE=$(readlink -f $1)
	cd approxmc-py
	/usr/bin/time timeout -k 10s 1h ./approxmc-p.py -vvvv -t 0.10 -c 0.95  --sat-command 'adapters/cryptominisat4.sh {maxcount} {file}' $INPUT_FILE
}

function call_z3bc {
	export PYTHONUNBUFFERED=1
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time timeout -k 10s 1h ./blockCounter.py $INPUT_FILE
}

function call_allsat {
	INPUT_FILE=$(readlink -f $1)
	PROJECTION_SCOPE=$(head "$INPUT_FILE" | grep "^cr " | awk -F\  '{print NF-1}')
	/usr/bin/time timeout -k 10s 1h allsat/batch_all_sat $INPUT_FILE $PROJECTION_SCOPE 16 | grep -v "^[01]\+$"
}

function call_sharpcdcl {
	INPUT_FILE=$(readlink -f $1)
	#write projection variables to file
	head "$INPUT_FILE" | grep "^cr " | fmt -1 | tail -n +2 > scope
	/usr/bin/time timeout -k 10s 1h sharpCDCL -countMode=2 -projection=scope $INPUT_FILE
}
	
function call_smtapproxmc {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time timeout -k 10s 1h ./smtapproxmc/scripts/approxMC.py $INPUT_FILE smtapproxmc/scripts/primes.txt 633 smtlog smtout
}

function call_mathsat {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time timeout -k 10s 1h mathsat $INPUT_FILE
}

function call_dsharp {
	INPUT_FILE=$(readlink -f $1)
	/usr/bin/time timeout -k 10s 1h ./dsharp --noIBCP $INPUT_FILE
}

mkdir -p results
shopt -s globstar
shopt -s nullglob

SCRIPT_DIR=$(pwd)
#for file in $BENCHMARK_FOLDER/**/*.smt ; do
while read -r file
do
	echo "========== $file ==========="
	
	NO_SLASHES=$(echo "$file" | sed 's#/#_#g')
	RESULT_FILE="$RESULTS_FOLDER/${NO_SLASHES}"
	BITBLASTED=current.cnf
	
	 /usr/bin/time -o "${RESULT_FILE}.bitblast" ./mappedBitblaster.py "$file" true > $BITBLASTED

	# echo "  ===> approxmc_py"
	# date
	# call_approxmc_py $BITBLASTED 2>&1 | tee "${RESULT_FILE}.apcpy"
	# cd $SCRIPT_DIR
	
	#echo "  ===> sharpsat"
	#date
	#call_sharpsat $BITBLASTED 2>&1 | tee "${RESULT_FILE}.sharpsat"
	#cd $SCRIPT_DIR

	# echo "  ===> z3 - tail: ${RESULT_FILE}.z3"
	# date
	# call_z3bc $file &>  "${RESULT_FILE}.z3"
	# tail ${RESULT_FILE}.z3
	# cd $SCRIPT_DIR

	#echo "  ===> allsat"
	#date
	#call_allsat $BITBLASTED 2>&1 | tee "${RESULT_FILE}.allsat"
	#cd $SCRIPT_DIR

	# echo "  ===> sharpcdcl: tail ${RESULT_FILE}.sharpcdcl"
	# date
	# call_sharpcdcl $BITBLASTED &> "${RESULT_FILE}.sharpcdcl"
	# tail "${RESULT_FILE}.sharpcdcl"
	# cd $SCRIPT_DIR

	# echo "  ===> smt-approx: tail smtout"
	# date
	# call_smtapproxmc $file  
	# cat smtlog smtout  > "${RESULT_FILE}.smtap"
	# cd $SCRIPT_DIR

	# echo "  ===> mathsat"
	# date
	# rm mathsat_tmp
	# ./prepareForMathSAT.py $file > mathsat_input
	# call_mathsat mathsat_input &> mathsat_tmp
	# grep ") )" mathsat_tmp -c > "${RESULT_FILE}.mathsat"
	# grep "elapsed" mathsat_tmp >> "${RESULT_FILE}.mathsat"
	# cd $SCRIPT_DIR

	echo "  ===> dsharp: tail ${RESULT_FILE}.dsharp"
	date
	call_dsharp $BITBLASTED &> "${RESULT_FILE}.dsharp"
	cd $SCRIPT_DIR

#done
done < $1
