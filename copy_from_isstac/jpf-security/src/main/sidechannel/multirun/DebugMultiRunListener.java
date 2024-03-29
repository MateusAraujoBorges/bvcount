package sidechannel.multirun;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;

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
import sidechannel.util.SymbolicVariableCollector;
import sidechannel.util.smt.BitVectorUtils;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class DebugMultiRunListener extends PropertyListenerAdapter {

	Config conf;

	String secureMethod;
	
	int numOfPCs = 0;

	public boolean DEBUG = true;

	// the observable in multiple-run, which is a tuple of costs
	public HashMap<Vector<Long>, HashSet<String>> obsrv = new HashMap<Vector<Long>, HashSet<String>>();

	SymbolicVariableCollector collector;

	public DebugMultiRunListener(Config config, JPF jpf) {
		conf = config;
		
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
	}

	public void searchFinished(Search search) {

		// generate SMTLIB2
		String bit_length = conf.getProperty("bit_length");
		if(bit_length != null){
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		BitVectorUtils.generateSMTLIB2(conf, obsrv, collector);
		// BitVectorUtils.generateSMTLIB2AddingPCs(conf, obsrv, collector);
		// IntegerUtils.generateSMTLIB2(conf, obsrv, collector);

		if (DEBUG) {
			Iterator<Map.Entry<Vector<Long>, HashSet<String>>> it = obsrv
					.entrySet().iterator();

			while (it.hasNext()) {
				Map.Entry<Vector<Long>, HashSet<String>> pair = (Map.Entry<Vector<Long>, HashSet<String>>) it
						.next();
				Vector<Long> costs = pair.getKey();
				// HashSet<String> paths = pair.getValue();

				System.out.print("Sequence of cost is: ");
				for (Long cost : costs) {
					System.out.print(cost + " ");
				}
				System.out.println("");

				/*
				for (String pc : paths) {
					System.out.println(pc);
				}
				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
				//*/
			}
			System.out.println("");
		}
		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables");
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
