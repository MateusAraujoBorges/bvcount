package sidechannel;

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
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;

import org.apache.commons.io.FileUtils;

import sidechannel.util.ModelCounter;
import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;

/**
 * Listener for quantify side-channel leaks
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public abstract class SideChannelQuantifier extends PropertyListenerAdapter {

	public boolean DEBUG = true;

	protected Config conf;
	protected long current;
	Stack<Long> steps;
	HashMap<Long, HashSet<String>> obsrv;
	SymbolicVariableCollector collector;
	int numberOfPCs;

	public SideChannelQuantifier(Config config, JPF jpf) {
		conf = config;
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}
		
		current = 0;
		steps = new Stack<Long>();
		obsrv = new HashMap<Long, HashSet<String>>();

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

						String currentPC = null;
						// get current PC
						ChoiceGenerator<?> cg = vm
								.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
						if (cg != null) {
							pc = ((PCChoiceGenerator) cg).getCurrentPC();
							if (pc != null) {
								numberOfPCs++;
								pc.solve();
								currentPC = PathConditionUtils
										.cleanExpr(pc.header.toString());
								collector.collectVariables(pc);
							}
						}

						// add PC to the list
						if (currentPC != null) {
							HashSet<String> data = obsrv.get(current);
							if (data == null) {
								data = new HashSet<String>();
								
								if(DEBUG){
									// System.out.println(currentPC);
									System.out.println("Path length is " + current);
								}			
									
								data.add(currentPC);
								obsrv.put(current, data);
							}
							data.add(currentPC);
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

	protected double computeEntropyOfObservables() {
		System.out.println("===========computeEntropyOfObservables");
		double leakage = 0;

		int MIN = Integer.parseInt(conf.getProperty("symbolic.min_int", String.valueOf(Integer.MIN_VALUE)));
		int MAX = Integer.parseInt(conf.getProperty("symbolic.max_int", String.valueOf(Integer.MAX_VALUE)));
		
		// if each variable has domain D, then n variables has domain D^n
		double domain = Math.pow(MAX - MIN + 1, collector.getListOfVariables().size()); // domain of the input

		Iterator<Map.Entry<Long, HashSet<String>>> it = obsrv.entrySet()
				.iterator();
		ModelCounter counter = new ModelCounter(conf);
		
		int count = 0;
		
		while (it.hasNext()) {
			Map.Entry<Long, HashSet<String>> pair = (Map.Entry<Long, HashSet<String>>) it
					.next();
			long cost = pair.getKey();
			HashSet<String> paths = pair.getValue();
			
			long block = counter.count(paths);
			 leakage += block * (Math.log(domain) - Math.log(block));
			 
			if(DEBUG){
				System.out.println("\n=====");
				for (String s : paths) {
				    System.out.println("PC is: " + s);
				}
				System.out.println("The cost of block " + count +" is " 
						+ cost);				
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
