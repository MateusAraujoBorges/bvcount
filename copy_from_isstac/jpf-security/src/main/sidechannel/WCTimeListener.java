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

import java.io.Serializable;
import java.util.Stack;

/**
 * Listener for computing worst case time only
 *
 * @author Corina Pasareanu corina.pasareanu@sv.cmu.edu
 *
 */

public class WCTimeListener extends PropertyListenerAdapter {
	public static class Results implements Serializable {

		private static final long serialVersionUID = -1727493836539012389L;
		public long worstCaseExecutionTime; // VM instructions
        public String worstCasePathCondition; // the condition which results in the worst case path
        public long pathLength;//should be enough

        

        @Override
        public String toString() {
            StringBuilder b = new StringBuilder();
            b.append("Worst case execution time :").append(worstCaseExecutionTime).append(System.lineSeparator());
            b.append("Worst case execution time Path Condition : ").append(worstCasePathCondition).append(System.lineSeparator());
            return b.toString();
        }
    }

    protected Config conf;
    protected long time;
    protected Stack<Long> steps;
    
    public boolean DEBUG=false;

    private final Results results = new Results();

    public WCTimeListener(Config config, JPF jpf) {
        jpf.getReporter().getPublishers().clear();
        conf = config;
        time = 0;
        steps = new Stack<>();
        
    }

    @Override
    public void instructionExecuted(VM vm, ThreadInfo currentThread,
            Instruction nextInstruction, Instruction executedInstruction) {
        PathCondition pc;

        if (!vm.getSystemState().isIgnored()) {

            Instruction insn = executedInstruction;
            time++;

            if (insn instanceof JVMReturnInstruction) {
                // if (insn instanceof ReturnInstruction) {
                MethodInfo mi = executedInstruction.getMethodInfo();
                ClassInfo ci = mi.getClassInfo();
                if (null != ci) {
                    // String className = ci.getName();
                    String methodName = mi.getName();
					// if (className.equals(conf.getProperty("target")) &&
                    // methodName.equals("main")) {
                    if (methodName.equals("main")) {
                      
                        if (time > results.worstCaseExecutionTime) {
                            results.worstCaseExecutionTime = time;
                            results.pathLength = steps.size();
                            // get current PC
                            ChoiceGenerator<?> cg = vm.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
                            if (cg != null) {
                                pc = ((PCChoiceGenerator) cg).getCurrentPC();
                                if (pc != null) {
                                    pc.solve();
                                    results.worstCasePathCondition = pc.toString();
                                }
                            }
                        }
                       
                    }

                }
            }
        }
    }

    @Override
    public void searchFinished(Search search) {
        
            System.out.println(results.toString());
        

    }

    @Override
    public void choiceGeneratorAdvanced(VM vm, ChoiceGenerator<?> currentCG) {
        steps.push(time);
    }

    @Override
    public void stateBacktracked(Search search) {
        time = steps.pop();
    }

    public Results getResults() {
        return results;
    }

	    
	}


