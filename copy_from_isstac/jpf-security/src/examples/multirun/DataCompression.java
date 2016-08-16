package multirun;

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
public class DataCompression {

	static int run;
	
	static int SIZE;

	static boolean DEBUG = false;
	
	static boolean greedy = true;
	
	static {
		// Hack for test: initialize the bounds on the secret from .jpf file
		String line = null;

		try {

			FileInputStream fstream = new FileInputStream(
					"src/examples/multirun/DataCompression.jpf");
			BufferedReader br = new BufferedReader(new InputStreamReader(
					fstream));

			line = br.readLine();

			while (line != null) {

				if (line.contains("sidechannel.input_size") && line.trim().charAt(0) != '#') {
					String value = line.split("=")[1].trim();
					SIZE = Integer.parseInt(value);
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
		}
	}

	public static int compress(int[] h, int[] l) {

		int i;
		for (i = 0; i < SIZE; i++) {
			if (h[i] != l[i])
				return i;
		}
		return i;
	}
	
	/*
	 * driver to test the program SIZE is the size of the array,
	 * and (run + 1) is the number of executions
	 */
	public static void testFull() {

		int[] h = new int[SIZE];
		int[] len = new int[run];
		int[][] l = new int[run][SIZE];

		int i, j;
		for (j = 0; j < SIZE; j++) {
			h[j] = Debug.makeSymbolicInteger("h" + j);
		}

		for (i = 0; i < run; i++) {
			for (j = 0; j < SIZE; j++) {
				l[i][j] = Debug.makeSymbolicInteger("l" + i + "_" + j);
			}
		}

		System.out.print("Cost ");
		for (i = 0; i < run; i++) {
			len[i] = compress(h, l[i]);
			Observable.add(len[i]);
			System.out.print(len[i] + " ");
		}
		System.out.print("\n");

		// System.out.println(Debug.getPC_prefix_notation());
	}

	/*
	 * run > 0
	 */
	public static void testGreedy() {

		int[] h = new int[SIZE];
		int[] len = new int[run];
		int[][] l = new int[run][SIZE];

		int i;

		if (run > 1) {
			// read the low inputs from previous run

			String strLine;

			// Read File Line By Line
			System.out.println();
			try {
				FileInputStream fstream = new FileInputStream("build/tmp/input.txt");
				BufferedReader br = new BufferedReader(new InputStreamReader(
						fstream));

				for (int j = 0; j < run - 1; j++) {

					strLine = br.readLine();
					if (strLine == null) {
						System.out.println(">>>>> Error reading inputs");
					} else {
						System.out.println(">>>>> Input in run " + (j + 1)
								+ " is " + strLine);
						String nums[] = strLine.split("\\s");
						for (i = 0; i < SIZE; i++) {
							l[j][i] = Integer.parseInt(nums[i]);
						}
					}
				}

				br.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		for (i = 0; i < SIZE; i++) {

			h[i] = Debug.makeSymbolicInteger("h" + i);

			l[run - 1][i] = Debug.makeSymbolicInteger("l" + run + "_" + i);
		}

		// self-composition
		for (i = 0; i < run; i++) {
			len[i] = compress(h, l[i]);
			Observable.add(len[i]);
		}
		
		// print out the cost
		if (DEBUG){
			 System.out.print("Cost ");
			for (i = 0; i < run; i++) {
				System.out.print(len[i] + " ");
			}
			System.out.print("\n");
			System.out.println(Debug.getPC_prefix_notation());
		}
	}

	public static void main(String[] args) {

		if (args.length < 1) {
			System.out.println("Need number of runs");
			System.exit(0);
		}
		run = Integer.parseInt(args[0]); // number of runs

		if (DEBUG) {
			System.out.println("Number of run is " + run);
		}
		if (greedy) {
			testGreedy();
		} else {
			testFull();
		}
	}
}
