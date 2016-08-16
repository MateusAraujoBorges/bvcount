package sidechannel;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;

import java.io.OutputStream;

/**
 * Listener for quantify leaks via sending over Socket
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class NetworkChannelQuantifier extends StreamingChannelQuantifier {

	public NetworkChannelQuantifier(Config conf, JPF jpf) {
		super(conf, jpf);
	}

	@Override
	int getSource(){
		return OutputStream.SOCKET;
	}
}