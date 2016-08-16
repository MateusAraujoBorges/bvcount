package scratchpad.cf;

import gov.nasa.jpf.vm.MethodInfo;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * @author Kasper Luckow
 */
public class SymCallGraph {

  private Map<MethodInfo, CallNode> meth2callNode;
  private CallNode root;
  
  public SymCallGraph() {
    meth2callNode = new HashMap<>();
    root = null;
  }
  
  public Collection<CallNode> getNodes() {
    return this.meth2callNode.values();
  }
  
  public CallNode getCallNode(MethodInfo mi) {
    return this.meth2callNode.get(mi);
  }
  
  public boolean addCallNode(CallNode call) {
    if(!meth2callNode.containsKey(call)) {
      meth2callNode.put(call.getMethod(), call);
      if(root == null) root = call;
      return true;
    }
    return false;
  }
  
  public CallNode getRoot() {
    return this.root;
  }
}
