package sidechannel;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;

import java.io.OutputStream;

/**
 * Listener for quantify leaks via writing to a file
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class FileChannelQuantifier extends StreamingChannelQuantifier{

	public FileChannelQuantifier(Config conf, JPF jpf) {
		super(conf, jpf);
	}

	@Override
	int getSource(){
		return OutputStream.FILE;
	}
}
