package multirun.adaptive;

import sidechannel.multirun.Observable;
import gov.nasa.jpf.symbc.Debug;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class PinCheck {

	int pin;
	
	PinCheck(int secret){
		pin = secret;
	}
	
	public int check(int input){
		if(pin == input){
			return 1;
		}
		return 0;
	}
	
	public static void main(String args[]){
		int secret = Debug.makeSymbolicInteger("h");
		PinCheck checker = new PinCheck(secret);
		int input = Debug.makeSymbolicInteger("l1_0");
		int cost = checker.check(input);
		Observable.add(cost);
	}
}
