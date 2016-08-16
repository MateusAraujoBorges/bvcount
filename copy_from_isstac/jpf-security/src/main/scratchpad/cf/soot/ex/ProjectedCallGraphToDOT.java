package scratchpad.cf.soot.ex;

import gov.nasa.jpf.util.Pair;

import java.awt.Color;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import scratchpad.cf.CallNode;
import scratchpad.cf.SymCallGraph;
import soot.SootMethod;
import soot.jimple.toolkits.callgraph.Edge;
import att.grappa.Attribute;
import att.grappa.Graph;
import att.grappa.Node;

/**
 * @author Kasper Luckow
 */
public class ProjectedCallGraphToDOT {

  public static Graph build(ProjectedCallGraph cg) {
    Graph dotGraph = new Graph("Projected call graph");
    long id = 0;
    Map<SootMethod, Node> cn2n = new HashMap<>();
    
    //If we leave out this one, we create
    //edges for EVERY call -- this may
    //or may not be what we want. Of course
    //there can be multiple callsites with the
    //same callee
    Map<SootMethod, Set<SootMethod>> processed = new HashMap<>();
    
    for(Iterator<Edge> it = cg.iterator();it.hasNext();) {
      Edge e = it.next();
      
      SootMethod src = e.src();
      SootMethod tgt = e.tgt();
      Set<SootMethod> procCalls = processed.get(src);
      if(procCalls != null && procCalls.contains(tgt))
        continue;
      
      Node srcNode = cn2n.get(src);
      if(srcNode == null) {
        srcNode = new Node(dotGraph, ""+id++);
        srcNode.setAttribute(new Attribute(Attribute.NODE, 
            Attribute.LABEL_ATTR, 
            src.getSubSignature() + "\\n(" + tgt.getDeclaringClass().getName() + ")"));
        cn2n.put(src, srcNode);
      }

      Node tgtNode = cn2n.get(tgt);
      if(tgtNode == null) {
        tgtNode = new Node(dotGraph, ""+id++);
        tgtNode.setAttribute(new Attribute(Attribute.NODE, 
            Attribute.LABEL_ATTR, 
            tgt.getSubSignature() + "\\n(" + tgt.getDeclaringClass().getName() + ")"));
        cn2n.put(tgt, tgtNode);
      }
      
      att.grappa.Edge edge = new att.grappa.Edge(dotGraph, srcNode, tgtNode);
      if(cg.isProjected(e)) {
        edge.setAttribute(new Attribute(Attribute.EDGE, Attribute.COLOR_ATTR, Color.red));
        int callNum = cg.getProjectedEdgeData(e);
        edge.setAttribute(new Attribute(Attribute.EDGE, Attribute.LABEL_ATTR, ""+callNum));
      }
      if(procCalls == null) {
        procCalls = new HashSet<>();
        processed.put(src, procCalls);
      }
      procCalls.add(tgt);
    }
    return dotGraph;
  }
}
