package scratchpad.cost;

import gov.nasa.jpf.vm.Instruction;

/**
 * @author Kasper Luckow
 */
public class DummyCostModel implements ICostModel {
  
  @Override
  public int getCost(Instruction instr) {
    return 1;
  }
}
