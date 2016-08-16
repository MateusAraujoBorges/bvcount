package sidechannel.multirun;

import gov.nasa.jpf.annotation.MJI;
import gov.nasa.jpf.vm.MJIEnv;
import gov.nasa.jpf.vm.NativePeer;
import gov.nasa.jpf.vm.SystemState;
import gov.nasa.jpf.vm.VM;
import sidechannel.choice.CostChoiceGenerator;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class JPF_sidechannel_multirun_Observable extends NativePeer {
	
	@MJI
	public static void add__J__V(MJIEnv env, int objRef, long cost){
		
		VM vm = env.getVM();
		SystemState ss = vm.getSystemState();
		CostChoiceGenerator cg = new CostChoiceGenerator(cost);
		// Does not actually make any choice
		ss.setNextChoiceGenerator(cg);
		// nothing to do as there are no choices.
	}
}
