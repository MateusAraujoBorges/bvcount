package edu.cmu.sv.isstac.sampling.mcts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Logger;

import edu.cmu.sv.isstac.sampling.AnalysisEventObserver;
import edu.cmu.sv.isstac.sampling.SamplingResult;
import edu.cmu.sv.isstac.sampling.SamplingResult.ResultContainer;
import edu.cmu.sv.isstac.sampling.exploration.ChoicesStrategy;
import edu.cmu.sv.isstac.sampling.exploration.Path;
import edu.cmu.sv.isstac.sampling.montecarlo.MonteCarloAnalysisException;
import edu.cmu.sv.isstac.sampling.policies.SimulationPolicy;
import edu.cmu.sv.isstac.sampling.reward.RewardFunction;
import edu.cmu.sv.isstac.sampling.structure.DefaultNodeFactory;
import edu.cmu.sv.isstac.sampling.structure.Node;
import edu.cmu.sv.isstac.sampling.structure.NodeFactory;
import edu.cmu.sv.isstac.sampling.termination.TerminationStrategy;
import gov.nasa.jpf.PropertyListenerAdapter;
import gov.nasa.jpf.search.Search;
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.util.JPFLogger;
import gov.nasa.jpf.vm.ChoiceGenerator;
import gov.nasa.jpf.vm.ElementInfo;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;

/**
 * @author Kasper Luckow
 *
 */
class MCTSListener extends PropertyListenerAdapter {
  private enum MCTS_STATE {
    SELECTION {
      @Override
      public String toString() {
        return "Selection";
      }
    },
    SIMULATION {
      @Override
      public String toString() {
        return "Simulation";
      }
    };
  }
  
  private static final Logger logger = JPFLogger.getLogger(MCTSListener.class.getName());
  
  private final ChoicesStrategy choicesStrategy;
  
  private MCTS_STATE mctsState;
  private Node last = null;
  private Node root = null;
  private final NodeFactory nodeFactory;
  
  private final SelectionPolicy selectionPolicy;
  private final SimulationPolicy simulationPolicy;
  
  private final RewardFunction rewardFunction;
  
  private final TerminationStrategy terminationStrategy;
  
  private boolean expandedFlag = false;
  private int expandedChoice = -1;
  
  // Holds the largest rewards found (note: we assume a deterministic system!)
  // for succ, fail and grey. Maybe we only want to keep one of them?
  // In addition it holds various statistics about the exploration
  private SamplingResult result = new SamplingResult();

  // Observers are notified upon termination. We can add more fine grained 
  // events if necessary, e.g. emit event after each sample.
  private Set<AnalysisEventObserver> observers = new HashSet<>();
  
  public MCTSListener(SelectionPolicy selectionPolicy,
      SimulationPolicy simulationPolicy,
      RewardFunction rewardFunction,
      ChoicesStrategy choicesStrategy,
      TerminationStrategy terminationStrategy) {
    this.choicesStrategy = choicesStrategy;
    this.selectionPolicy = selectionPolicy;
    this.simulationPolicy = simulationPolicy;
    this.rewardFunction = rewardFunction;
    this.terminationStrategy = terminationStrategy;
    
    this.mctsState = MCTS_STATE.SELECTION;
    
    //For now we just stick with the default factory
    this.nodeFactory = new DefaultNodeFactory();
  }
  
  public void addEventObserver(AnalysisEventObserver observer) {
    observers.add(observer);
  }
    
  @Override
  public void choiceGeneratorAdvanced(VM vm, ChoiceGenerator<?> cg) {
    if(this.nodeFactory.isSupportedChoiceGenerator(cg)) {
      
      // If we expanded a child in the previous CG advancement,
      // we now want to create the node for that child.
      // We can only do that now, because otherwise the CG
      // is not available
      if(expandedFlag) {
        assert mctsState == MCTS_STATE.SIMULATION;
        last = this.nodeFactory.create(last, cg, expandedChoice);
        expandedFlag = false;
      }
      
      // Get the eligible choices for this CG
      // based on the exploration strategy (e.g., pruning-based)
      ArrayList<Integer> eligibleChoices = choicesStrategy.getEligibleChoices(cg);
      
      // If empty, we entered an invalid state
      if(eligibleChoices.isEmpty()) {
        String msg = "Entered invalid state: No eligible choices";
        logger.severe(msg);
        throw new MCTSAnalysisException(msg);
      }
      
      int choice = -1;
      
      // Check if we are currently in the Selection phase of MCTS
      if(mctsState == MCTS_STATE.SELECTION) {
        
        // create root
        if(root == null) { 
          root = last = this.nodeFactory.create(null, cg, -1); 
        }
        
        // Check if node is a "frontier", i.e. it has eligible, unexpanded children
        // In this case, we perform the expansion step of MCTS
        if(isFrontierNode(last, eligibleChoices)) {
          ArrayList<Integer> unexpandedEligibleChoices = getUnexpandedEligibleChoices(last, eligibleChoices);
          
          // Select the unexpanded children according to our selection policy, e.g. randomly
          choice = expandedChoice = selectionPolicy.expandChild(last, unexpandedEligibleChoices);
          expandedFlag = true;
          
          // After expansion, we proceed to simulation step of MCTS
          mctsState = MCTS_STATE.SIMULATION; 
        } else {
          
          // If it was not a frontier node, we perform the selection step of MCTS
          // A node is selected based on the selection policy, e.g., classic UCB
          last = selectionPolicy.selectBestChild(last, eligibleChoices);
          choice = last.getChoice();
        }
      } else if(mctsState == MCTS_STATE.SIMULATION) {
        
        // Select choice according to simulation policy, e.g., randomly
        choice = simulationPolicy.selectChoice(cg, eligibleChoices);
      } else {
        String msg = "Entered invalid MCTS state: " + mctsState;
        logger.severe(msg);
        throw new MCTSAnalysisException(msg);
      }
      
      assert choice != -1;
      
      cg.select(choice);
    } else {
      String msg = "Unexpected CG: " + cg.getClass().getName();
      logger.severe(msg);
      throw new MCTSAnalysisException(msg);
    }
  }
  
