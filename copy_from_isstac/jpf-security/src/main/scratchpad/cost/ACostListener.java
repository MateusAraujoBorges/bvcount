/*
 * Copyright (C) 2014, United States Government, as represented by the
 * Administrator of the National Aeronautics and Space Administration.
 * All rights reserved.
 *
 * Symbolic Pathfinder (jpf-symbc) is licensed under the Apache License, 
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 * 
 *        http://www.apache.org/licenses/LICENSE-2.0. 
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and 
 * limitations under the License.
 */
package scratchpad.cost;

import java.util.HashMap;
import java.util.Map;
import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.search.Search;
import gov.nasa.jpf.symbc.tree.ATreeListener;
import gov.nasa.jpf.vm.ElementInfo;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;

/**
 * @author Kasper Luckow
 */
public abstract class ACostListener<T> extends ATreeListener<T> {
  
  //Used for tracking min/max cost an associated node;
  protected T maxAccCostNode;
  protected int maxAccCost;
  protected T minAccCostNode;
  protected int minAccCost;
  
  /* The only configuration pertaining to the cost listener
   * Provide the fully qualified name of the class to be instantiated, e.g.,
   * gov.nasa.jpf.symbc.tree.cost.CostModel
   */
  private final static String COST_MODEL = "symbolic.cost.costmodel";
  private final static String TRACK_LOCAL_COST = "symbolic.cost.tracklocal";
  
  protected ICostModel costModel;
  protected final boolean trackLocal;
  
  //TODO: ugly..
  protected Map<T, T> parentMap;
  
  public ACostListener(Config conf, JPF jpf) {
    super(conf, jpf);
    this.costModel = conf.hasValue(COST_MODEL) ? 
        conf.getInstance(COST_MODEL, DummyCostModel.class) : 
        new DummyCostModel();
    
    this.trackLocal = conf.getBoolean(TRACK_LOCAL_COST, false);
    this.maxAccCost = Integer.MIN_VALUE;
    this.minAccCost = Integer.MAX_VALUE;
    this.parentMap = new HashMap<>();
  }
  
  @Override
  public void executeInstruction(VM vm, ThreadInfo currentThread, Instruction instructionToExecute) {
    if(isRelevantState(vm, currentThread)) {
      int cost = this.costModel.getCost(instructionToExecute);
      int globalCost = 0;
      if(executed.hasAttr(AccCost.class))
        globalCost = executed.getAttr(AccCost.class).cost;
      if(trackLocal)
        instructionToExecute.addAttr(new LocalCost(cost));
      instructionToExecute.addAttr(new AccCost(globalCost + cost));
      if(nodePredicate.apply(executed, instructionToExecute, vm, currentThread)) {
        T node = this.nodeFactory.constructNode(prev, instructionToExecute, vm);
        this.parentMap.put(node, prev);
        this.prev = node; 
      }
    }
    this.executed = instructionToExecute;
  }
  
  @Override
  public void exceptionThrown(VM vm, ThreadInfo currentThread, ElementInfo thrownException) {
    checkExecutionPath();
  }
  
  @Override
  public void searchConstraintHit(Search search) {
    if (!search.isEndState() && !search.isErrorState()) {
      checkExecutionPath();
    }
  }
  
  @Override
  public void stateAdvanced(Search search) {
    if(search.isEndState()) {
      checkExecutionPath();
    }
  }
  
  private void checkExecutionPath() {
    if(executed.hasAttr(AccCost.class)) {
      int ac = executed.getAttr(AccCost.class).cost;
      if(ac > this.maxAccCost) {
        this.maxAccCost = ac;
        this.maxAccCostNode = prev; 
      } else if(ac < this.minAccCost) {
        this.minAccCost = ac;
        this.minAccCostNode = prev; 
      }
    }
  }
  
  /**
   * @return the maxAccCostNode
   */
  public T getMaxAccumulatedCostNode() {
    return maxAccCostNode;
  }

  /**
   * @return the maxAccCost
   */
  public int getMaxAccumulatedCost() {
    return maxAccCost;
  }

  /**
   * @return the minAccCostNode
   */
  public T getMinAccumulatedCostNode() {
    return minAccCostNode;
  }

  /**
   * @return the minAccCost
   */
  public int getMinAccumulatedCost() {
    return minAccCost;
  }
  
  //Marker classes for jpf attrs
  public static class AccCost {
    public int cost;
    public AccCost(int cost) { this.cost = cost;}
  }
  
  public static class LocalCost {
    public int cost;
    public LocalCost(int cost) { this.cost = cost;}
  }
}
