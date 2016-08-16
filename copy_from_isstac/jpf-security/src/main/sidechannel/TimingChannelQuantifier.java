package sidechannel;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.vm.Instruction;
import gov.nasa.jpf.vm.ThreadInfo;

/**
 * Listener for quantify timing-channel leaks
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class TimingChannelQuantifier extends SideChannelQuantifier {

    public TimingChannelQuantifier(Config conf, JPF jpf) {
        super(conf, jpf);
    }

	@Override
	protected void checkInstruction (ThreadInfo currentThread,Instruction executedInstruction){
		current++;
	}

}
