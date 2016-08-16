package edu.cmu.sv.isstac.sampling.mcts;

import java.util.ArrayList;
import java.util.List;

import edu.cmu.sv.isstac.sampling.structure.Node;

/**
 * @author Kasper Luckow
 *
 */
interface SelectionPolicy {
  
  public Node selectBestChild(Node currNode, ArrayList<Integer> eligibleChoices);
  public int expandChild(Node currNode, ArrayList<Integer> eligibleChoices);
}
