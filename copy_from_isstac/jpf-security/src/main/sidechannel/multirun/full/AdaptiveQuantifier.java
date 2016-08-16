package sidechannel.multirun.full;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import org.apache.commons.io.FileUtils;

import sidechannel.util.Environment;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class AdaptiveQuantifier {
	public static Config conf;

	static String tmpDir = null;
	
	// static boolean maxPartition = true;

	public static void start(Config config, String[] args) {

		conf = config;

		// clean tmp file
		tmpDir = conf.getProperty("greedy.tmpDir");
		File dir = new File(tmpDir);
		try {
			FileUtils.cleanDirectory(dir);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// find z3
		String z3 = Environment.find("z3");
		if (z3 == null) {
			return;
		}
		conf.setProperty("z3", z3);

		quantify();
	}

	public static void synthesizeSingleRunAttack(int k) {

		System.out.println("\n\n>>>>>>>>>>>>>>> Result for run " + k
				+ " <<<<<<<<<<<<<<<\n");
		String args = conf.getProperty("multirun.args");
		if (k == 1) {
			String target_args = Integer.toString(k);
			if (args != null) {
				target_args = target_args + "," + args;
			}
			conf.setProperty("target.args", target_args);
			JPF jpf = new JPF(conf);

			try {
				jpf.run();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				// Read the input file generated from the previous run
				// Each line of the input file denote an observable
				// together with the low input that leads to that observable
				// An example for a line in the input file is as bellow:
				// "1:2:3@3:4#5:6#7:8", which means 
				// + in the first run, the low input is the array [3,4] and the output is 1
				// + in the second run, the low input is the array [4,5] and the output is 2
				// + in the third run, the low input is the array [7,8] and the output is 3
				// the name of the input file will have the form: runK.txt (where K is the id of the run)
				String inputFileName = tmpDir + "/run" + (k - 1) + ".txt";
				// Open the file
				FileInputStream fstream = new FileInputStream(inputFileName);
				BufferedReader br = new BufferedReader(new InputStreamReader(fstream));

				String strLine;
				while ((strLine = br.readLine()) != null) {
					String target_args = k + "," + strLine;
					// Pass the line to the program as argument
					// The program under test needs to parse this argument
					conf.setProperty("target.args", target_args);
					JPF jpf = new JPF(conf);
					try {
						jpf.run();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}

				//Close the input stream
				br.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static void quantify() {
		String num_run = conf.getProperty("multirun.num_run");
		if (num_run == null) {
			System.out
					.println(">>>>> Configuration error: number of run is required for multi-run analysis");
			return;
		}

		int k;
		try {
			k = Integer.parseInt(num_run);
		} catch (NumberFormatException e) {
			System.out
					.println(">>>>> Configuration error: number of run is incorrect");
			e.printStackTrace();
			return;
		}

		assert (k > 0);

		// synthesize the attack step by step until the k-th execution
		for (int i = 1; i <= k; i++) {
			synthesizeSingleRunAttack(i);
			displayResult();
		}
	}
	
	static void displayResult(){
		try {
			String inputFileName = tmpDir + "/time.txt";
			// Open the file
			FileInputStream fstream = new FileInputStream(inputFileName);
			BufferedReader br = new BufferedReader(new InputStreamReader(fstream));

			String strLine;
			long spfTime = 0;
			long z3Time = 0;
			while ((strLine = br.readLine()) != null) {
				String[] tokens = strLine.split("#");
				spfTime += Long.parseLong(tokens[0]);
				z3Time += Long.parseLong(tokens[1]);
			}
			float spfTimeInSecond = (float) spfTime / 1000;
			float z3TimeInSecond = (float) z3Time / 1000;
			System.out.println(">>>>> SPF time is " + spfTimeInSecond + " seconds" );
			System.out.println(">>>>> z3 time is " + z3TimeInSecond + " seconds" );
			//Close the input stream
			br.close();
			
			// TODO: why do this???
			// clear the content of time for the next run
			// PrintWriter pw = new PrintWriter(inputFileName);
			// pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
