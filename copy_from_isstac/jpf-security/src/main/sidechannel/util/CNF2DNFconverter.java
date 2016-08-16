package sidechannel.util;

import java.util.HashSet;
import java.util.Vector;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 * This class provides a way to iterate through a two-dimension array,
 * It is mainly used to convert from CNF to DNF.
 * We will not handle cases like null or empty vector in the array.
 * The method checkValidity will check the requirement for this class,
 * However, for the sake of performance, it should not be used.
 * Instead, the user should be responsible to pass a valid 2-dimension array.
 */
public class CNF2DNFconverter {
	
	private int index;

	private Vector<String>[] data;
	
	private String[] current;
	
	public CNF2DNFconverter(HashSet<String>[] input) {
		this.data = (Vector<String>[]) new Vector[input.length];
		// checkValidity();
		index = 0;
		current = new String[data.length];
		normalize(input);
	}
	
	private void normalize(HashSet<String>[] input){
		int N = 1;
		int i;
		for(i = 0; i < input.length; i++){
			N *= input[i].size();			
		}
		for(i = 0; i < input.length; i++){
			int K = N / input[i].size();
			data[i] = new Vector<String>();
			for(int j = 0; j < K; j++ ){
				data[i].addAll(input[i]);
			}
		}
		// at this point, all the vectors have length N
	}
	
	public void reset(){
		index = 0;
	}
	
	public String[] next(){
		if(!hasNext()){
			return null;
		}
		for(int i = 0; i < data.length; i++){
			current[i] = data[i].elementAt(index);
		}
		++index;
		return current;
	}
	
	private void checkValidity(){
		for(Vector<String> vector : data){
			if (vector == null || vector.isEmpty()){
				assert false;
			}
		}
	}

	public boolean hasNext() {
		return index < data[0].size();
	}
	
	public void dumpContent(){
		System.out.println("----------------- CNF2DNF converter content -----------------");
		for(int i = 0; i < data[0].size(); i++){
			StringBuilder sb = new StringBuilder();
			for(int j = 0; j < data.length; j++){
				sb.append(data[j].elementAt(i) + " &&\n");
			}
			sb.delete(sb.length() - 3, sb.length());
			System.out.println(sb.toString());
			System.out.println("---------------------------");
		}
		System.out.println("---------------------------------------------------------");
	}
}
