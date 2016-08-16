package sidechannel.debug;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashSet;
import java.util.Iterator;

import sidechannel.util.ModelCounter;
import sidechannel.util.PathConditionUtils;
import sidechannel.util.SymbolicVariableCollector;
import gov.nasa.jpf.Config;
import gov.nasa.jpf.annotation.MJI;
import gov.nasa.jpf.symbc.numeric.PCChoiceGenerator;
import gov.nasa.jpf.symbc.numeric.PathCondition;
import gov.nasa.jpf.vm.ChoiceGenerator;
import gov.nasa.jpf.vm.MJIEnv;
import gov.nasa.jpf.vm.NativePeer;
import gov.nasa.jpf.vm.VM;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class JPF_sidechannel_debug_PathPrinter extends NativePeer {
	
	static SymbolicVariableCollector collector = null;

	@MJI
	public static void printPathSize____V(MJIEnv env, int objRef){
		VM vm = env.getVM();
		ChoiceGenerator<?> cg = vm.getChoiceGenerator();
		PathCondition pc = null;

		if (!(cg instanceof PCChoiceGenerator)) {
			ChoiceGenerator<?> prev_cg = cg.getPreviousChoiceGenerator();
			while (!((prev_cg == null) || (prev_cg instanceof PCChoiceGenerator))) {
				prev_cg = prev_cg.getPreviousChoiceGenerator();
			}
			cg = prev_cg;
		}

		if ((cg instanceof PCChoiceGenerator) && cg != null) {
			pc = ((PCChoiceGenerator) cg).getCurrentPC();
		}
		
		if(pc == null){
			System.out.println("PC is null");
			return;
		}
		
		HashSet<String> setOfSymVar = new HashSet<String>();
		collector = new SymbolicVariableCollector(setOfSymVar);
		String strPC = PathConditionUtils.cleanExpr(pc.header.toString());
		collector.collectVariables(pc);
		Config conf = vm.getConfig();
		createUserProfile____V(env, objRef);
		ModelCounter counter = new ModelCounter(conf);
		System.out.println("\n=====");
		System.out.println(strPC);
		System.out.println(">>>>> The number of model is: "
				+ counter.countSinglePath(strPC).toString());
		System.out.println("=====\n");
	}
	
	private static void createUserProfile____V(MJIEnv env, int objRef) {
		VM vm = env.getVM();
		Config conf = vm.getConfig();
		StringBuilder sb = new StringBuilder();
		sb.append("domain{\n");

		int MIN = Integer.parseInt(conf.getProperty("symbolic.min_int", String.valueOf(Integer.MIN_VALUE)));
		int MAX = Integer.parseInt(conf.getProperty("symbolic.max_int", String.valueOf(Integer.MAX_VALUE)));

		Iterator<String> iter = collector.getListOfVariables().iterator();
		while (iter.hasNext()) {
			String var = iter.next();
			sb.append("\t" + var + " : " + MIN + "," + MAX + ";\n");
		}

		sb.append("};\n\n");
		sb.append("usageProfile{\n\t");

		iter = collector.getListOfVariables().iterator();
		int count = 0;
		int size = collector.size();
		while (iter.hasNext()){
			String var = iter.next();
			sb.append(var + "==" + var);
			count++;
			if (count < size)
				sb.append(" && ");
			
		}
		sb.append(" : 100/100;\n};");
		
		String tmpDir = conf.getProperty("symbolic.reliability.tmpDir");
		String target = conf.getProperty("target");
		String upFile = tmpDir + "/" + target + ".up";
		Writer writer = null;

		try {
			writer = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(upFile), "utf-8"));
			writer.write(sb.toString());
			conf.setProperty("symbolic.reliability.problemSettings", upFile);
		} catch (IOException ex) {
			// report
		} finally {
			try {
				writer.close();
			} catch (Exception ex) {
			}
		}
	}
	
}
