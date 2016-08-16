/*
 * Copyright (C) 2015, United States Government, as represented by the
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

import java.awt.Color;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.logging.Logger;

import att.grappa.Attribute;
import att.grappa.Graph;
import att.grappa.GrappaStyle;
import att.grappa.Node;
import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.symbc.tree.NodeFactory;

/**
 * @author Kasper Luckow
 * TODO: extract the dot visualizer from the listener in jpf-symbc
 * and reuse it here
 */
public class DOTCostListener extends ACostListener<Node> {

  private static Logger logger =  JPF.getLogger(DOTCostListener.class.getName());
  
  protected Graph graph;
  private final static String OUTPUT_PATH = "symbolic.cost.visualizer.outputpath";

  private final String outputPath;
  public DOTCostListener(Config conf, JPF jpf) {
    super(conf, jpf);
    this.outputPath = conf.getString(OUTPUT_PATH, "./cost.dot");
  }

  @Override
  protected NodeFactory<Node> getNodeFactory() {
    graph = new Graph("Graph");
    return new DOTCostFactory(graph);
  }

  @Override
  protected void processTree() {
    
    //highlight max path
    highlightPath(super.maxAccCostNode, Color.red, Color.yellow);
    //highlight min path
    highlightPath(super.minAccCostNode, Color.green, Color.yellow);
    
    File file = new File(this.outputPath); 
    FileOutputStream fo;
    try {
      fo = new FileOutputStream(file);
      graph.printGraph(fo);
      logger.info("Generated dot file: " + this.outputPath);
    } catch (FileNotFoundException e) {
      logger.severe(e.getMessage());
    }
  }
  
  private void highlightPath(Node node, Color color, Color confColor) {
    for(Node curr = node; curr != null; curr = super.parentMap.get(curr)) {
      GrappaStyle attr = (GrappaStyle)curr.getAttributeValue(Attribute.STYLE_ATTR);
      if(attr != null && attr.getFilled())
        curr.setAttribute(new Attribute(Attribute.NODE, Attribute.FILLCOLOR_ATTR, confColor));
      else {
        curr.setAttribute(new Attribute(Attribute.NODE, Attribute.STYLE_ATTR, "filled"));
        curr.setAttribute(new Attribute(Attribute.NODE, Attribute.FILLCOLOR_ATTR, color));
      }
    }
  }
}
