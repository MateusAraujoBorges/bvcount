package sidechannel;

import gov.nasa.jpf.symbc.Debug;

/**
 * Pasquale's POPL paper example
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class HighLow {

	public static int test(int high[], int low){
		int count = 0;
		if (low == 5) {
			for(int i = 0; i < high.length; i++){
				count++;
				if (high[i] != low){
					
					return count;
				}
			}
			
		}
		else if (low==3) {
			for(int i = 0; i < high.length; i++){
				count++;
				if (high[0] != low){
		
					return count;
				}
			}
		}
		else {
			low = 0;
		}
		return count;
	}
	
	public static void main (String args[]){
		int k = 5;
		int SIZE  = 5;
		int[][] highArray = new int[k][SIZE];
		int[] lowArray = new int[k];
		
		// assumptions that the program can make k - 1 different output.
		for(int i = 0; i < k -1; i++){
			for(int j = i+1; j < k; j++){
				Debug.assume(test(highArray[i],lowArray[i]) != test(highArray[j],lowArray[j])); 
			}
		}
		
		for(int i = 0; i < k -1; i++){
			assert(test(highArray[k -1],lowArray[k - 1]) != test(highArray[i],lowArray[i])); 
		}
		
		
		HighLow hl = new HighLow();
		int[] high = new int[] {1,2,3,4};
	
		hl.test(high,0);
		System.out.println("PC " + Debug.getSolvedPC());
	}
}
