package scratchpad.cf;

import isstac.structure.cg.CGGenerator;
import isstac.structure.cg.CGRefiner;
import isstac.structure.cg.CHACGGenerator;
import scratchpad.cf.soot.ex.ProjectedCallGraph;
import soot.jimple.toolkits.callgraph.CallGraph;

/**
 * @author Kasper Luckow
 */
public class CallGraphProjector {

  private CallGraph sootCG;
  
  public CallGraphProjector(String[] applClasspaths, String mainClass, String targetClassName, String targetMethodName) {
    computeCallGraph(new CHACGGenerator(applClasspaths), mainClass, targetClassName, targetMethodName);
  }
  
  public CallGraphProjector(String applClasspath, String mainClass, String targetClassName, String targetMethodName) {
    computeCallGraph(new CHACGGenerator(applClasspath), mainClass, targetClassName, targetMethodName);
  }
  
  private void computeCallGraph(CGGenerator cgCon, String mainClass, String targetClassName, String targetMethodName) {
    CallGraph cg = cgCon.getCallGraphFromClass(mainClass);
    
    sootCG = CGRefiner.refine(cg, 0, targetClassName, targetMethodName);
    /*DirectedCallGraph dircg = new DirectedCallGraph(sootCG, new SootMethodFilter() {
      @Override
      public boolean want(SootMethod arg0) {
        return true;
      }
    }, 
    cg.sourceMethods(), 
    true);*/ 
    //PegCallGraphToDot.toDotFile("file.dot", dircg, "Call Graph");
    
  }
  
  public ProjectedCallGraph projectCallGraph(SymCallGraph symCG) {
    ProjectedCallGraph cgsi = new ProjectedCallGraph(sootCG);
    cgsi.project(symCG);
    return cgsi;
  }
}
