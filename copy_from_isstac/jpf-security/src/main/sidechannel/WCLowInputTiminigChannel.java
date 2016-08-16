/**
* @author corina pasareanu corina.pasareanu@sv.cmu.edu
*
*/

package sidechannel;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.PropertyListenerAdapter;
import gov.nasa.jpf.jvm.bytecode.JVMReturnInstruction;
import gov.nasa.jpf.search.Search;
import gov.nasa.jpf.symbc.numeric.Expression;
import gov.nasa.jpf.symbc.numeric.PCChoiceGenerator;
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.symbc.numeric.SymbolicInteger;
import gov.nasa.jpf.symbc.numeric.visitors.CollectVariableVisitor;
import gov.nasa.jpf.util.LogManager;
import gov.nasa.jpf.vm.ChoiceGenerator;
import gov.nasa.jpf.vm.ClassInfo;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.MethodInfo;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.TreeMap;
import java.util.Vector;
import java.util.logging.Logger;
/**
 * Listener for computing worst case time and time channel capacity
 * computes worst case low input that results in maximal channel leakage
 * reduces the problem to weighted MaxSMT solving and solves with Yices
 *
 */
public class WCLowInputTiminigChannel extends PropertyListenerAdapter {

  public static class Results implements Serializable {

    private static final long serialVersionUID = -7093197676114560878L;
    public long worstCaseExecutionTime; // VM instructions
    public long bestCaseExecutionTime; // VM instructions
    public String worstCasePathCondition; // the condition which results in the worst case path
    public Set<Long> obsrv; // set of observables, i.e. all different exec times observed
    public Map<Long, String> PCs; // maps each observable to the set of path conditions that lead to same observable

    public Map<String, String> constraintValues; // Values for constraint (for longest path)
    public long pathLength;

    Results() {
      bestCaseExecutionTime = Long.MAX_VALUE;
      PCs = new HashMap<>();
    }

    @Override
    public String toString() {
      StringBuilder b = new StringBuilder();
      b.append("Worst case execution time :").append(worstCaseExecutionTime).append(System.lineSeparator());
      b.append("Worst case Path Condition : ").append(worstCasePathCondition).append(System.lineSeparator());
      if (constraintValues!=null && constraintValues.size() > 0) {
        b.append("Constraint values:").append(System.lineSeparator());
        for (Map.Entry<String, String> e : constraintValues.entrySet()) {
          b.append(e.getKey()).append(":").append(e.getValue()).append(System.lineSeparator());
        }
        b.append(System.lineSeparator());
      }
      b.append("Best case execution time : ").append(bestCaseExecutionTime).append(System.lineSeparator());
      b.append("Normalized worst case execution time : ").append(worstCaseExecutionTime - bestCaseExecutionTime).append(System.lineSeparator());
      b.append("Timing channel capacity is ").append(Math.log(obsrv.size()) / Math.log(2)).append(" bits.").append(System.lineSeparator());
      
      for (Map.Entry<Long, String> e : PCs.entrySet()) {
          b.append(e.getKey()).append(":").append(e.getValue()).append(System.lineSeparator());
      }
      b.append(System.lineSeparator());
        
      return b.toString();
    }
  }

  protected Config conf;
  protected long time;
  protected Stack<Long> steps;
  protected Set<Long> obsrv;
  private static Logger logger = LogManager.getLogger("TimingChannelListener");
    
  private final Results results = new Results();

  public WCLowInputTiminigChannel(Config config, JPF jpf) {
    jpf.getReporter().getPublishers().clear();
    conf = config;
    time = 0;
    steps = new Stack<>();
    obsrv = new HashSet<>();
    
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
            obsrv.add(time);
            String PClist = results.PCs.get(time);
            if(PClist==null) PClist="";
            
            // get current PC
            String PCString="";
            pc=null;
            ChoiceGenerator<?> cg = vm.getLastChoiceGeneratorOfType(PCChoiceGenerator.class);
            if (cg != null) {
              pc = ((PCChoiceGenerator) cg).getCurrentPC();
              if (pc != null) {
                pc.solve();
                PCString = pc.toString();
              }
            }
            PClist = PClist + PCString +"\n";
            results.PCs.put(time,PClist);
                
            if (time > results.worstCaseExecutionTime) {
              results.worstCaseExecutionTime = time;
              results.pathLength = steps.size();
              
              results.worstCasePathCondition = PCString;
              if(pc!=null)
            	  results.constraintValues = getConstraintValues(pc);
            }
            if (time < results.bestCaseExecutionTime) {
              results.bestCaseExecutionTime = time;
            }
          }

        }
      }
    }
  }

  private static Map<String, String> getConstraintValues(PathCondition pc) {
    StringBuilder b = new StringBuilder();
    Map<String, String> result = new TreeMap<String, String>();
    CollectVariableVisitor vars = new CollectVariableVisitor();
    pc.header.accept(vars);
    for (Expression e : vars.getVariables()) {
      if (e instanceof SymbolicInteger) {
        result.put(((SymbolicInteger) e).getName(), String.valueOf(((SymbolicInteger) e).solution()));
      }
    }
    return result;
  }

  @Override
  public void searchFinished(Search search) {
    results.obsrv = obsrv; // do we need a deep copy?

    /*      for (Long i : obsrv) {
     logger.info(String.valueOf(i - results.bestCaseExecutionTime));
     }
     logger.info("Cardinality of the set : " + obsrv.size());*/
    if (results!=null)
      logger.info(results.toString());

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
