package sidechannel.multirun.adaptive.backup;

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
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.ArrayList;

import modelcounting.domain.Constraint;
import modelcounting.domain.Problem;

import org.apache.commons.io.FileUtils;

import sidechannel.choice.CostChoiceGenerator;
import sidechannel.util.CNF2DNFconverter;
import sidechannel.util.ModelCounter;
import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;
import sidechannel.util.smt.BitVectorUtils;
import sidechannel.util.smt.SMTLIB2Utils;

import com.google.common.cache.LoadingCache;

public class OptimizedAdaptiveAttackListener extends PropertyListenerAdapter {
	
	private Config conf;
	
	private int numOfPCs = 0;
	
	private int inputSize;

	private HashMap<String,Long> map; // map PC to cost
	
	private HashMap<Long, HashSet<String>> obsrv = new HashMap<Long, HashSet<String>>();
	// TODO: this is inefficient since Max-SMT uses prefix format, 
	// and Antonio uses oringinal PC format for Latte
	// This should be merge into one set of PCs in the future.
	private HashMap<Long, HashSet<String>> latteMap = new HashMap<Long, HashSet<String>>();
	
	private String lowInputs = null;
	
	private SymbolicVariableCollector collector;
	
	private int numOfRuns = 0;
	
	private LoadingCache<Problem, Set<Problem>> omegaCache = null;
	
	private HashSet<Long> allTheCosts =  null;
		
