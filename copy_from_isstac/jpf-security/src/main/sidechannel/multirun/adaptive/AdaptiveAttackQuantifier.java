package sidechannel.multirun.adaptive;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.JPFListener;

import java.io.File;

import org.apache.commons.io.FileUtils;

import sidechannel.util.Environment;
import sidechannel.util.smt.BitVectorUtils;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class AdaptiveAttackQuantifier {

	private static Config conf = null;

	public static void start(Config config, String[] args) {

		conf = config;

		setupEnvironment();

		String adaptive = conf.getProperty("adaptive");
		assert (adaptive != null);

		adaptiveAttack();

	}

	private static void adaptiveAttack() {

		int numOfRuns = Integer.parseInt(conf.getProperty("multirun.num_run"));
		for (int i = 1; i <= numOfRuns; i++) {
			// set up parameters
			conf.setProperty("greedy.output", "build/tmp/maxSMT.run" + i
					+ ".smt2");
			conf.setProperty("target.args", i + ",attack");
			// attack and defense
			JPF jpf = new JPF(conf);
			AdversaryListener attackListener = new AdversaryListener(conf, jpf);
			jpf.addListener(attackListener);
			try {
				System.out.println("============================ START RUN " + i + ""
						+ " ============================");
				jpf.run();
				if(attackListener.reachedFixedPoint()){
					return;
				}
				jpf.removeListener(attackListener);
				conf.setProperty("target.args", i + ",defend");
				jpf = new JPF(conf);
				JPFListener defendListener = new DefenderListener(conf, jpf);
				// JPFListener defendListener = new DefenderListenerWithMathematica(conf, jpf);
				jpf.addListener(defendListener);
				jpf.run();
				FileUtils.cleanDirectory(new File(conf
						.getProperty("symbolic.reliability.tmpDir")));
				System.out.println("============================= END RUN " + i + ""
						+ " =============================");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	private static void setupEnvironment() {
		// clean tmp file
		try {
			FileUtils
					.cleanDirectory(new File(conf.getProperty("greedy.tmpDir")));
			String tmpDir2 = conf.getProperty("symbolic.reliability.tmpDir");
			assert (tmpDir2 != null);
			File dir = new File(tmpDir2);
			if (!dir.exists()) {
				dir.mkdirs();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// find z3
		String z3 = Environment.find("z3");
		if (z3 == null) {
			return;
		}
		conf.setProperty("z3", z3);

		String bit_length = conf.getProperty("bit_length");
		if (bit_length != null) {
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
		
		/*
		// hack: minimize bit length to reduce the formula
		int maxInt = Integer.parseInt(conf.getProperty("symbolic.max_int"));
		BitVectorUtils.bitLength = (int) (Math.log(maxInt) / Math.log(2)) + 10;
		//*/
	}
}
