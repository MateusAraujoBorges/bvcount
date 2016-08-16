package sidechannel;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.PropertyListenerAdapter;
import gov.nasa.jpf.jvm.bytecode.JVMReturnInstruction;
import gov.nasa.jpf.search.Search;
import gov.nasa.jpf.symbc.numeric.Constraint;
import gov.nasa.jpf.symbc.numeric.PCChoiceGenerator;
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.vm.ChoiceGenerator;
import gov.nasa.jpf.vm.ClassInfo;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.MethodInfo;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;
import modelcounting.nonlinear.ModelCounter;
import modelcounting.nonlinear.Problem;
import modelcounting.nonlinear.Problem.Var;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.Writer;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.stream.Collectors;

import org.apache.commons.io.FileUtils;

import com.google.common.collect.ImmutableSet;

import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;

/**
 * Listener for quantify side-channel leaks
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public abstract class SideChannelQuantifierNonLinear extends PropertyListenerAdapter {

	public boolean DEBUG = true;

	protected Config conf;
	protected long current;
	Stack<Long> steps;
	HashMap<Long, HashSet<PathCondition>> obsrv;
	SymbolicVariableCollector collector;
	int numberOfPCs;

	public SideChannelQuantifierNonLinear(Config config, JPF jpf) {
		conf = config;
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}
		
		current = 0;
		steps = new Stack<Long>();
		obsrv = new HashMap<Long, HashSet<PathCondition>>();

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
		numberOfPCs = 0;
	}

	abstract void checkInstruction(ThreadInfo currentThread,
			Instruction executedInstruction);

	@Override
	public void instructionExecuted(VM vm, ThreadInfo currentThread,
			Instruction nextInstruction, Instruction executedInstruction) {

		PathCondition pc;

		if (!vm.getSystemState().isIgnored()) {

			checkInstruction(currentThread, executedInstruction);

			if (executedInstruction instanceof JVMReturnInstruction) {
				MethodInfo mi = executedInstruction.getMethodInfo();
				ClassInfo ci = mi.getClassInfo();
				if (null != ci) {
					// String className = ci.getName();
					String methodName = mi.getName();
					// if (className.equals(conf.getProperty("target")) &&
					// methodName.equals("main")) {
					if (methodName.equals("main")) {
						// System.out.println(">>>>> Reach this point");

						// get current PC
						ChoiceGenerator<?> cg = vm
								.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
						if (cg != null) {
							pc = ((PCChoiceGenerator) cg).getCurrentPC();
							if (pc != null) {
								numberOfPCs++;
								pc.solve();
								collector.collectVariables(pc);
								// add PC to the list
								HashSet<PathCondition> data = obsrv.get(current);
								if (data == null) {
									data = new HashSet<PathCondition>();
									if(DEBUG){
										// System.out.println(currentPC);
										System.out.println("Path length is " + current);
									}			
									obsrv.put(current, data);
								}
								data.add(pc);
							}
						}
					}
				}
			}
		}
	}

	@Override
	public void searchFinished(Search search) {

		if(obsrv.size() == 0) {
			// there is no symbolic path, no leaks
			System.out.println("This program satisfies non-interference");
			return;
		}
		
		createUserProfile();

		double leakage = //computeEntropiesOfObservables(); 
				computeEntropyOfObservables();

		System.out.println("Cardinality of the set : " + obsrv.size());
		System.out.println("Shannon leakage is : " + leakage);
		System.out.println("Channel capacity is : " + Math.log(obsrv.size()) / Math.log(2));
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
		
		String tmpDir = conf.getProperty("symbolic.reliability.tmpDir");
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

	public static class Observable {
		public final long cost;
		public final Set<Problem> paths; 

		public Observable(long cost, Collection<PathCondition> paths) {
			this.cost = cost;
			this.paths = paths.stream()
					.map(s -> new Problem(s))
					.collect(Collectors.toSet());
		}
	}
	
	protected double computeEntropyOfObservables() {
		System.out.println("===========computeEntropyOfObservables");
		double leakage = 0;

		int MIN = Integer.parseInt(conf.getProperty("symbolic.min_int", String.valueOf(Integer.MIN_VALUE)));
		int MAX = Integer.parseInt(conf.getProperty("symbolic.max_int", String.valueOf(Integer.MAX_VALUE)));
		
		// if each variable has domain D, then n variables has domain D^n
		double domain = Math.pow(MAX - MIN + 1, collector.getListOfVariables().size()); // domain of the input

		Iterator<Map.Entry<Long, HashSet<PathCondition>>> it = obsrv.entrySet().iterator();
		ModelCounter counter = ModelCounter.getCompositionalModelCounter(conf);
		
		int count = 0;
		
		//prepare problems + collect all variables of all path conditions
		Set<Observable> observables = new HashSet<>();
		Set<Var> allVars = new HashSet<>();
		while (it.hasNext()) {
			Map.Entry<Long, HashSet<PathCondition>> pair = (Map.Entry<Long, HashSet<PathCondition>>) it.next();
			long cost = pair.getKey();
			HashSet<PathCondition> paths = pair.getValue();
			Observable observable = new Observable(cost, paths);
			observables.add(observable);
			observables.forEach(
					obs -> obs.paths.forEach(
							problem -> allVars.addAll(problem.getAllVars())));
		}
		
		for (Observable obs : observables) {
			long block = counter.count(obs.paths,allVars).longValue();
			leakage += block * (Math.log(domain) - Math.log(block));
			 
			if(DEBUG){
				System.out.println("\n=====");
				for (Problem prob : obs.paths) {
				    System.out.println("PC is: " + prob.getConstraints());
				}
				System.out.println("The cost of block " + count +" is " 
						+ obs.cost);				
				System.out.println("The size of block " + count +" is " + block);
				System.out.println("The probability of block " + count +" is " + (block / domain));
				System.out.println("=====\n");
				count++;
			}
		}
		
		if(DEBUG){
			System.out.println("The domain is " + domain);
			System.out.println("The number of PCs is " + numberOfPCs);
		}
		
		leakage = leakage / (Math.log(2) * domain);

		cleanDirectory();
		
		return leakage;
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
	
	@Override
	public void choiceGeneratorAdvanced(VM vm, ChoiceGenerator<?> currentCG) {
		steps.push(current);
	}

	@Override
	public void stateBacktracked(Search search) {
		current = steps.pop();
	}
}
