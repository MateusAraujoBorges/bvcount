package sidechannel;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.symbc.bytecode.MULTIANEWARRAY;
import gov.nasa.jpf.symbc.bytecode.NEW;
import gov.nasa.jpf.symbc.bytecode.NEWARRAY;
import gov.nasa.jpf.vm.ElementInfo;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.StackFrame;
import gov.nasa.jpf.vm.ThreadInfo;

/**
 * Listener for quantify memory-channel leaks
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class MemoryChannelQuantifier extends SideChannelQuantifier {
	
	public MemoryChannelQuantifier(Config conf, JPF jpf) {
		super(conf,jpf);
	}

	@Override
	protected void checkInstruction (ThreadInfo currentThread,Instruction executedInstruction){
		
		boolean isNew = false;
		int objRef = -1;

		if (executedInstruction instanceof NEW) {
			isNew = true;
			objRef = ((NEW) executedInstruction).getNewObjectRef();
		}

		if (executedInstruction instanceof NEWARRAY
				|| executedInstruction instanceof MULTIANEWARRAY) {

			isNew = true;
			StackFrame frame = currentThread.getModifiableTopFrame();
			objRef = frame.peek();
		}

		if (isNew && (objRef > 0)) {
			ElementInfo ei = currentThread.getHeap().get(objRef);
			int alloc = ei.getHeapSize();
			current += alloc;
		}
	}

}
