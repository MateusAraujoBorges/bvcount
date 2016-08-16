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
package scratchpad.visualizer;

import prefuse.data.Graph;
import prefuse.data.Node;
import scratchpad.visualizer.interactive.InteractiveVisualizer;
import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.symbc.tree.NodeFactory;
import gov.nasa.jpf.symbc.tree.visualizer.AVisualizerListener;

/**
 * @author Kasper Luckow
 */
public class InteractiveVisualizerListener extends AVisualizerListener<Node> {
  private Graph graph;
  private static final String lblName = "name";
  
  public InteractiveVisualizerListener(Config conf, JPF jpf) {
    super(conf, jpf);
  }

  @Override
  protected NodeFactory<Node> getNodeFactory() {
    graph = new Graph(true);
    graph.addColumn(lblName, String.class);
    return new InteractiveVisualizerFactory(graph, lblName);
  }

  @Override
  protected void processTree() {
    InteractiveVisualizer visualizer = new InteractiveVisualizer();
    //optionally add control listeners here
    visualizer.visualize(graph, lblName);
  }
}
