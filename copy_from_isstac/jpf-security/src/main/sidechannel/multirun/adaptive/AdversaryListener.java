package sidechannel.multirun.adaptive;

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
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Vector;

import sidechannel.choice.CostChoiceGenerator;
import sidechannel.common.Constant;
import sidechannel.util.SymbolicVariableCollector;
import sidechannel.util.smt.BitVectorUtils;
import sidechannel.util.smt.LinearIntegerUtils;
import sidechannel.util.smt.SMTLIB2Utils;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class AdversaryListener extends PropertyListenerAdapter  {
	
	private Config conf;
	
	private int numOfPCs = 0;
	
	private int inputSize;
	
	private HashMap<Long, HashSet<String>> obsrv = new HashMap<Long, HashSet<String>>();
		
	private SymbolicVariableCollector collector;	
	
	private final boolean LINEAR = false;
	
	private boolean fixedPoint = false;
	
	public AdversaryListener(Config config, JPF jpf) {
		conf = config;
		
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
		
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
				
	}
	
	public boolean reachedFixedPoint(){
		return fixedPoint;
	}
	
	public void searchFinished(Search search) {

		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables \n");

		// generate SMTLIB2
		String bit_length = conf.getProperty("bit_length");
		if(bit_length != null){
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		
		adverserySelectsLowInput();
	}
	
	/*
	 * The adversary selects a low input using Max-SMT
	 * and returns a set of outputs wrt this low input
	 */
	private void adverserySelectsLowInput(){
		SMTLIB2Utils utils = null;
		if(LINEAR){
			utils = new LinearIntegerUtils(conf);
		}
		else{
			utils = new BitVectorUtils(conf);
		}
		 
		utils.generateMaxSmtForAdaptiveAttack(obsrv, collector);
		StringBuilder sbLowInputs = new StringBuilder();
		try {
			String line;
			String z3 = conf.getProperty("z3");
			String maxSMTfileName = conf.getProperty("greedy.output");
			Process p = Runtime.getRuntime().exec(
					z3 + " " + maxSMTfileName);
			
			BufferedReader input = new BufferedReader(
					new InputStreamReader(p.getInputStream()));
			// output z3 result
			// System.out.println("\n>>> Begin Z3 output\n");

			int[] lowInput = new int[inputSize];
						
			// OpenOption[] options = {StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING};
			while ((line = input.readLine()) != null) {
				if(line.contains("error")){
					assert false;
				}
				// System.out.println(line);
				// String symbol = " |-> "; // this is output in old version of z3
				String symbol = "(objectives";
				if(line.indexOf(symbol) != -1){
					line = input.readLine();
					int unsat = Integer.parseInt(line.substring(3,line.length()-1));
					System.out.println(">>>>> Minimum number of unsat clauses: " + unsat);
					int count = obsrv.size() - unsat;
					if(count <= 1){
						fixedPoint = true;
					}
					continue;
				}
				int tmp = line.indexOf("((");
				if (tmp != -1) {
					line = line.substring(2, line.length() - 2);
					String token[] = line.split("\\s");
					if(line.charAt(0) == 'l'){
						int pos = token[0].indexOf(Constant.SEPARATOR);
						int index = Integer.parseInt(token[0]
								.substring(pos + 1));
						if(LINEAR){
							// convert decimal number
							lowInput[index] = Integer.parseInt(token[1]);
						}
						else{
							// convert hexadecimal number begin with #x
							lowInput[index] = Integer.parseInt(
									token[1].substring(3), 16);
						}

						sbLowInputs.append(token[0] + ":" + lowInput[index]+ "\n");
						System.out.println(">>>>> Low input returned by z3: " + line);
					} 
					/*
					else if (line.contains("PC") && token[1].equals("true")){
						// the PC is true, so get its corresponding cost
						Long cost = map.get(token[0]);
						System.out.println(">>>>> Cost returned by z3 is " + cost);
					}
					//*/
				}
			}
			sbLowInputs.delete(sbLowInputs.length() - 1, sbLowInputs.length());
			// output z3 result
			// System.out.println("\n>>> End Z3 output\n");
			String args = conf.getProperty("target.args");
			int i = Integer.parseInt(args.split(",")[0]);
			String fileName = "build/tmp/input" + i + ".txt";
			Writer writer = null;

			try {
				writer = new BufferedWriter(new OutputStreamWriter(
						new FileOutputStream(fileName), "utf-8"));
				writer.write(sbLowInputs.toString());
			} catch (IOException ex) {
				// report
			} finally {
				try {
					writer.close();
				} catch (Exception ex) {
				}
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		}
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
							long currentCost = getCurrentCost(cgs);
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

	private long getCurrentCost(ChoiceGenerator<?>[] cgs) {
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
		if (costs.size() > 1) {
			// something is wrong here,
			// because this listener is only for 1 run
			assert false;
		}
		return costs.get(0);
	}
}
