package multirun.adaptive;

import gov.nasa.jpf.symbc.Debug;
import sidechannel.common.Constant;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Vector;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class AdaptiveAttackExample {
	
	protected static int SIZE_HIGH;
	protected static int SIZE_LOW;
	
	protected static byte[] initSecretInput(String[] args){
		assert (args.length >= 2);
		int run = Integer.parseInt(args[0]);
		return initSecretInput(run);
	}
	
	protected static byte[] initPublicInput(String[] args){
		assert (args.length >= 2);
		int run = Integer.parseInt(args[0]);
		boolean defend = args[1].equals("defend");
		return initPublicInput(run, defend);
	}
	
	private static byte[] initSecretInput(int run){

		byte[] h = new byte[SIZE_HIGH];
		for (int j = 0; j < SIZE_HIGH; j++) {
			h[j] = Debug.makeSymbolicByte("h" + j);
		}
		// if this is not the first run, load domain from file 
		if(run > 1){
			String fileName = "build/tmp/constraints" + --run + ".txt";
			System.out.println(">>>>> Load domain from " + fileName);
			String line = null;
			try {

				FileInputStream fstream = new FileInputStream(fileName);
				BufferedReader br = new BufferedReader(new InputStreamReader(
						fstream));

				line = br.readLine();
				boolean varDomain = false;
				
				while (line != null && !line.isEmpty()) {
					boolean PC = true;
					String[] conjuncts = line.split(" #AND# ");
					for(String conjunct : conjuncts){
						boolean c = false;
						String[] disjuncts = conjunct.split(" #OR# ");
						for(String disjunct : disjuncts){
							// example string: "[+1*h1<=+10, -1*h1=-8, +1*h0=+3]";
							// TODO: replace this manual parsing by regular expression
							String[] array1 = disjunct.substring(1, disjunct.length() -1).replaceAll(" ","").split(",");
							boolean d = true;
							for(String s1 : array1){
								// System.out.println("s1 is :" + s1);
								boolean isLEQ = s1.indexOf("<=") > 0;
								String[] array2 = s1.split("<=|=");
								String linearPolynomial = array2[0];
								Vector<Character> signs = new Vector<Character>();
								// add a dummy element, since the term start from 0
								signs.add('+');
								int i;
								for(i = 0; i < linearPolynomial.length(); i++){
									char sign = linearPolynomial.charAt(i);
									if(sign == '+' || sign == '-'){
										signs.add(sign);
									}
								}
								String[] array3 = array2[0].split("[+-]");
								int polynomial = 0;
								for(i = 1; i < array3.length; i++){
									String term = array3[i];
									String[] array4 = term.split("\\*");
									// all high variables have the form h1
									int coeff = Integer.parseInt(array4[0]);
									int index = Integer.parseInt(array4[1].substring(1));
									if(signs.get(i) == '+'){
										polynomial += coeff * h[index];
									} else {
										assert(signs.get(i) == '-');
										polynomial -= coeff * h[index];
									}
								}
								int val = Integer.parseInt(array2[1]);
								if(isLEQ){
									d = d && (polynomial <= val);
								} else {
									// is LE
									d = d && (polynomial == val);
								}
							}
							c = c || d;
						}
						PC = PC && c;
					}
					
					varDomain = varDomain || PC;
					line = br.readLine();
				}
				
				Debug.assume(varDomain);
				// TODO: why there is warning that there is no stream???
				br.close();
			} catch (Exception e) {
				System.out.println("Error is in >>>>>" + line + "<<<<<");
				e.printStackTrace();
			} 
		}
		return h;
	}
	
	private static byte[] initPublicInput(int run, boolean defend){
		byte[] l = new byte[SIZE_LOW];
		for (int j = 0; j < SIZE_LOW; j++) {
			// l[j] = Debug.makeSymbolicByte("l_" + j);
			l[j] = Debug.makeSymbolicByte("l" + Constant.SEPARATOR + j);
		}
		if (defend) {
			String fileName = "build/tmp/input" + run + ".txt";
			System.out.println(">>>>> Load public inputs from " + fileName);
			String line = null;
			try {
				// file contains multiple lines of the form, e.g.: 
				// l_0:1
				// l_1:3
				// ...
				FileInputStream fstream = new FileInputStream(fileName);
				BufferedReader br = new BufferedReader(new InputStreamReader(fstream));

				line = br.readLine();

				while (line != null && !line.isEmpty()) {
					String[] input = line.split(":");
					int index = Integer.parseInt(input[0].substring(input[0].indexOf(Constant.SEPARATOR)+1));
					byte val = Byte.parseByte(input[1]);
					l[index] = val;
					line = br.readLine();
				}
				// TODO: why there is warning that there is no stream???
				br.close();
			} catch (Exception e) {
				System.out.println("Error is in >>>>>" + line + "<<<<<");
				e.printStackTrace();
			}
		}
		return l;
	}
}
