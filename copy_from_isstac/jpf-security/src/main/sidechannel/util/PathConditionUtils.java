package sidechannel.util;

import gov.nasa.jpf.symbc.numeric.Comparator;
import gov.nasa.jpf.symbc.numeric.Constraint;
import gov.nasa.jpf.symbc.numeric.IntegerExpression;
import gov.nasa.jpf.symbc.numeric.PathCondition;

/**
 * Some utilities to process path conditions
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class PathConditionUtils {
	
	public static String cleanExpr(String str) {

		String tmp1 = str.replaceAll("\\[(.*?)\\]", ""); // remove e.g.
															// [-1000000]
		String tmp2 = tmp1.replaceAll("CONST_", "");

		return tmp2;
	}
	
	public static void appendHead(PathCondition pc, Constraint c){
		IntegerExpression left = (IntegerExpression) c.getLeft();
		IntegerExpression right = (IntegerExpression) c.getRight();
		Comparator comp = c.getComparator();
		pc._addDet(comp,left,right);
	}
}
