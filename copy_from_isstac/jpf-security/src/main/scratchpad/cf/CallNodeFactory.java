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
package scratchpad.cf;

import gov.nasa.jpf.symbc.tree.NodeFactory;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.VM;
import gov.nasa.jpf.vm.bytecode.InvokeInstruction;

/**
 * @author Kasper Luckow
 */
public class CallNodeFactory extends NodeFactory<CallNode> {
  private SymCallGraph cg;
  public CallNodeFactory(SymCallGraph cg) {
    this.cg = cg;
  }

  @Override
  public CallNode constructNode(CallNode parentNode, Instruction instr, VM vm) {
    assert instr instanceof InvokeInstruction;
    InvokeInstruction invInstr = (InvokeInstruction)instr;
    
    CallNode callee = cg.getCallNode(invInstr.getMethodInfo());
    CallNode cn = new CallNode(invInstr.getInvokedMethod());
    cg.addCallNode(cn);
    if(callee != null)
      callee.addCall(cn);
    return cn;
  }
}
