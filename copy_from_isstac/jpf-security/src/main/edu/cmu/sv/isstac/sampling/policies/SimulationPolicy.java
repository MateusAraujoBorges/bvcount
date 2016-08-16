package edu.cmu.sv.isstac.sampling.policies;

import java.util.ArrayList;
import java.util.List;

import gov.nasa.jpf.vm.ChoiceGenerator;

/**
 * @author Kasper Luckow
 *
 */
public interface SimulationPolicy {
  public int selectChoice(ChoiceGenerator<?> cg, ArrayList<Integer> eligibleChoices);
}