	public OptimizedAdaptiveAttackListener(Config config, JPF jpf) {
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
	
	public void searchFinished(Search search) {

		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables \n");

		// generate SMTLIB2
		String bit_length = conf.getProperty("bit_length");
		if(bit_length != null){
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		
		adaptiveAttack();
		
	}
	
	private void adaptiveAttack(){
		numOfRuns = Integer.parseInt(conf.getProperty("multirun.num_run"));
		for(int i = 1; i <= numOfRuns; i++){
			// set up parameters
			conf.setProperty("greedy.output","build/tmp/maxSMT.run" + i + ".smt2");
			createUserProfile();
			
			// attack and defense
			System.out.println("\n============================= BEGIN RUN "+ i + " =============================");
			adverserySelectsLowInput();
			defenderSelectsOutput();
			System.out.println("\n============================= END OF RUN "+ i + " ============================");			
			cleanDirectory();
		}
	}
	
	/*
	 * The adversary selects a low input using Max-SMT
	 * and returns a set of outputs wrt this low input
	 */
	private void adverserySelectsLowInput(){
		SMTLIB2Utils utils = new BitVectorUtils(conf);
		// SMTLIB2Utils utils = new LinearIntegerUtils(conf);
		map = utils.generateMaxSmtForAdaptiveAttackWithDomain(obsrv, collector, omegaCache);
		StringBuilder sbLowInputs = new StringBuilder();
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
			
			int currentMax = 0;
			
			// OpenOption[] options = {StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING};
			allTheCosts = new HashSet<Long>();
			while ((line = input.readLine()) != null) {
				if(line.contains("error")){
					// there is some error in the generated Max-SMT
					assert false;
				}
				// System.out.println(line);
				// String symbol = " |-> "; // this is output in old version of z3
				String symbol = "(objectives";
				if(line.indexOf(symbol) != -1){
					line = input.readLine();
					int count = Integer.parseInt(line.substring(3,line.length()-1));
					System.out.println(">>>>> Minimum number of unsat clauses: " + count);
					
					int current = obsrv.size() - count;
					// only write to the best partition
					if(current <= currentMax){
						return;
					}
					// update max value
					currentMax = current;
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
						lowInput[index] = Integer.parseInt(token[1].substring(3), 16);
						
						// lowInput[index] = Integer.parseInt(token[1]);
						sbLowInputs.append(" &&\n" + token[0] + " = " + lowInput[index]);
						System.out.println(">>>>> Low input returned by z3: " + line);
					} else if (line.contains("PC") && token[1].equals("true")){
						// the PC is true, so get its corresponding cost
						Long cost = map.get(token[0]);
						allTheCosts.add(cost);						
						System.out.println(">>>>> Cost returned by z3 is " + cost);
					}
				}
			}
			lowInputs = sbLowInputs.toString();
			// output z3 result
			// System.out.println("\n>>> End Z3 output\n");
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void defenderSelectsOutput() {
		// select only the output with largest partition
		long maxPartition = 0;
		LoadingCache<Problem, Set<Problem>> maxOmegaCache = null;
		CNF2DNFconverter converter = null;
		if(omegaCache != null){
			HashMap<String, HashSet<String>> domains = generateDomainConstraints();
			HashSet<String> tmp[] = (HashSet<String>[]) new HashSet[1];
			converter = new CNF2DNFconverter( domains
				.values().toArray(tmp));
			// converter.dumpContent();
		}
		int count = 0;
		for (Long cost : allTheCosts) {
			System.out.println("\n>>>>> Cost is " + cost);
			HashSet<String> setOfPC = latteMap.get(cost);
			HashSet<String> clone = new HashSet<String>();
			for(String pc : setOfPC){
				pc = pc + lowInputs;
				// System.out.println("\nUpdated PC is " + pc);
				if(omegaCache != null){
					converter.reset();
					while(converter.hasNext()){
						String[] conjunctions = converter.next();
						StringBuilder sb = new StringBuilder();
						for(String constraint : conjunctions){
							sb.append(constraint + " &&\n");
						}
						sb.delete(sb.length() - 3, sb.length());
						String pc1 = pc + " &&\n" + sb.toString();
						clone.add(pc1);
						System.out.println(">>>>> pc"+ ++count + " is: \n" + pc1);
					}
				} else{
					clone.add(pc);
				}
			}
			ModelCounter counter = new ModelCounter(conf);
			long partition = counter.count(clone);
			System.out.println(">>>>> The number of model is: "
					+ partition);
			if(partition <= maxPartition){
				// TODO: should we ignore if 
				// the new partition is just equal to max?
				continue;
			}
			maxPartition = partition;

			maxOmegaCache = counter.getOmegaCache();
		}
		omegaCache = maxOmegaCache;
		printOmegaCache();
	}
	
	private HashMap<String,HashSet<String>> generateDomainConstraints(){
		HashMap<String,HashSet<String>> domains = new HashMap<String,HashSet<String>>();
		for (Set<Problem> problems : omegaCache.asMap().values()) {
			for (Problem p : problems) {
				if (!p.isFalse()) {
					List<String> vars =  p.getVarList().asList();
					for(String v : vars){
						// symbolic variable for secret starts with "h"
						if(v.charAt(0) == 'h'){
							Set<Constraint> set = p.getConstraintsRelatedTo(v);
							StringBuilder sb = new StringBuilder();
							for (Constraint constraint : set) {
								sb.append(constraint.toString() + " &&\n");
							}
							sb.delete(sb.length() - 3, sb.length());
							
							HashSet<String> disjunct = domains.get(v);
							if (disjunct == null) {
								disjunct = new HashSet<String>();
								disjunct.add(sb.toString());
								domains.put(v, disjunct);
							}else{
								disjunct.add(sb.toString());
							}
						}
					}
				}
			}
		}
		return domains;
	}
	
	private void printOmegaCache() {
		if (omegaCache == null) {
			return;
		}
		System.out.println("\n-------- Constraints to be added in the next run --------");
		HashMap<String, HashSet<String>> domains = new HashMap<String, HashSet<String>>();
		for (Set<Problem> problems : omegaCache.asMap().values()) {
			for (Problem problem : problems) {
				if (!problem.isFalse()) {
					List<String> vars = problem.getVarList().asList();
					for (String v : vars) {
						// symbolic variable for secret starts with "h"
						if (v.charAt(0) == 'h') {
							// System.out
							// 		.println("\n------------------- Constraint ------------------");
							Set<modelcounting.domain.Constraint> set = problem
									.getConstraintsRelatedTo(v);
							HashSet<String> domain = domains.get(v);
							boolean first = false;
							if (domain == null) {
								domain = new HashSet<String>();
								first = domain.add(set.toString());
								domains.put(v, domain);
							} else {
								first = domain.add(set.toString());
							}
							if(first)
								System.out.println(set);
							// System.out.println(problem);
							// System.out.println("-------------------------------------------------");
						}
					}
				}
			}
		}
		System.out.println("---------------------------------------------------------");
	}
	
	private void cleanDirectory(){
		// clean up the directory
		String tmpDir = conf.getProperty("symbolic.reliability.tmpDir");
		try {
			FileUtils.cleanDirectory(new File(tmpDir));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private void createUserProfile() {
		StringBuilder sb = new StringBuilder();
		sb.append("domain{\n");

		int MIN = Integer.parseInt(conf.getProperty("symbolic.min_int", String.valueOf(Integer.MIN_VALUE)));
		int MAX = Integer.parseInt(conf.getProperty("symbolic.max_int", String.valueOf(Integer.MAX_VALUE)));

		Iterator<String> iter = collector.getListOfVariables().iterator();
		while (iter.hasNext()) {
			String var = iter.next();
			sb.append("\t" + var + " : " + MIN + "," + MAX + ";\n");
		}

		sb.append("};\n\n");
		sb.append("usageProfile{\n\t");

		iter = collector.getListOfVariables().iterator();
		int count = 0;
		int size = collector.size();
		while (iter.hasNext()){
			String var = iter.next();
			sb.append(var + "==" + var);
			count++;
			if (count < size)
				sb.append(" && ");
			
		}
		sb.append(" : 100/100;\n};");
		
		String tmpDir = conf.getProperty("greedy.tmpDir");
		String target = conf.getProperty("target");
		String upFile = tmpDir + "/" + target + ".up";
		Writer writer = null;

		try {
			writer = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(upFile), "utf-8"));
			writer.write(sb.toString());
			conf.setProperty("symbolic.reliability.problemSettings", upFile);
		} catch (IOException ex) {
			// report
		} finally {
			try {
				writer.close();
			} catch (Exception ex) {
			}
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
						String lattePC = null;
						ChoiceGenerator<?> cg = vm
								.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
						if (cg != null) {
							pc = ((PCChoiceGenerator) cg).getCurrentPC();
							if (pc != null) {
								
								pc.solve();

								collector.collectVariables(pc);
								currentPC = pc.prefix_notation();
								lattePC = PathConditionUtils.cleanExpr(pc.header.toString());
								// System.out.println("currentPC is " +  currentPC);
								System.out.println("lattePC is "+ lattePC);
							}
						}

						// add PC to the list
						if (currentPC != null) {	
							numOfPCs++;
							ChoiceGenerator<?>[] cgs = ss.getChoiceGenerators();
							long currentCost = getCurrentCost(cgs);
							HashSet<String> data = obsrv.get(currentCost);
							HashSet<String> dataLatte = latteMap.get(currentCost);
							if (data == null) {
								data = new HashSet<String>();
								dataLatte = new HashSet<String>();
								data.add(currentPC);
								dataLatte.add(lattePC);
								obsrv.put(currentCost, data);
								latteMap.put(currentCost, dataLatte);
								// reset current cost
							}else{
								data.add(currentPC);
								dataLatte.add(lattePC);
							}
						}
					}
				}
			}
		}
	}

	private long getCurrentCost(ChoiceGenerator<?>[] cgs) {
		// A method sequence is a ArrayList of strings
		ArrayList<Long> costs = new ArrayList<Long>();
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
