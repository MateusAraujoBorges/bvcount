package scratchpad.cf;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.logging.Logger;

import scratchpad.cf.soot.ex.ProjectedCallGraph;
import scratchpad.cf.soot.ex.ProjectedCallGraphToDOT;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.toolkits.graph.ExceptionalBlockGraph;
import soot.util.cfgcmd.CFGToDotGraph;
import soot.util.dot.DotGraph;
import att.grappa.Graph;
import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;

/**
 * @author Kasper Luckow
 */
public class DOTCallGraphListener extends SymCallGraphListener {
  private static final Logger logger = JPF.getLogger(DOTCallGraphListener.class.getName());
  private final static String OUTPUT_PATH = "symbolic.cg.visualizer.outputpath";
  private final String outputPath;
  
  public DOTCallGraphListener(Config conf, JPF jpf) {
    super(conf, jpf);
    this.outputPath = conf.getString(OUTPUT_PATH, "./callgraph.dot");
  }

  @Override
  protected void processTree() {
    String[] classpaths = jpfConf.getProperty("classpath").split(",");
    String targetCl = jpfConf.getProperty("target");
    String fqSymMethod = jpfConf.getProperty("symbolic.method");
    int clId = fqSymMethod.lastIndexOf('.');
    String clName = fqSymMethod.substring(0, clId);
    String mName = fqSymMethod.substring(clId + 1, fqSymMethod.indexOf('('));
    
    /*
    SootClass cl = Scene.v().getSootClass(clName);
    SootMethod sootMethod = cl.getMethodByName(mName);
    ExceptionalBlockGraph bg = new ExceptionalBlockGraph(sootMethod.getActiveBody());
    CFGToDotGraph cfgDot = new CFGToDotGraph();
    DotGraph dg = cfgDot.drawCFG(bg);
    dg.plot("./" + mName + ".dot");
    */
        
    CallGraphProjector cgProjector = 
        new CallGraphProjector(classpaths, targetCl, clName, mName);
    ProjectedCallGraph cgsi = cgProjector.projectCallGraph(super.cg);
    ProjectedCallGraphToDOT.build(cgsi);
    
    Graph dotGraph = ProjectedCallGraphToDOT.build(cgsi);//DOTCallGraph.build(super.cg);
    try {
      dotGraph.printGraph(new FileOutputStream(new File(outputPath)));
    } catch (FileNotFoundException e) {
      logger.severe(e.getMessage());
    }
  }
}
