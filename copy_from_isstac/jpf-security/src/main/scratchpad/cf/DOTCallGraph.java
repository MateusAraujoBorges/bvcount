package scratchpad.cf;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import att.grappa.Attribute;
import att.grappa.Edge;
import att.grappa.Graph;
import att.grappa.Node;

/**
 * @author Kasper Luckow
 */
public class DOTCallGraph {
  
  public static Graph build(SymCallGraph cg) {
    Graph dotGraph = new Graph("call graph");
    long id = 0;
    Map<CallNode, Node> cn2n = new HashMap<>();
    for(CallNode cn : cg.getNodes()) {
      Node n = new Node(dotGraph, ""+id++);
      n.setAttribute(new Attribute(Attribute.NODE, Attribute.LABEL_ATTR, cn.getMethod().getFullName()));
      cn2n.put(cn, n);
    }
    
    //super super ugly
    for(CallNode cn : cg.getNodes()) {
      Node srcNode = cn2n.get(cn);
      for(CallNode out : cn.getCalls()) {
        Node destNode = cn2n.get(out);
        Edge edge = new Edge(dotGraph, srcNode, destNode);
        edge.setAttribute(new Attribute(Attribute.EDGE, Attribute.LABEL_ATTR, ""+cn.getCallNumber(out)));
      }
    }
    return dotGraph;
  }
}
