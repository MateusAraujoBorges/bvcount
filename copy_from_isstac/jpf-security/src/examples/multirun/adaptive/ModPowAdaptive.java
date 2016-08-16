package multirun.adaptive;

import gov.nasa.jpf.symbc.Debug;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import sidechannel.multirun.Observable;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class ModPowAdaptive {

	static int run;

	static boolean DEBUG = true;

	static long count = 0;

	static final int MAX_HIGH, MIN_HIGH, MODULO;

	static final String MAX_KEY = new String("sidechannel.max_high");
	static final String MIN_KEY = new String ("sidechannel.min_high");
	static final String MODULO_KEY = new String ("symbolic.max_int");

	static boolean foundMax = false;
	static boolean foundMin = false;
	static boolean foundModulo = false;
	
	static boolean greedy = true;
	
	static int[] prevObs;
	static int[] prevLow;
	
	static {
		// Hack for test: initialize the bounds on the secret from .jpf file
		String line = null;
		int max = Integer.MAX_VALUE, min = Integer.MIN_VALUE;
		int modulo = Integer.MAX_VALUE;

		try {
			
			FileInputStream fstream = new FileInputStream(
					"src/examples/multirun/adaptive/SimplifiedRSAadaptive.jpf");
			BufferedReader br = new BufferedReader(new InputStreamReader(
					fstream));

			line = br.readLine();

			while (line != null) {

				if (!foundMax) {
					if (line.contains(MAX_KEY) && line.trim().charAt(0) != '#') {
						String value = line.split("=")[1].trim();
						max = Integer.parseInt(value);
						foundMax = true;
					}
				}

				if (!foundMin) {
					if (line.contains(MIN_KEY) && line.trim().charAt(0) != '#') {
						String value = line.split("=")[1].trim();
						min = Integer.parseInt(value);
						foundMin = true;
					}
				}
				
				if (!foundModulo) {
					if (line.contains(MODULO_KEY) && line.trim().charAt(0) != '#') {
						String value = line.split("=")[1].trim();
						modulo = Integer.parseInt(value);
						foundModulo = true;
					}
				}

				if (line.contains("greedy") && line.trim().charAt(0) != '#') {
					String value = line.split("=")[1].trim();
					if (value.equals("false")){
						greedy = false;
					}
				}
				
				line = br.readLine();
			}
			br.close();
		} catch (Exception e) {
			System.out.println("Error is in >>>>>" + line + "<<<<<");
			e.printStackTrace();
		} finally {
			MAX_HIGH = max;
			MIN_HIGH = min;
			MODULO = modulo;
			System.out.println(">>>>> MAX_HIGH is " + MAX_HIGH + " and MIN_HIGH is " + MIN_HIGH);
			System.out.println(">>>>> MODULO is " + MODULO);
		}
	}

	static int modPowFastKocherReduction(int num, int e, int m) { 
		// computes num^e mod m

		int s = 1;
		int y = num;
		int res = 0;
		count = 0;

		Debug.assume(e <= MAX_HIGH && e >= MIN_HIGH);
		
		int bound = (int) (Math.log(MAX_HIGH + 1) / Math.log(2));
		
        int j=0;
		while (e > 0) {
			if (e % 2 == 1) {
				// res = (s * y) % m;
				// reduction:
				int tmp = s * y;
				if (tmp > m) {
					tmp = tmp - m;
					count++;
					// System.out.println("reduction");
				}
				res = tmp % m;
				count++;
			} else {
				res = s;
				count++;
			}
			s = (res * res) % m; // squaring the base
			e /= 2;
			count++;
			j++;
			
			if(j==bound) break;
		}
		// System.out.println("Cost is " + count);
		return res;
	}

	public static void testGreedyAdaptive() {

		int h;
		int[] l = new int[run];

		long[] obs = new long[run];
		
		int[] encrypt = new int[run];

		int i;

		if (run > 1) {
			for (int j = 0; j < run - 1; j++) {
				l[j] = prevLow[j];
			}
		}

		h = Debug.makeSymbolicInteger("h");

		// format lx_y: x is the index of the run, y is the index of the element
		// since the input is not an array, the index is always 0
		// this fits with the parser in the GreedyQuantifier

		// l[0] = 13;
		l[run - 1] = Debug.makeSymbolicInteger("l" + (run - 1) + "_0");
		/*
		for (i = 0; i < run - 1; i++){
			Debug.assume(l[run - 1] != l[i]);
		}
		//*/
		// l[0] = 2;

		// self-composition
		for (i = 0; i < run; i++) {
			encrypt[i] = modPowFastKocherReduction(l[i], h, MODULO);
			obs[i] = count;
			if(i < run - 1){
				Debug.assume(obs[i] == prevObs[i]);
			}
			Observable.add(obs[i]);
		}
	}

	public static void main(String[] args) {
		
		if (args.length < 1) {
			System.out.println("Need number of runs");
			System.exit(0);
		}

		run = Integer.parseInt(args[0]); // number of runs
		
		if (run > 1){
			prevObs = new int[run - 1];
			prevLow = new int[run - 1];
			if (args.length < 2){
				System.out.println("Need input and output from the previous runs");
				System.exit(0);
			}
			// At this point, there are two arguments
			String strLine = args[1];
			System.out.println("\n\n>>>>> Line is " + strLine);
			// Read File Line By Line
			try {
				String[] token = strLine.split("@");
				// read the costs
				String[] costs = token[0].split(":");
				for (int i = 0; i < costs.length; i++){
					prevObs[i] = Integer.parseInt(costs[i]);
				}
				// read the input, in this program the low input is not an array
				String[] lowInputs = token[1].split("#");
				for (int i = 0; i < lowInputs.length; i++){
					prevLow[i] = Integer.parseInt(lowInputs[i]);
				}
			} catch (NumberFormatException e) {
				System.out.println(">>>>> This is not number >>>>>" + strLine.trim() + "<<<<<");
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		testGreedyAdaptive();
	}
}