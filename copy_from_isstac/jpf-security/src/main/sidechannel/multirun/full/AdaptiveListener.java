package sidechannel.multirun.full;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.PropertyListenerAdapter;
import gov.nasa.jpf.jvm.bytecode.JVMReturnInstruction;
import gov.nasa.jpf.search.Search;
import gov.nasa.jpf.symbc.numeric.PCChoiceGenerator;
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.vm.ChoiceGenerator;
import gov.nasa.jpf.vm.ClassInfo;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.MethodInfo;
import gov.nasa.jpf.vm.SystemState;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.TimeUnit;

import sidechannel.choice.CostChoiceGenerator;
import sidechannel.util.SymbolicVariableCollector;
import sidechannel.util.smt.BitVectorUtils;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class AdaptiveListener extends PropertyListenerAdapter {
	Config conf;

	String secureMethod;
	
	int numOfPCs = 0;
	
	int inputSize;

	HashMap<String,Vector<Long>> map; // map PC to cost
	
	public boolean DEBUG = true;

	// the observable in multiple-run, which is a tuple of costs
	public HashMap<Vector<Long>, HashSet<String>> obsrv = new HashMap<Vector<Long>, HashSet<String>>();

	SymbolicVariableCollector collector;
	
	int run = 0; // 0 is an invalid run id
	String tmpDir = null;
	
	long t;

	public AdaptiveListener(Config config, JPF jpf) {
		conf = config;
		
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}
		
		secureMethod = conf.getProperty("mutirun.secure_method");
		assert (secureMethod != null);

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
		
		String target_args = conf.getProperty("target.args");
		// the first argument should be the run
		int pos = target_args.indexOf(',');
		run = Integer.parseInt(pos == -1 ? target_args : target_args.substring(0,pos));
		// run = 1;
		tmpDir = conf.getProperty("greedy.tmpDir");
		
		//
		String str = conf.getProperty("sidechannel.input_size","1");
		int d = 1;
		try{
			d = Integer.parseInt(str);
		}
		catch(NumberFormatException e){
			System.out.println(">>>>> Configuration error: input size is incorrect");
			e.printStackTrace();
			return;
		}
		inputSize = d;
		
		System.out.println("\n>>>>> Input size is " + d);
		
		t = System.nanoTime();
	}

	public void searchFinished(Search search) {

		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables \n");

		// generate SMTLIB2
		String bit_length = conf.getProperty("bit_length");
		if(bit_length != null){
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		map = BitVectorUtils.generateSMTLIB2AddingPCs(conf, obsrv, collector);
		if (DEBUG) {
			printCosts();	
		}

		// write the time
		long tmp = System.nanoTime();
		long t1 = tmp - t;
		// System.out.println("Time SPF is " + TimeUnit.NANOSECONDS.toMillis(t1) + " miliseconds");
		t = tmp;
		solveMaxSMT();
		long t2 = System.nanoTime() - t;
		writeTime(TimeUnit.NANOSECONDS.toMillis(t1) + "#" + TimeUnit.NANOSECONDS.toMillis(t2) + "\n");
		// writeTime(TimeUnit.NANOSECONDS.toSeconds(t1) + "#" + TimeUnit.NANOSECONDS.toSeconds(t2) + "\n");
	}
	
	private void writeTime(String str) {
		try {
			String inputFileName = tmpDir + "/time.txt";
			File file = new File(inputFileName);
			if (!file.exists()) {
				file.createNewFile();
			}
			Files.write(Paths.get(inputFileName), str.getBytes(), StandardOpenOption.APPEND);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void solveMaxSMT(){
		// call z3
		try {
			String line;
			String z3 = conf.getProperty("z3");
			String maxSMTfileName = conf.getProperty("greedy.output","build/tmp/outputZ3bitvec.smt2");
			Process p = Runtime.getRuntime().exec(
					z3 + " " + maxSMTfileName);
			
			BufferedReader input = new BufferedReader(
					new InputStreamReader(p.getInputStream()));
			// output z3 result
			// System.out.println("\n>>> Begin Z3 output\n");

			int[] lowInput = new int[inputSize];

			// OpenOption[] options = {StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING};
			HashSet<Vector<Long>> allTheCosts = new HashSet<Vector<Long>>();
			while ((line = input.readLine()) != null) {
				// System.out.println(line);
				// String symbol = " |-> "; // this is output in old version of z3
				String symbol = "(objectives";
				if(line.indexOf(symbol) != -1){
					line = input.readLine();
					int count = Integer.parseInt(line.substring(3,line.length()-1));
					System.out.println(">>>>> Minimum number of unsat clauses: " + count);
					continue;
				}
				int tmp = line.indexOf("((");
				if (tmp != -1) {
					line = line.substring(2, line.length() - 2);
					String token[] = line.split("\\s");
					if(line.charAt(0) == 'l'){
						int pos = token[0].indexOf("_");
						int index = Integer.parseInt(token[0]
								.substring(pos + 1));
						// convert hexadecimal number begin with #x
						lowInput[index] = Integer.parseInt(
								token[1].substring(3), 16);
						System.out.println(">>>>> Low input returned by z3: " + line);
					} else if (line.contains("PC") && token[1].equals("true")){
						// the PC is true, so get its corresponding cost
						Vector<Long> costs = map.get(token[0]);
						allTheCosts.add(costs);						
						System.out.print(">>>>> Cost returned by z3 is <");
						int i;
						for (i = 0; i < costs.size() - 1; i++) {
							Long cost = costs.get(i);
							System.out.print(cost + ",");
						}
						System.out.println(costs.get(i) + ">");
					}
				}
			}

			// output z3 result
			// System.out.println("\n>>> End Z3 output\n");
			
			String result = createInputLine(lowInput,allTheCosts);		
			// System.out.println(">>>>> There are " + allTheCosts.size() + " observables in " + run + "th run");
			String inputFileName = tmpDir + "/run" + run + ".txt" ;
			File file = new File(inputFileName);
			if (!file.exists()) {
				file.createNewFile();
			}
			Files.write(Paths.get(inputFileName), result.getBytes(),
					StandardOpenOption.APPEND);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private String createInputLine(int[] lowInput, HashSet<Vector<Long>> allTheCosts ){
		String prevInput = null;
		if(run > 1){
			prevInput = conf.getProperty("target.args");
			String token[] = prevInput.split("@");
			prevInput = token[1] + "#";
		}
		
		StringBuilder sb = new StringBuilder();
		for (Vector<Long> costs : allTheCosts) {
			int i;
			for (i = 0; i < costs.size() - 1; i++){
				sb.append(costs.elementAt(i)+ ":");
			}
			sb.append(costs.elementAt(i)+ "@");
			
			if(prevInput != null){
				sb.append(prevInput);
			}
			for (i = 0; i < lowInput.length - 1; i++){
				sb.append(lowInput[i] + ":");
			}
			sb.append(lowInput[i] + "\n");
		}

		return sb.toString();
	}
	
	private void printCosts(){
		Iterator<Map.Entry<Vector<Long>, HashSet<String>>> it = obsrv
				.entrySet().iterator();

		while (it.hasNext()) {
			Map.Entry<Vector<Long>, HashSet<String>> pair = (Map.Entry<Vector<Long>, HashSet<String>>) it
					.next();
			Vector<Long> costs = pair.getKey();
			// HashSet<String> paths = pair.getValue();

			System.out.print("Cost ");
			for (Long cost : costs) {
				System.out.print(cost + " ");
			}
			System.out.println();

			/*
			for (String pc : paths) {
				System.out.println(pc);
			}
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			//*/
		}
		System.out.println("");
	}

	@Override
	public void instructionExecuted(VM vm, ThreadInfo currentThread,
			Instruction nextInstruction, Instruction executedInstruction) {

		PathCondition pc;

		SystemState ss = vm.getSystemState();
		if (!ss.isIgnored()) {
			
			// TODO: add temporary costs, or final cost if run = num_run
			if (executedInstruction instanceof JVMReturnInstruction) {
								
				MethodInfo mi = executedInstruction.getMethodInfo();
				ClassInfo ci = mi.getClassInfo();
				if (null != ci) {
					
					// String className = ci.getName();
					String methodName = mi.getName();
					// if (className.equals(conf.getProperty("target")) &&
					// methodName.equals("main")) {
					if (methodName.equals("main")) {

						// get current PC
						String currentPC = null;
						ChoiceGenerator<?> cg = vm
								.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
						if (cg != null) {
							pc = ((PCChoiceGenerator) cg).getCurrentPC();
							if (pc != null) {
								pc.solve();

								collector.collectVariables(pc);
								currentPC = pc.prefix_notation();
							}
						}

						// add PC to the list
						if (currentPC != null) {
							
							numOfPCs++;
							ChoiceGenerator<?>[] cgs = ss.getChoiceGenerators();
							Vector<Long> currentCost = getCurrentCost(cgs);
							HashSet<String> data = obsrv.get(currentCost);
							if (data == null) {
								data = new HashSet<String>();
								data.add(currentPC);
								obsrv.put(currentCost, data);
								// reset current cost
							}else{
								data.add(currentPC);
							}
						}
					}
				}
			}
		}
	}

	private Vector<Long> getCurrentCost(ChoiceGenerator<?>[] cgs) {
		// A method sequence is a vector of strings
		Vector<Long> costs = new Vector<Long>();
		ChoiceGenerator<?> cg = null;
		// explore the choice generator chain - unique for a given path.
		for (int i = 0; i < cgs.length; i++) {
			cg = cgs[i];
			if ((cg instanceof CostChoiceGenerator)) {
				costs.add(((CostChoiceGenerator) cg).getCost());
			}
		}
		return costs;
	}

}
