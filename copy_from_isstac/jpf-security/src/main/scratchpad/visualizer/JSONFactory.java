/*
 * Copyright (C) 2014, United States Government, as represented by the
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

import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.symbc.tree.NodeFactory;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.VM;

/**
 * @author Kasper Luckow
 */
public class JSONFactory extends NodeFactory<JSONNode> {

  //TODO: super ugly. should not be in (stateless) factory. only for testing stuff
  public JSONNode root;
  
  public JSONFactory() {
    root = null;
  }

  @Override
  public JSONNode constructNode(JSONNode parentNode, Instruction instr, VM vm) {
    JSONNode node = new JSONNode(getPathConditionString(PathCondition.getPC(vm)));
    if(root == null)
      root = node;
    
    if(parentNode != null) {
      parentNode.addChild(node);
    }
    return node;
  }

  private String getPathConditionString(PathCondition pc) {
    if(pc != null) {
      String strPc = pc.header.getLeft().stringPC() + pc.header.getComparator().toString() + pc.header.getRight().stringPC();
      return strPc;
    } else
      return "";
  }
}