  private ArrayList<Integer> getUnexpandedEligibleChoices(Node n, ArrayList<Integer> eligibleChoices) {
    ArrayList<Integer> unexpandedEligibleChoices = new ArrayList<>();
    Collection<Node> expandedChildren = n.getChildren();
    Set<Integer> childChoices = new HashSet<>();
    
    //Could expose a method in a node to obtain the following
    for(Node child : expandedChildren) {
      childChoices.add(child.getChoice());
    }
    
    // We only select the unexpanded children
    // that are eligible for selection, e.g.,
    // not pruned.
    for(int eligibleChoice : eligibleChoices) {
      if(!childChoices.contains(eligibleChoice))
        unexpandedEligibleChoices.add(eligibleChoice);
    }
    
    // We have hit an illegal state if there
    // are no choices that can be expanded
    if(unexpandedEligibleChoices.isEmpty()) {
      String msg = "No eligible, unexpanded children possible";
      logger.severe(msg);
      throw new MCTSAnalysisException(new IllegalStateException(msg));
    }
    
    return unexpandedEligibleChoices;
  }
  
  // Can we transition to Java 8, please.
  private interface RewardUpdater {
    public void update(Node n, long reward);
    public ResultContainer getResultStateForEvent();
  }

  private void finishSample(VM vm, RewardUpdater updater) {
    // Create a final node.
    // It marks a leaf in the Monte Carlo Tree AND
    // in the symbolic execution tree, i.e. it will
    // only be created in the event that MCT reaches
    // and actual leaf in the symbolic execution tree
    if(expandedFlag) {
      last = this.nodeFactory.create(last, null, expandedChoice);
      expandedFlag = false;
    }
    
    // Compute reward based on reward function
    long reward = rewardFunction.computeReward(vm);
    logger.info("Reward computed: " + reward);
    
    result.incNumberOfSamples();
    long numberOfSamples = result.getNumberOfSamples();
    logger.info("Sample number: " + numberOfSamples);
    
    // Perform backup phase
    for(Node n = last; n != null; n = n.getParent()) {
      updater.update(n, reward);
      n.incVisitedNum();
    }
    
    // Check if the reward obtained is greater than
    // previously observed for this event (succ, fail, grey)
    // and update the best result accordingly
    ResultContainer bestResult = updater.getResultStateForEvent();
    
    // Notify observers with sample done event
    for(AnalysisEventObserver obs : this.observers) {
      obs.sampleDone(numberOfSamples, reward, bestResult);
    }
    
    if(reward > bestResult.getReward()) {
      
      bestResult.setReward(reward);
      bestResult.setSampleNumber(result.getNumberOfSamples());
      
      Path path = new Path(vm.getChoiceGenerator());
      bestResult.setPath(path);
      
      // Supposedly getPC defensively (deep) copies the current PC 
      PathCondition pc = PathCondition.getPC(vm);
      bestResult.setPathCondition(pc);
    }
    
    // Check if we should terminate the search
    // based on the result obtained
    if(terminationStrategy.terminate(vm, this.result)) {
      vm.getSearch().terminate();
      
      // Notify observers with termination event
      for(AnalysisEventObserver obs : this.observers) {
        obs.analysisDone(result);
      }
    }
    
    // Reset exploration to drive a new round of sampling
    resetExploration();
  }
  
  /**
   * Compute reward for successful termination (succ)
   */
  @Override
  public void stateAdvanced(Search search) {
    if(search.isEndState()) {
      logger.fine("Successful termination.");
      finishSample(search.getVM(), new RewardUpdater() {
        @Override
        public void update(Node n, long reward) {
          n.getReward().incrementSucc(reward);
        }
        
        @Override
        public ResultContainer getResultStateForEvent() {
          return result.getMaxSuccResult();
        }
      });
    }
  }
  
  /**
   * Compute reward for "failure"
   */
  @Override
  public void exceptionThrown(VM vm, ThreadInfo currentThread, ElementInfo thrownException) {
    logger.fine("Property violation/exception thrown.");
    finishSample(vm, new RewardUpdater() {
      @Override
      public void update(Node n, long reward) {
        n.getReward().incrementFail(reward);
      }
      
      @Override
      public ResultContainer getResultStateForEvent() {
        return result.getMaxFailResult();
      }
    });
  }
  
  /**
   * Compute reward for "grey" termination
   */
  @Override
  public void searchConstraintHit(Search search) {
    logger.fine("Search constraint hit.");
    finishSample(search.getVM(), new RewardUpdater() {
      @Override
      public void update(Node n, long reward) {
        n.getReward().incrementGrey(reward);
      }

      @Override
      public ResultContainer getResultStateForEvent() {
        return result.getMaxGreyResult();
      }
    });
  }

  private void resetExploration() {
    this.mctsState = MCTS_STATE.SELECTION;
    this.last = this.root;
  }
  
  private boolean isFrontierNode(Node node, Collection<Integer> eligibleChoices) {
    for(int eligibleChoice : eligibleChoices) {
      if(!node.hasChildForChoice(eligibleChoice))
        return true;
    }
    return false;
  }
}
