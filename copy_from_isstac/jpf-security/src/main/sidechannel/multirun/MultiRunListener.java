package sidechannel.multirun;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.Vector;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.PropertyListenerAdapter;
import gov.nasa.jpf.jvm.bytecode.JVMInvokeInstruction;
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
public class MultiRunListener extends PropertyListenerAdapter {

	Config conf;

	protected long current = 0;
	Stack<Long> steps = new Stack<Long>();

	String secureMethod;
	
	int numOfPCs = 0;

	public boolean DEBUG = true;

	// the observable in multiple-run, which is a tuple of costs
	public HashMap<Vector<Long>, HashSet<String>> obsrv = new HashMap<Vector<Long>, HashSet<String>>();

	SymbolicVariableCollector collector;

	public MultiRunListener(Config config, JPF jpf) {
		conf = config;
		
		boolean verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		if(!verbose){
			jpf.getReporter().getPublishers().clear();
		}

		secureMethod = conf.getProperty("mutirun.secure_method");
		assert (secureMethod != null);

		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
	}

	public void searchFinished(Search search) {

		System.out.println("\n>>>>> There are " + numOfPCs 
				+ " path conditions and " + obsrv.size() + " observables");

		// generate SMTLIB2
		String bit_length = conf.getProperty("bit_length");
		if(bit_length != null){
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		BitVectorUtils.generateSMTLIB2(conf, obsrv, collector);

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

	}

	void checkInstruction(ThreadInfo currentThread,
			Instruction executedInstruction) {
		// TODO: generalize with the cost model etc
		current++;
	}

	@Override
	public void instructionExecuted(VM vm, ThreadInfo currentThread,
			Instruction nextInstruction, Instruction executedInstruction) {

		PathCondition pc;

		SystemState ss = vm.getSystemState();
		if (!ss.isIgnored()) {

			checkInstruction(currentThread, executedInstruction);

			// executedInstruction is either INVOKESTATIC or INVOKEVIRTUAL
			if (executedInstruction instanceof JVMInvokeInstruction) {
				/*
				 * this is a naive computation of the cost in multiple-run
				 * analysis we assume that there is only one "secure" method to
				 * be analyzed, defined in "mutirun.secure_method", there is no
				 * other method interfering from when it is invoked until it
				 * returns. Therefore, we can restart the step, and when it
				 * returns, the cost is saved in the step.
				 */
				JVMInvokeInstruction ins = (JVMInvokeInstruction) executedInstruction;
				MethodInfo mi = ins.getInvokedMethod();
				ClassInfo ci = mi.getClassInfo();
				if (null != ci) {
					if (mi.getBaseName().equals(secureMethod)) {
						// reset the current step
						current = 0;
						return;
					}
				}
			}
			
			// TODO: add temporary costs, or final cost if run = num_run
			if (executedInstruction instanceof JVMReturnInstruction) {
								
				MethodInfo mi = executedInstruction.getMethodInfo();
				ClassInfo ci = mi.getClassInfo();
				if (null != ci) {

					if (mi.getBaseName().equals(secureMethod)) {
						// the secure method returns, save the cost as follows:
						// create a new MultiRunChoiceGenerator.
						// this is just to store the cost
						// regarding the "secure" method.
						CostChoiceGenerator cg = new CostChoiceGenerator(
								current);
						// Does not actually make any choice
						ss.setNextChoiceGenerator(cg);
						// nothing to do as there are no choices.
						return;
					}
					
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

	@Override
	public void choiceGeneratorAdvanced(VM vm, ChoiceGenerator<?> currentCG) {
		steps.push(current);
	}

	@Override
	public void stateBacktracked(Search search) {
		current = steps.pop();
	}

}
