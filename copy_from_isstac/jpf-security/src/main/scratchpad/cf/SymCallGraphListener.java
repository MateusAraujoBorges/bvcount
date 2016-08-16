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

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.symbc.bytecode.BytecodeUtils;
import gov.nasa.jpf.symbc.tree.ATreeListener;
import gov.nasa.jpf.symbc.tree.NodeFactory;
import gov.nasa.jpf.vm.MethodInfo;
import gov.nasa.jpf.vm.ThreadInfo;
import gov.nasa.jpf.vm.VM;

/**
 * @author Kasper Luckow
 */
public abstract class SymCallGraphListener extends ATreeListener<CallNode> {
  protected SymCallGraph cg;
  private boolean symMethStarted;
  public SymCallGraphListener(Config conf, JPF jpf) {
    super(conf, jpf);
    symMethStarted = false;
  }

  @Override
  protected NodeFactory<CallNode> getNodeFactory() {
    this.cg = new SymCallGraph();
    return new CallNodeFactory(cg);
  }

  //We override this to construct a node for the target method
  @Override
  public void methodEntered (VM vm, ThreadInfo currentThread, MethodInfo enteredMethod) {
    super.methodEntered(vm, currentThread, enteredMethod);
    if(!symMethStarted) {
      symMethStarted = SymUtil.isSymbolic(jpfConf, enteredMethod);
      if(symMethStarted) {
        //Note that we are NOT setting prev here
        cg.addCallNode(new CallNode(enteredMethod));
      }
    }
  }
}
