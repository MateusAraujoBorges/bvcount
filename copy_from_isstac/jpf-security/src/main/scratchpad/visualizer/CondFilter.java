package scratchpad.visualizer;

import gov.nasa.jpf.jvm.bytecode.IfInstruction;
import gov.nasa.jpf.symbc.tree.Filter;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;
import gov.nasa.jpf.vm.bytecode.ReturnInstruction;

/**
 * @author Kasper Luckow
 */
public class CondFilter implements Filter {
  
  @Override
  public boolean apply(Instruction executedInstruction,
      Instruction instrToBeExecuted, VM vm, ThreadInfo currentThread) {
    return (instrToBeExecuted instanceof IfInstruction || 
        instrToBeExecuted instanceof ReturnInstruction);
  }
}
