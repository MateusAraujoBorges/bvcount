package sidechannel.multirun;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.concurrent.TimeUnit;

import sidechannel.util.Environment;

/**
 * A multi-run quantifier using greedy strategy
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class GreedyQuantifier {

	public static Config conf;
	static int inputSize;
	static boolean verbose;
	
	public static void start(Config config, String[] args){
				
		conf = config;
		
		// delete input file
		String input = conf.getProperty("greedy.input","build/tmp/input.txt");
		File file = new File(input);
		try {
			Files.deleteIfExists(file.toPath());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// verbose = conf.getProperty("sidechannel.verbose","false").trim().equals("true");
		verbose = true;
		
		// find z3
		String z3 = Environment.find("z3");
		if (z3 == null){
			return;
		}
		conf.setProperty("z3", z3);
			    
		quantify();
	}
	
	public static void synthesizeSingleRunAttack(int k) {

		System.out.println("\n\n>>>>>>>>>>>>>>> Result for run " + k + " <<<<<<<<<<<<<<<\n");
		long t = 0;
        long t1 = System.nanoTime();
		String args = conf.getProperty("multirun.args");

		String target_args = Integer.toString(k);
		if (args != null) {
			target_args = target_args + "," + args;
		}
		
		conf.setProperty("target.args", target_args);
		
		JPF jpf = new JPF(conf);
		
		// MaximizingChannelCapacityListener l = new MaximizingChannelCapacityListener(conf,jpf);
		// jpf.addListener(l);
		
		try {
			jpf.run();
		} catch (Exception e) {
			e.printStackTrace();
		}
		t = System.nanoTime()-t1;
        System.out.println(">>>>> SPF time of run " + k +  " is " + TimeUnit.NANOSECONDS.toMillis(t) + " ms");
		
		// call z3
        t1 = System.nanoTime();
		try {
			String line;
			String z3 = conf.getProperty("z3");
			String output = conf.getProperty("greedy.output","build/tmp/outputZ3bitvec.smt2");
			Process p = Runtime.getRuntime().exec(
					z3 + " " + output);
			
			BufferedReader input = new BufferedReader(
					new InputStreamReader(p.getInputStream()));
			// output z3 result
			// System.out.println("\n>>> Begin Z3 output\n");

			int[] lowInput = new int[inputSize];

			StringBuilder sbOut = new StringBuilder("\n===== MAX-SMT OUTPUT =====\n");
			while ((line = input.readLine()) != null) {
				if(verbose){
					sbOut.append(line + "\n");
				}
				/*
				// String symbol = " |-> "; // this is output in old version of z3
				String symbol = "(objectives";
				if(line.indexOf(symbol) != -1){
					line = input.readLine();
					if(verbose){
						sbOut.append(line + "\n");
					}
					int count = Integer.parseInt(line.substring(3,line.length()-1));
					System.out.println(">>>>> Minimum number of unsat clauses: " + count);
					continue;
				}
				//*/
				int tmp = line.indexOf("((");
				if (tmp != -1) {
					if(line.charAt(tmp+2) == 'l'){
						// value of low input
						line = line.substring(2, line.length() - 2);
						// break if no need output
						String token[] = line.split("\\s");
						int pos = token[0].indexOf("_");
						int index = Integer.parseInt(token[0]
								.substring(pos + 1));
						// convert hexadecimal number begin with #x
						lowInput[index] = Integer.parseInt(
								token[1].substring(2), 16);
					}
				}
			}
			// output z3 result
			// System.out.println("\n>>> End Z3 output\n");
			t = System.nanoTime()-t1;
	        System.out.println(">>>>> Z3 time of run " + k +  " is " + TimeUnit.NANOSECONDS.toMillis(t) + " ms");
			if(verbose){
				sbOut.append("===========================");
				System.out.println(sbOut.toString());
			}
			
			StringBuilder sb = new StringBuilder();
			for (int j = 0; j < inputSize; j++) {
				sb.append(lowInput[j] + " ");
			}
			sb.append("\n");

			String inputFile = conf.getProperty("greedy.input","build/tmp/input.txt");
			File file = new File(inputFile);
			if (!file.exists()) {
				file.createNewFile();
			}

			Files.write(Paths.get(inputFile), sb.toString().getBytes(),
					StandardOpenOption.APPEND);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void quantify(){
		String num_run = conf.getProperty("multirun.num_run");
		if (num_run == null) {
			System.out.println(">>>>> Configuration error: number of run is required for multi-run analysis");
			return;
		}
		
		int k;
		try{
			k = Integer.parseInt(num_run);
		}
		catch(NumberFormatException e){
			System.out.println(">>>>> Configuration error: number of run is incorrect");
			e.printStackTrace();
			return;
		}
		
		assert (k > 0);
		
		//
		String str = conf.getProperty("sidechannel.input_size","1");
		int d = 1;
		try{
			d = Integer.parseInt(str);
		}
		catch(NumberFormatException e){
			System.out.println(">>>>> Configuration error: input size is incorrect");
			e.printStackTrace();
			return;
		}
		inputSize = d;
		
		System.out.println("\n>>>>> Input size is " + d);		
		
		// synthesize the attack step by step until the k-th execution
		for (int i = 1; i <= k; i++) {
            synthesizeSingleRunAttack(i);
		}
	}
}
