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
package scratchpad.cost;

import java.util.List;

import att.grappa.Attribute;
import att.grappa.Graph;
import gov.nasa.jpf.jvm.bytecode.IfInstruction;
import gov.nasa.jpf.jvm.bytecode.JVMInvokeInstruction;
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.symbc.tree.visualizer.DOTFactory;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.bytecode.InvokeInstruction;
import gov.nasa.jpf.vm.bytecode.ReturnInstruction;
import static scratchpad.cost.ACostListener.AccCost;
import static scratchpad.cost.ACostListener.LocalCost;

/**
 * @author Kasper Luckow
 */
public class DOTCostFactory extends DOTFactory {

  public DOTCostFactory(Graph graph) {
    super(graph);
  }
  
  private String getCostString(Instruction instr) {
    String costString = "";
    if(instr.hasAttr(LocalCost.class)) {
      costString = "loc. cost: " + instr.getAttr(LocalCost.class).cost + "\\n";
    }
    if(instr.hasAttr(AccCost.class)) {
      costString += "glob. cost: " + instr.getAttr(AccCost.class).cost + "\\n";
    }
    return costString;
  }
  
  protected List<Attribute> getNodeAttr(InvokeInstruction instr, PathCondition pc) {
    List<Attribute> attrs = super.getNodeAttr(instr, pc);
    
    StringBuilder lblBuilder = new StringBuilder();
    lblBuilder.append(instr.getMnemonic()).append("\\n")
    .append(getCostString(instr)).append("\\n");

    JVMInvokeInstruction invokeInstr = (JVMInvokeInstruction) instr;
    lblBuilder.append("Calling:\\n")
    .append(invokeInstr.getInvokedMethod().getFullName());

    attrs.add(new Attribute(Attribute.NODE, Attribute.LABEL_ATTR, lblBuilder.toString()));
    
    return attrs;
  }

  protected List<Attribute> getNodeAttr(ReturnInstruction instr, PathCondition pc) {
    List<Attribute> attrs = super.getNodeAttr(instr, pc);

    StringBuilder lblBuilder = new StringBuilder();
    lblBuilder.append(instr.getMnemonic()).append("\\n")
    .append(getCostString(instr)).append("\\n");
    lblBuilder.append("(").append(instr.getFilePos()).append(")\\n");
    lblBuilder.append(getPathConditionString(pc));
    Instruction next = instr.getNext();
    if(next != null)
      lblBuilder.append("Returning to:\\n").append(next.getMethodInfo().getFullName());
    
    attrs.add(new Attribute(Attribute.NODE, Attribute.LABEL_ATTR, lblBuilder.toString()));
    return attrs;
  }

  protected List<Attribute> getNodeAttr(IfInstruction instr, PathCondition pc) {
    List<Attribute> attrs = super.getNodeAttr(instr, pc);
    StringBuilder lblBuilder = new StringBuilder();
    lblBuilder.append(instr.getMnemonic()).append("\\n")
    .append(getCostString(instr)).append("\\n");
    lblBuilder.append("(").append(instr.getFilePos()).append(")\\n");
    lblBuilder.append(getPathConditionString(pc));

    attrs.add(new Attribute(Attribute.NODE, Attribute.LABEL_ATTR, lblBuilder.toString()));

    return attrs;
  }

  protected List<Attribute> getNodeAttr(Instruction instr, PathCondition pc) {

    List<Attribute> attrs = super.getNodeAttr(instr, pc);
    StringBuilder lblBuilder = new StringBuilder();
    lblBuilder.append(instr.getMnemonic()).append("\\n")
    .append(getCostString(instr)).append("\\n");
    lblBuilder.append("(").append(instr.getFilePos()).append(")\\n");
    lblBuilder.append(getPathConditionString(pc));
    attrs.add(new Attribute(Attribute.NODE, Attribute.LABEL_ATTR, lblBuilder.toString()));

    return attrs;
  }
}
