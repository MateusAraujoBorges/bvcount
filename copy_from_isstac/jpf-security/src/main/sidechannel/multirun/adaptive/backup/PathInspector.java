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

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;

import sidechannel.choice.CostChoiceGenerator;
import sidechannel.util.MathematicaUtils;
import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;
import sidechannel.util.smt.BitVectorUtils;
import sidechannel.util.smt.LinearIntegerUtils;

public class PathInspector extends PropertyListenerAdapter {
	
	private Config conf;
	
	private int numOfPCs = 0;
		
	private SymbolicVariableCollector collector;
	
	private HashMap<Long, HashSet<String>> obsrv = new HashMap<Long, HashSet<String>>();
	// TODO: this is inefficient since Max-SMT uses prefix format, 
	// and Antonio uses oringinal PC format for Latte
	// This should be merge into one set of PCs in the future.
	private HashMap<Long, HashSet<String>> latteMap = new HashMap<Long, HashSet<String>>();
	
	private boolean DEBUG = false;
							
	public PathInspector(Config config, JPF jpf) {
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
		
		System.out.println("\n>>>>> Input size is " + d);
				
	}
	
	public void searchFinished(Search search) {

		MathematicaUtils utils = new MathematicaUtils(conf);
		utils.generateMathematicaScript(latteMap);
		
		/*
		BitVectorUtils bvutils = new BitVectorUtils(conf);
		bvutils.generateAllSmtForAdaptiveAttack(obsrv, collector);
		//*/
		
		LinearIntegerUtils liutils = new LinearIntegerUtils(conf);
		liutils.generateAllSmtForAdaptiveAttack(obsrv, collector);

		Iterator<Map.Entry<Long, HashSet<String>>> it = latteMap.entrySet().iterator();

		while (it.hasNext()) {
			Map.Entry<Long, HashSet<String>> pair = (Map.Entry<Long, HashSet<String>>) it.next();
			Long cost = pair.getKey();
			HashSet<String> paths = pair.getValue();

			System.out.println("\n======================================");
			System.out.println("The cost is: " + cost);
			if (DEBUG) {
				for (String pc : paths) {
					System.out.println(pc);
					System.out.println("--------------------");
				}
			}
			System.out.println("======================================\n");
		}
		System.out.println("");
		
		System.out.println("\n>>>>> There are " + numOfPCs 
		 		+ " path conditions and " + obsrv.size() + " observables \n");	
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
								pc.solve();

								collector.collectVariables(pc);
								currentPC = pc.prefix_notation();
								// currentPC = PathConditionUtils.cleanExpr(pc.toString());
								lattePC = PathConditionUtils.cleanExpr(pc.header.toString());
								// System.out.println("currentPC is " +  currentPC);
								// System.out.println("\n==============================");
								// System.out.println("PC is "+ PathConditionUtils.cleanExpr(pc.toString()));
							}
						}

						// add PC to the list
						if (currentPC != null) {	
							numOfPCs++;
							ChoiceGenerator<?>[] cgs = ss.getChoiceGenerators();
							long currentCost = getCurrentCost(cgs);
							// System.out.println("Current cost of this PC is " + currentCost);
							// System.out.println("==============================");
							HashSet<String> data = obsrv.get(currentCost);
							HashSet<String> dataLatte = latteMap.get(currentCost);
							if (dataLatte == null) {
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
