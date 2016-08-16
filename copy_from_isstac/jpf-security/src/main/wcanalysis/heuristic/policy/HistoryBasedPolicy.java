package wcanalysis.heuristic.policy;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import gov.nasa.jpf.symbc.numeric.PCChoiceGenerator;
import gov.nasa.jpf.vm.ChoiceGenerator;
import wcanalysis.heuristic.BranchInstruction;
import wcanalysis.heuristic.ContextManager;
import wcanalysis.heuristic.Decision;
import wcanalysis.heuristic.InvariantChecker;
import wcanalysis.heuristic.Path;
import wcanalysis.heuristic.Resolution;
import wcanalysis.heuristic.WorstCasePath;
import wcanalysis.heuristic.Resolution.ResolutionType;

/**
 * @author Kasper Luckow
 *
 */
public class HistoryBasedPolicy extends Policy implements ChoiceListener { 
  private static final long serialVersionUID = 3311547338575590448L;
  
  public static class Builder implements PolicyGenerator<HistoryBasedPolicy> {
    private boolean adaptive = false;
    private boolean unconstrainedHistorySize = true;
    
    private int maxHistorySize = 0;
    private InvariantChecker invariantChecker = null;
    
    public Builder() { }
    
    public Builder setAdaptive(boolean adaptive) {
      this.adaptive = adaptive;
      return this;
    }

    public Builder setMaxHistorySize(int maxHistorySize) {
      unconstrainedHistorySize = false;
      this.maxHistorySize = maxHistorySize;
      return this;
    }
    
    public Builder addInvariantChecker(InvariantChecker invChecker) {
      this.invariantChecker = invChecker;
      return this;
    }
    
    private Map<BranchInstruction, BranchPolicy> computePolicy(WorstCasePath wcPath) {
      Map<BranchInstruction, HistoryBasedBranchPolicy.Builder> branch2polbuilder = new HashMap<>();
      for(int i = wcPath.size() - 1; i >= 0; i--) {
        Decision currDecision = wcPath.get(i);
        int currentChoice = currDecision.getChoice();
        Decision prevDecision;
        Path history = new Path();
        //We get the context preserving history from the current decision
        int currHistorySize = 0;
        for(int j = i - 1; j >= 0; j--, currHistorySize++) {
          prevDecision = wcPath.get(j);
          if(prevDecision.getContext() != currDecision.getContext())
            break;
          if(!adaptive && !unconstrainedHistorySize && currHistorySize >= maxHistorySize)
            break;
          history.addFirst(prevDecision);
        }
        BranchInstruction branchInstr = currDecision.getInstruction();
        
        HistoryBasedBranchPolicy.Builder bldr = branch2polbuilder.get(branchInstr);
        if(bldr == null) {
          bldr = new HistoryBasedBranchPolicy.Builder();
          branch2polbuilder.put(branchInstr, bldr);
        }
        bldr.addPolicy(history, currentChoice);
      }
      Map<BranchInstruction, BranchPolicy> branch2pol = new HashMap<>();
      for(Map.Entry<BranchInstruction, HistoryBasedBranchPolicy.Builder> entry : branch2polbuilder.entrySet()) {
        HistoryBasedBranchPolicy branchPolicy = entry.getValue().build(adaptive);
        branch2pol.put(entry.getKey(), branchPolicy);
      }
      return branch2pol;
    }
    
    @Override
    public HistoryBasedPolicy generate(Set<String> measuredMethods, WorstCasePath path) {
      Map<BranchInstruction, BranchPolicy> policy = computePolicy(path);
      return new HistoryBasedPolicy(policy, measuredMethods, invariantChecker);
    }
  }
  
  private final Map<BranchInstruction, BranchPolicy> policy;  
  private InvariantChecker invariantChecker = null;
  
  private HistoryBasedPolicy(Map<BranchInstruction, BranchPolicy> historyPolicy, Set<String> measuredMethods, InvariantChecker invariantChecker) {
    super(measuredMethods);
    this.invariantChecker = invariantChecker;
    this.policy = historyPolicy;
  }

  @Override
  public Resolution resolve(ChoiceGenerator<?> cg, ContextManager ctxManager) {
    assert cg instanceof PCChoiceGenerator;
    
    PCChoiceGenerator pcCg = (PCChoiceGenerator)cg;
    BranchInstruction branchInstr = new BranchInstruction(cg.getInsn());
    
    if(this.invariantChecker != null) {
      Set<Integer> allowedChoices = this.invariantChecker.getChoices(branchInstr, pcCg);
      if(allowedChoices.size() == 1) { //we can uniquely determine a choice
        return new Resolution(allowedChoices.iterator().next(), ResolutionType.INVARIANT);
      }
    }
    BranchPolicy branchPolicy = this.policy.get(branchInstr);
    if(branchPolicy != null) {
      Path history = Path.generateCtxPreservingHistory(cg, ctxManager, branchPolicy.getMaxHistorySize());
      Set<Integer> choices = branchPolicy.resolve(history);
      if(choices != null && choices.size() == 1) {
        return new Resolution(choices.iterator().next(), ResolutionType.HISTORY);
      } else {
        return new Resolution(-1, ResolutionType.UNRESOLVED);
      }
    }
    return new Resolution(-1, ResolutionType.UNRESOLVED);
  }

  @Override
  public void choiceMade(PCChoiceGenerator cg, int choiceMade) {
    if(this.invariantChecker != null) {
      this.invariantChecker.choiceMade(new BranchInstruction(cg.getInsn()), choiceMade);
    }
  }
  
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    List<BranchInstruction> bList = new ArrayList<>(policy.keySet());
    Collections.sort(bList, new Comparator<BranchInstruction>() {
      @Override
      public int compare(BranchInstruction o1, BranchInstruction o2) {
        return Integer.compare(o1.getLineNumber(), o2.getLineNumber());
      }
    });
    
    for(BranchInstruction branch : bList) {
      sb.append(branch.toString()).append(":\n");
      BranchPolicy histories = policy.get(branch);
      sb.append(histories.toString()).append("\n");
    }
    return sb.toString();
  }
}
