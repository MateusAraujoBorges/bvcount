package sidechannel;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;

import org.apache.commons.io.FileUtils;

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
import sidechannel.choice.CostChoiceGenerator;
import sidechannel.util.ModelCounter;
import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class DebugSideChannelQuantifier extends PropertyListenerAdapter {

	public boolean DEBUG = true;

	protected Config conf;
	// protected long current;
	HashMap<Long, HashSet<String>> obsrv;
	SymbolicVariableCollector collector;
	int numOfPCs = 0;

	public DebugSideChannelQuantifier(Config config, JPF jpf) {
		conf = config;
		
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}
		
		obsrv = new HashMap<Long, HashSet<String>>();

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
	}

	@Override
	public void instructionExecuted(VM vm, ThreadInfo currentThread,
			Instruction nextInstruction, Instruction executedInstruction) {

		PathCondition pc;

		SystemState ss = vm.getSystemState();
		if (!ss.isIgnored()) {

			if (executedInstruction instanceof JVMReturnInstruction) {
				MethodInfo mi = executedInstruction.getMethodInfo();
				ClassInfo ci = mi.getClassInfo();
				if (null != ci) {
					// String className = ci.getName();
					String methodName = mi.getName();
					// if (className.equals(conf.getProperty("target")) &&
					// methodName.equals("main")) {
					if (methodName.equals("main")) {
						String currentPC = null;
						// get current PC
						ChoiceGenerator<?> cg = vm
								.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
						if (cg != null) {
							pc = ((PCChoiceGenerator) cg).getCurrentPC();
							if (pc != null) {
								pc.solve();
								currentPC = PathConditionUtils
										.cleanExpr(pc.header.toString());
								collector.collectVariables(pc);
							}
						}

						// add PC to the list
						long current = 0;
						if (currentPC != null) {
							numOfPCs++;
							ChoiceGenerator<?>[] cgs = ss.getChoiceGenerators();
							current = getCurrentCost(cgs);
							HashSet<String> data = obsrv.get(current);
							
							if (data == null) {
								data = new HashSet<String>();		
									
								data.add(currentPC);
								obsrv.put(current, data);
							}else{
								data.add(currentPC);
							}
						}
					}
				}
			}
		}
	}

	@Override
	public void searchFinished(Search search) {

		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables \n");
		
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
			 
			// if(DEBUG){
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
			// }
		}
		
		if(DEBUG){
			System.out.println("The domain is " + domain);
		}
		
		leakage = leakage / (Math.log(2) * domain);

		cleanDirectory();
		
		return leakage;
	}
	
	// compute multiple-entropies
	protected double computeEntropiesOfObservables() {
		double leakage = 0;

		int MIN = Integer.parseInt(conf.getProperty("symbolic.min_int", String.valueOf(Integer.MIN_VALUE)));
		int MAX = Integer.parseInt(conf.getProperty("symbolic.max_int", String.valueOf(Integer.MAX_VALUE)));
		
		// if each variable has domain D, then n variables has domain D^n
		double domain = Math.pow(MAX - MIN + 1, collector.getListOfVariables().size()); // domain of the input

		Iterator<Map.Entry<Long, HashSet<String>>> it = obsrv.entrySet()
				.iterator();
		ModelCounter counter = new ModelCounter(conf);
		
		int count = 0;
		
		ArrayList<Long> lst = new ArrayList<Long>();
		
		while (it.hasNext()) {
			Map.Entry<Long, HashSet<String>> pair = (Map.Entry<Long, HashSet<String>>) it
					.next();
			HashSet<String> paths = pair.getValue();
			
			long block = counter.count(paths);
			leakage += block * (Math.log(domain) - Math.log(block));
			lst.add(block);
			if(DEBUG){
				System.out.println("\n=====");
				for (String s : paths) {
				    System.out.println("PC is: " + s);
				}
				System.out.println("the block " + count +" is " + block);
				System.out.println("the block probability " + count +" is " + (block / domain));
				System.out.println("=====\n");
				count++;
			}
		}
		
		// Collections.sort(lst);
		double N = 0;
		for (int i = 0; i < lst.size(); i++){
			long block = lst.get(i);
			N += ((block + 1) * block) / (2 * domain);
		}
		
		if(DEBUG){
			System.out.println("the domain is " + domain);
			System.out.println("the expected number of guesses is " + N);
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
		if (costs.size() > 1){
			// something is wrong here, 
			// because this listener is only for 1 run
			assert false;
		}
		return costs.get(0);
	}
}