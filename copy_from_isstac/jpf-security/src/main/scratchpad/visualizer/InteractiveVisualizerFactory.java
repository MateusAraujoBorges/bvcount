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
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.symbc.tree.NodeFactory;
import gov.nasa.jpf.symbc.tree.Filter;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.VM;

/**
 * @author Kasper Luckow
 */
public class InteractiveVisualizerFactory extends NodeFactory<Node> {

  private Graph graph;
  private String nodeLabel;
  public InteractiveVisualizerFactory(Graph graph, final String nodeLabel) {
    this.graph = graph;
    this.nodeLabel = nodeLabel;
  }
  
  @Override
  public Node constructNode(Node parentNode, Instruction instr, VM vm) {
    Node node = graph.addNode();
    PathCondition pc = PathCondition.getPC(vm);
    String nodeContent = (pc != null) ? getPCString(pc) : "true";
    node.setString(nodeLabel, nodeContent);
    if(parentNode != null)
      graph.addEdge(parentNode, node);
    return node;
  }

  private String getPCString(PathCondition pc) {
    if(pc != null) {
      StringBuilder pcBuilder = new StringBuilder();
      String[] pcs = pc.header.stringPC().split("&&");  
      for(int i = 0; i < pcs.length; i++) {
        pcBuilder.append(pcs[i]);
        if(i != pcs.length - 1)
          pcBuilder.append(" &&\n");
      }
      return pcBuilder.toString();
    } else
      return "";
  }
}
