package scratchpad.cf.soot.ex;

import gov.nasa.jpf.vm.MethodInfo;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import scratchpad.cf.CallNode;
import scratchpad.cf.SymCallGraph;
import soot.MethodOrMethodContext;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Edge;

/**
 * @author Kasper Luckow
 */
public class ProjectedCallGraph extends CallGraph {

  private Set<Edge> projectedEdges;
  private Map<Edge, Integer> projectedEdgeData; 

  public ProjectedCallGraph(CallGraph cg) {
    projectedEdges = new HashSet<>();
    projectedEdgeData = new HashMap<>();
    for(Iterator<Edge> it = cg.iterator();it.hasNext();) {
      this.addEdge(it.next());
    }
  }
  
  public void project(SymCallGraph symCG) {
    for(CallNode symNode : symCG.getNodes()) {
      MethodInfo mi = symNode.getMethod();
      SootClass cl = Scene.v().getSootClass(mi.getClassName());
      
      //TODO: This is super super expensive. Optimize
      //TODO: NO support for overloading!
      SootMethod srcMethod = null;
      try {
        srcMethod = cl.getMethodByName(mi.getName());
      } catch(RuntimeException e) {
        continue;
      }
      for(Iterator<Edge> eIter = this.edgesOutOf(srcMethod); eIter.hasNext();) {
        Edge edge = eIter.next();
        SootMethod tgtMeth = edge.getTgt().method();
        for(CallNode call : symNode.getCalls()) {
          MethodInfo tgtInfo = call.getMethod();
          if(tgtMeth.getDeclaringClass().getName().equals(tgtInfo.getClassName()) && 
             tgtMeth.getName().equals(tgtInfo.getName())) {
            int callNumber = symNode.getCallNumber(call);
            addProjectedEdge(edge, callNumber);
          }
        }
      }
    }
  }

  public void addProjectedEdge(Edge edge) {
    this.projectedEdges.add(edge);
  }

  public void addProjectedEdge(Edge edge, int data) {
    this.projectedEdges.add(edge);
    this.projectedEdgeData.put(edge, data);
  }

  public boolean isProjected(Edge edge) {
    return this.projectedEdges.contains(edge);
  }

  public int getProjectedEdgeData(Edge edge) {
    return this.projectedEdgeData.get(edge);
  }
}
