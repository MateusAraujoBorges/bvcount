package scratchpad.cost;

import gov.nasa.jpf.vm.Instruction;

/**
 * @author Kasper Luckow
 */
public interface ICostModel {

  /**
   * Get cost of instr. This method should be overloaded according to instruction
   * type i.e. getCost(IfInstruction instr), getCost(InvokeInstruction instr) etc.
   * @param instr
   * @return
   */
  public int getCost(Instruction instr);  
}
