package sidechannel.multirun.adaptive;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;

import com.google.common.cache.LoadingCache;

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
import modelcounting.domain.Problem;
import sidechannel.choice.CostChoiceGenerator;
import sidechannel.util.ModelCounter;
import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;
import sidechannel.util.smt.BitVectorUtils;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class DefenderListener extends PropertyListenerAdapter {
	
	private Config conf;
	
	private int numOfPCs = 0;
		
	private HashMap<Long, HashSet<String>> obsrv = new HashMap<Long, HashSet<String>>();
		
	private SymbolicVariableCollector collector;
		
	// private LoadingCache<Problem, Set<Problem>> omegaCache = null;
	
	private boolean DEBUG = false;
		
	public DefenderListener(Config config, JPF jpf) {
		conf = config;
		
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);		
	}
	
	public void searchFinished(Search search) {

		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables \n");

		// generate SMTLIB2
		String bit_length = conf.getProperty("bit_length");
		if(bit_length != null){
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		
		createUserProfile();
		defenderSelectsOutput();
	}
	
	private void defenderSelectsOutput(){		
		// select only the output with largest partition
		long maxPartition = 0;
		String maxConstraint = null;
		for (Long cost : obsrv.keySet()) {
			HashSet<String> setOfPC = obsrv.get(cost);
			ModelCounter counter = new ModelCounter(conf);
			
			// TODO: count for each PC			
			// long partition = counter.count(setOfPC);
			long partition = 0;
			System.out.println("\n\n\n>>>>> The cost is " + cost);
			StringBuilder sb = new StringBuilder();
			for(String pc : setOfPC){
				long count = counter.countSinglePath(pc).longValue();
				partition += count;
				if(count > 0){
					LoadingCache<Problem, Set<Problem>> omegaCache = counter.getOmegaCache();
					sb.append(buildConstraint(omegaCache) + "\n");
					if(DEBUG){
						System.out.println("\n\n" + pc);
						printOmegaCache(omegaCache);
					}
				}
			}
						
			
			System.out.println(">>>>> The number of model is: "
					+ partition);
			if(partition <= maxPartition){
				// TODO: should we ignore if 
				// the new partition is just equal to max?
				continue;
			}
			maxPartition = partition;
			maxConstraint = sb.toString();
		}
		System.out.println("\n==== Constraints to add to the next run ====");
		System.out.println(maxConstraint);
		System.out.println("\n============================================");
		//TODO: write maxConstraint to a file
		writeConstraintsToFile(maxConstraint);
	}
	
	private void writeConstraintsToFile(String str){
		String target_args = conf.getProperty("target.args");
		int pos = target_args.indexOf(',');
		int run = Integer.parseInt(target_args.substring(0, pos));
		String fileName = "build/tmp/constraints" + run + ".txt";
		Writer writer = null;

		try {
			writer = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(fileName), "utf-8"));
			writer.write(str);
		} catch (IOException ex) {
			// report
		} finally {
			try {
				writer.close();
			} catch (Exception ex) {
			}
		}
	}
	
	private String buildConstraint(LoadingCache<Problem, Set<Problem>> omegaCache){
		assert(omegaCache != null);
		Collection<Set<Problem>> collections = omegaCache.asMap().values();
		// TODO: I think my analysis will be wrong if collections has more than 1 element
		// but I'm not sure
		// assert(collections.size() == 1);
		HashMap<List<String>,ArrayList<String>> map = new HashMap<List<String>,ArrayList<String>>();
		// Since the collection has size 1, this loop looks stupid
		for (Set<Problem> problems : collections) {
			// At this point we have a list of constraint:
			for (Problem problem : problems) {
				if (!problem.isFalse()) {
					//TODO: build constraint
					String constraint = problem.getConstraints().toString();
					List<String> key = problem.getVarList().asList();
					ArrayList<String> value = map.get(key);
					if (value == null) {
						value = new ArrayList<String>();
						value.add(constraint);
						map.put(key, value);
						// reset current cost
					}else{
						value.add(constraint);
					}
				}
			}
		}
		StringBuilder sb = new StringBuilder();
		for(ArrayList<String> disjunct : map.values()){
			for(String conjunct: disjunct){
				sb.append(conjunct + " #OR# ");
			}
			sb.delete(sb.length() - 6, sb.length());
			sb.append(" #AND# ");
		}
		sb.delete(sb.length() - 7, sb.length());
		return sb.toString();
	}
	
	
	private void printOmegaCache(LoadingCache<Problem, Set<Problem>> omegaCache) {
		if (omegaCache == null) {
			return;
		}
		System.out.println("=================== OMEGA CACHE =================");
		for (Set<Problem> problems : omegaCache.asMap().values()) {
			for (Problem problem : problems) {
				if (!problem.isFalse()) {
					System.out.println(problem);
				}
			}
		}
		System.out.println("=================================================");
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
						ChoiceGenerator<?> cg = vm
								.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
						if (cg != null) {
							pc = ((PCChoiceGenerator) cg).getCurrentPC();
							if (pc != null) {
								
								pc.solve();

								collector.collectVariables(pc);
								currentPC = PathConditionUtils.cleanExpr(pc.header.toString());
							}
						}

						// add PC to the list
						if (currentPC != null) {	
							// System.out.println("\nPC is\n" + currentPC);
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
