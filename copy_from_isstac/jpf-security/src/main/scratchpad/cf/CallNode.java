package scratchpad.cf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

import gov.nasa.jpf.vm.MethodInfo;

/**
 * @author Kasper Luckow
 */
public class CallNode {

  private Set<CallNode> calls;
  private Map<CallNode, Integer> callNumber;
  private final MethodInfo method;
  
  public CallNode(MethodInfo method) {
    this.method = method;
    calls = new HashSet<>();
    callNumber = new HashMap<>();
  }
  
  public void addCall(CallNode call) {
    if(calls.contains(call))
      this.callNumber.put(call, this.callNumber.get(call) + 1);
    else {
      this.calls.add(call);
      this.callNumber.put(call, 1);
    }
  }
  
  public MethodInfo getMethod() {
    return this.method;
  }
  
  public Set<CallNode> getCalls() {
    return this.calls;
  }
  
  public int getCallNumber(CallNode call) {
    return this.callNumber.get(call);
  }
  
  @Override
  public boolean equals(Object other) {
    if(!(other instanceof CallNode))
      return false;
    if(other == this)
      return true;
    
    CallNode rhs = (CallNode)other;
    //Check if this is actually safe -- maybe we can just check references of methodinfo?
    return new EqualsBuilder().append(rhs.method.getFullName(), this.method.getFullName()).isEquals();
  }
  
  @Override
  public int hashCode() {
    return new HashCodeBuilder(17, 31).
        append(this.method.getFullName()).
        hashCode();
  }
  
  @Override
  public String toString() {
    return this.method.getFullName();
  }
}
