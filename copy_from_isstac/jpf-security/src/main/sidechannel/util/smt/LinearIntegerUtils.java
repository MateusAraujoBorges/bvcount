package sidechannel.util.smt;

import gov.nasa.jpf.Config;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import modelcounting.domain.Constraint;
import modelcounting.domain.Problem;
import sidechannel.util.SymbolicVariableCollector;

import com.google.common.cache.LoadingCache;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class LinearIntegerUtils extends SMTLIB2Utils{
	
	public LinearIntegerUtils(Config conf){
		super(conf);
	}

	private HashMap<String,Long> generateMaxSmtForAdaptiveAttackWithDomain(Config conf, HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector, LoadingCache<Problem, Set<Problem>> omegaCache){
		
		if(omegaCache == null){
			return generateMaxSmtForAdaptiveAttack(obsrv, collector);
		}
		
		int count = 1;
		StringBuilder sb = new StringBuilder();
		StringBuilder sbMax = new StringBuilder();
		HashSet<String> highVars = new HashSet<String>();
		HashSet<String> PCs = new HashSet<String>();
		HashMap<String,Long> map = new HashMap<String,Long>();

		// for (HashSet<String> setOfPC : obsrv.values()) {
		for(Map.Entry<Long, HashSet<String>> entry : obsrv.entrySet()){
			HashSet<String> setOfPC = entry.getValue();
			long cost = entry.getKey();
			Vector<Integer> assertion = new Vector<Integer>();
			for (String pc : setOfPC) {
				// remove the prefix, e.g. "constraint # = 12"
				HashSet<String> vars = new HashSet<String>();
				int pos = pc.indexOf("(");
				if(pos == -1){
					System.out.println(pc);
				}
				pc = pc.substring(pos);
				
				String PC = "PC" + count;
				PCs.add(PC);
				String DOMAIN = "DOMAIN" + count;
				sb.append("\n(declare-fun " + PC +" () Bool)\n");
				sb.append("(declare-fun DOMAIN" + count + "() Bool)\n\n");
				sb.append("(assert (= " + PC + " (and " + DOMAIN + " ");
				String[] tmp = pc.split(" ");

				for (String str : tmp) {
					if (str.length() <= 0) {
						continue;
					}

					// TODO: review
					// str = signedConvert(str);

					// rename high variable
					if (str.charAt(0) == 'h') {
						// TODO: clean more efficiently with regular expression						
						int i = str.indexOf(")");
						String highVar;
						if (i > 0){
							highVar = str.substring(0,i);
							vars.add(highVar);
							highVar += count;
							str = highVar + str.substring(i);
						}else{
							vars.add(str);
							highVar = str + count;
							str = highVar;
						}
						highVars.add(highVar);
					}
					sb.append(str);
					sb.append(" ");
					// add to the variable lists
				}

				sb.append(")))\n\n");
				sb.append(extractDomains(omegaCache, count, vars));
				assertion.add(count);
				map.put(PC, cost);
				count++;
			}
			// create assertion
			if(assertion.size() == 1){
				sbMax.append("(assert-soft PC" + assertion.get(0) + " :weight 1)\n");
				// Weight 1 is default
				// sbMax.append("(assert-soft PC" + assertion.get(0) + ")\n");
			} else if (assertion.size() > 1){
				sbMax.append("(assert-soft (or");
				for(int i : assertion){
					sbMax.append(" PC" + i);
				}
				sbMax.append(") :weight 1)\n");
				// sbMax.append("))\n");
			}
		}
		
		String strMin = conf.getProperty("symbolic.min_int");
		String strMax = conf.getProperty("symbolic.max_int");
		int min = 0, max = 10000;
		if(strMin != null){
			min = Integer.parseInt(strMin);
		}
		if (strMax != null){
			max = Integer.parseInt(strMax);
		}
		
		String strMinHigh = conf.getProperty("sidechannel.min_high");
		String strMaxHigh = conf.getProperty("sidechannel.max_high");
		int minHigh = 0, maxHigh = 10000;
		if(strMinHigh != null){
			minHigh = Integer.parseInt(strMinHigh);
		}
		if (strMaxHigh != null){
			maxHigh = Integer.parseInt(strMaxHigh);
		}

		StringBuilder sbVar = new StringBuilder();
		// define high inputs
		for (String var : highVars) {
			sbVar.append("(declare-fun " + var + " () Int)\n");
			if (strMinHigh != null){
				sbVar.append("(assert (>= " + var + " " + minHigh  + ") )\n");
			}
			if (strMaxHigh != null){
				sbVar.append("(assert (<= " + var + " " + maxHigh  + ") )\n");
			}
			sbVar.append("\n");
		}
		// define low inputs
		for (String var : collector.getListOfVariables()) {
			if (var.charAt(0) == 'l') {
				sbVar.append("(declare-fun " + var + " () Int)\n");
				if (strMin != null){
					sbVar.append("(assert (>= " + var + " " + min + ") )\n");
				}
				if (strMax != null){
					sbVar.append("(assert (<= " + var + " " + max + ") )\n");
				}
				sbVar.append("\n");
			}
		}

		try {
			String fileName = conf.getProperty("greedy.output","build/tmp/tmp.smt2");
			PrintWriter writer = new PrintWriter(fileName);
			writer.println(configSMTengine());
			writer.println(sbVar.toString() + "\n");
			writer.println(sb.toString() + "\n\n");
			writer.println(sbMax.toString() + "\n\n");
			writer.println("(check-sat)\n");
			// writer.println("(get-model)\n");
			//*
			for (String var : collector.getListOfVariables()) {
				if (var.charAt(0) == 'l') {
					writer.println("(get-value ( " + var + " ) )\n");
				}
			}
			for (String PC : PCs) {
				writer.println("(get-value ( " + PC + " ) )\n");
			}
			//*/
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public HashMap<String,Long> generateMaxSmtForAdaptiveAttack(HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector){
		
		int count = 1;
		StringBuilder sb = new StringBuilder();
		StringBuilder sbMax = new StringBuilder();
		HashSet<String> highVars = new HashSet<String>();
		HashSet<String> PCs = new HashSet<String>();
		HashMap<String,Long> map = new HashMap<String,Long>();

		// for (HashSet<String> setOfPC : obsrv.values()) {
		for(Map.Entry<Long, HashSet<String>> entry : obsrv.entrySet()){
			HashSet<String> setOfPC = entry.getValue();
			long cost = entry.getKey();
			Vector<Integer> assertion = new Vector<Integer>();
			for (String pc : setOfPC) {
				// remove the prefix, e.g. "constraint # = 12"
				int pos = pc.indexOf("(");
				if(pos == -1){
					System.out.println(pc);
				}
				pc = pc.substring(pos);
				
				String PC = "PC" + count;
				PCs.add(PC);
				sb.append("(declare-fun " + PC +" () Bool)\n");
				sb.append("(assert (= " + PC + " ");
				String[] tmp = pc.split(" ");

				for (String str : tmp) {
					if (str.length() <= 0) {
						continue;
					}

					// TODO: review
					// str = signedConvert(str);

					// rename high variable
					if (str.charAt(0) == 'h') {
						// TODO: clean more efficiently with regular expression						
						int i = str.indexOf(")");
						String highVar;
						if (i > 0){
							highVar = str.substring(0,i) + count;
							str = highVar + str.substring(i);
						}else{
							highVar = str + count;
							str = highVar;
						}
						highVars.add(highVar);
					}
					sb.append(str);
					sb.append(" ");
					// add to the variable lists
				}

				sb.append("))\n\n");
				assertion.add(count);
				map.put(PC, cost);
				count++;
			}
			// create assertion
			if(assertion.size() == 1){
				sbMax.append("(assert-soft PC" + assertion.get(0) + " :weight 1)\n");
				// Weight 1 is default
				// sbMax.append("(assert-soft PC" + assertion.get(0) + ")\n");
			} else if (assertion.size() > 1){
				sbMax.append("(assert-soft (or");
				for(int i : assertion){
					sbMax.append(" PC" + i);
				}
				sbMax.append(") :weight 1)\n");
				// sbMax.append("))\n");
			}
		}
		
		String strMin = conf.getProperty("symbolic.min_int");
		String strMax = conf.getProperty("symbolic.max_int");
		int min = 0, max = 10000;
		if(strMin != null){
			min = Integer.parseInt(strMin);
		}
		if (strMax != null){
			max = Integer.parseInt(strMax);
		}
		
		String strMinHigh = conf.getProperty("sidechannel.min_high");
		String strMaxHigh = conf.getProperty("sidechannel.max_high");
		int minHigh = 0, maxHigh = 10000;
		if(strMinHigh != null){
			minHigh = Integer.parseInt(strMinHigh);
		}
		if (strMaxHigh != null){
			maxHigh = Integer.parseInt(strMaxHigh);
		}

		StringBuilder sbVar = new StringBuilder();
		// define high inputs
		for (String var : highVars) {
			sbVar.append("(declare-fun " + var + " () Int)\n");
			if (strMinHigh != null){
				sbVar.append("(assert (>= " + var + " " + minHigh  + ") )\n");
			}
			if (strMaxHigh != null){
				sbVar.append("(assert (<= " + var + " " + maxHigh  + ") )\n");
			}
			sbVar.append("\n");
		}
		// define low inputs
		for (String var : collector.getListOfVariables()) {
			if (var.charAt(0) == 'l') {
				sbVar.append("(declare-fun " + var + " () Int)\n");
				if (strMin != null){
					sbVar.append("(assert (>= " + var + " " + min + ") )\n");
				}
				if (strMax != null){
					sbVar.append("(assert (<= " + var + " " + max + ") )\n");
				}
				sbVar.append("\n");
			}
		}
		try {
			String fileName = conf.getProperty("greedy.output","build/tmp/outputZ3bitvec.smt2");
			PrintWriter writer = new PrintWriter(fileName);
			writer.println(configSMTengine());
			writer.println(sbVar.toString() + "\n");
			writer.println(sb.toString() + "\n\n");
			writer.println(sbMax.toString() + "\n\n");
			writer.println("(check-sat)\n");
			// writer.println("(get-model)\n");
			//*
			for (String var : collector.getListOfVariables()) {
				if (var.charAt(0) == 'l') {
					writer.println("(get-value ( " + var + " ) )\n");
				}
			}
			for (String PC : PCs) {
				writer.println("(get-value ( " + PC + " ) )\n");
			}
			//*/
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	@Override
	protected String convertConstraint(Constraint c) {
		return c.toSmtlib2LinearInteger();
	}

	@Override
	public HashMap<String,Long> generateMaxSmtForAdaptiveAttackWithDomain(HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector, LoadingCache<Problem, Set<Problem>> omegaCache){
		
		if(omegaCache == null){
			return generateMaxSmtForAdaptiveAttack(obsrv, collector);
		}
		
		int count = 1;
		StringBuilder sb = new StringBuilder();
		StringBuilder sbMax = new StringBuilder();
		HashSet<String> highVars = new HashSet<String>();
		HashSet<String> PCs = new HashSet<String>();
		HashMap<String,Long> map = new HashMap<String,Long>();

		// for (HashSet<String> setOfPC : obsrv.values()) {
		for(Map.Entry<Long, HashSet<String>> entry : obsrv.entrySet()){
			HashSet<String> setOfPC = entry.getValue();
			long cost = entry.getKey();
			Vector<Integer> assertion = new Vector<Integer>();
			for (String pc : setOfPC) {
				// remove the prefix, e.g. "constraint # = 12"
				HashSet<String> vars = new HashSet<String>();
				int pos = pc.indexOf("(");
				if(pos == -1){
					System.out.println(pc);
				}
				pc = pc.substring(pos);
				
				String PC = "PC" + count;
				PCs.add(PC);
				String DOMAIN = "DOMAIN" + count;
				sb.append("\n(declare-fun " + PC +" () Bool)\n");
				sb.append("(declare-fun DOMAIN" + count + "() Bool)\n\n");
				sb.append("(assert (= " + PC + " (and " + DOMAIN + " ");
				String[] tmp = pc.split(" ");

				for (String str : tmp) {
					if (str.length() <= 0) {
						continue;
					}

					// TODO: review
					// str = signedConvert(str);

					// rename high variable
					if (str.charAt(0) == 'h') {
						// TODO: clean more efficiently with regular expression						
						int i = str.indexOf(")");
						String highVar;
						if (i > 0){
							highVar = str.substring(0,i);
							vars.add(highVar);
							highVar += count;
							str = highVar + str.substring(i);
						}else{
							vars.add(str);
							highVar = str + count;
							str = highVar;
						}
						highVars.add(highVar);
					}
					sb.append(str);
					sb.append(" ");
					// add to the variable lists
				}

				sb.append(")))\n\n");
				sb.append(extractDomains(omegaCache, count, vars));
				assertion.add(count);
				map.put(PC, cost);
				count++;
			}
			// create assertion
			if(assertion.size() == 1){
				sbMax.append("(assert-soft PC" + assertion.get(0) + " :weight 1)\n");
				// Weight 1 is default
				// sbMax.append("(assert-soft PC" + assertion.get(0) + ")\n");
			} else if (assertion.size() > 1){
				sbMax.append("(assert-soft (or");
				for(int i : assertion){
					sbMax.append(" PC" + i);
				}
				// sbMax.append(") :weight 1)\n");
				sbMax.append(") :weight 1)\n");
			}
		}
		
		String strMin = conf.getProperty("symbolic.min_int");
		String strMax = conf.getProperty("symbolic.max_int");
		int min = 0, max = 10000;
		if(strMin != null){
			min = Integer.parseInt(strMin);
		}
		if (strMax != null){
			max = Integer.parseInt(strMax);
		}
		
		String strMinHigh = conf.getProperty("sidechannel.min_high");
		String strMaxHigh = conf.getProperty("sidechannel.max_high");
		int minHigh = 0, maxHigh = 10000;
		if(strMinHigh != null){
			minHigh = Integer.parseInt(strMinHigh);
		}
		if (strMaxHigh != null){
			maxHigh = Integer.parseInt(strMaxHigh);
		}

		StringBuilder sbVar = new StringBuilder();
		// define high inputs
		for (String var : highVars) {
			sbVar.append("(declare-fun " + var + " () Int)\n");
			if (strMinHigh != null){
				sbVar.append("(assert (>= " + var + " " + minHigh  + ") )\n");
			}
			if (strMaxHigh != null){
				sbVar.append("(assert (<= " + var + " " + maxHigh  + ") )\n");
			}
			sbVar.append("\n");
		}
		// define low inputs
		for (String var : collector.getListOfVariables()) {
			if (var.charAt(0) == 'l') {
				sbVar.append("(declare-fun " + var + " () Int)\n");
				if (strMin != null){
					sbVar.append("(assert (>= " + var + " " + min + ") )\n");
				}
				if (strMax != null){
					sbVar.append("(assert (<= " + var + " " + max + ") )\n");
				}
				sbVar.append("\n");
			}
		}

		try {
			String fileName = conf.getProperty("greedy.output","build/tmp/tmp.smt2");
			PrintWriter writer = new PrintWriter(fileName);
			writer.println(configSMTengine());
			writer.println(sbVar.toString() + "\n");
			writer.println(sb.toString() + "\n\n");
			writer.println(sbMax.toString() + "\n\n");
			writer.println("(check-sat)\n");
			// writer.println("(get-model)\n");
			//*
			for (String var : collector.getListOfVariables()) {
				if (var.charAt(0) == 'l') {
					writer.println("(get-value ( " + var + " ) )\n");
				}
			}
			for (String PC : PCs) {
				writer.println("(get-value ( " + PC + " ) )\n");
			}
			//*/
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public HashMap<String,Long> generateAllSmtForAdaptiveAttack(HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector){
		int count = 1;
		int count4Var = 1;
		StringBuilder sb = new StringBuilder();
		StringBuilder sbMax = new StringBuilder();
		HashSet<String> highVars = new HashSet<String>();
		HashSet<String> PCs = new HashSet<String>();
		HashMap<String,Long> map = new HashMap<String,Long>();
		ArrayList<String> impVar = new ArrayList<String>();

		int index = 0;
		// for (HashSet<String> setOfPC : obsrv.values()) {
		for(Map.Entry<Long, HashSet<String>> entry : obsrv.entrySet()){
			HashSet<String> setOfPC = entry.getValue();
			long cost = entry.getKey();
			Vector<Integer> assertion = new Vector<Integer>();
			for (String pc : setOfPC) {
				// remove the prefix, e.g. "constraint # = 12"
				int pos = pc.indexOf("(");
				if(pos == -1){
					System.out.println(pc);
				}
				pc = pc.substring(pos);
				
				String PC = "PC" + count;
				PCs.add(PC);
				sb.append("(declare-fun " + PC +" () Bool)\n");
				sb.append("(assert (= " + PC + " ");
				String[] tmp = pc.split(" ");

				for (String str : tmp) {
					if (str.length() <= 0) {
						continue;
					}

					// TODO: review
					// str = signedConvert(str);

					// rename high variable
					if (str.charAt(0) == 'h') {
						// TODO: clean more efficiently with regular expression						
						int i = str.indexOf(")");
						String highVar;
						if (i > 0){
							highVar = str.substring(0,i) + count4Var;
							str = highVar + str.substring(i);
						}else{
							highVar = str + count4Var;
							str = highVar;
						}
						highVars.add(highVar);
					}
					sb.append(str);
					sb.append(" ");
					// add to the variable lists
				}

				sb.append("))\n\n");
				assertion.add(count);
				map.put(PC, cost);
				count++;
			}
			count4Var++;
			// create assertion
			sb.append("(declare-fun OBS" + ++index +" () Bool)\n");
			if(assertion.size() == 1){
				sbMax.append("(assert (= OBS" + index + " PC" + assertion.get(0) + "))\n");
			} else if (assertion.size() > 1){
				sbMax.append("(assert (= OBS" + index +  " (or");
				for(int i : assertion){
					sbMax.append(" PC" + i);
				}
				sbMax.append(")))\n");
			}
			impVar.add("OBS" + index);
		}
		
		String strMin = conf.getProperty("symbolic.min_int");
		String strMax = conf.getProperty("symbolic.max_int");
		int min = 0, max = 10000;
		if(strMin != null){
			min = Integer.parseInt(strMin);
		}
		if (strMax != null){
			max = Integer.parseInt(strMax);
		}
		
		String strMinHigh = conf.getProperty("sidechannel.min_high");
		String strMaxHigh = conf.getProperty("sidechannel.max_high");
		int minHigh = 0, maxHigh = 10000;
		if(strMinHigh != null){
			minHigh = Integer.parseInt(strMinHigh);
		}
		if (strMaxHigh != null){
			maxHigh = Integer.parseInt(strMaxHigh);
		}

		StringBuilder sbVar = new StringBuilder();
		// define high inputs
		for (String var : highVars) {
			sbVar.append("(declare-fun " + var + " () Int)\n");
			if (strMinHigh != null){
				sbVar.append("(assert (>= " + var + " " + minHigh  + ") )\n");
			}
			if (strMaxHigh != null){
				sbVar.append("(assert (<= " + var + " " + maxHigh  + ") )\n");
			}
			sbVar.append("\n");
		}
		// define low inputs
		for (String var : collector.getListOfVariables()) {
			if (var.charAt(0) == 'l') {
				sbVar.append("(declare-fun " + var + " () Int)\n");
				if (strMin != null){
					sbVar.append("(assert (>= " + var + " " + min + ") )\n");
				}
				if (strMax != null){
					sbVar.append("(assert (<= " + var + " " + max + ") )\n");
				}
				sbVar.append("\n");
			}
		}
		try {
			String fileName = conf.getProperty("greedy.output","build/tmp/allsmtInt.smt2");
			PrintWriter writer = new PrintWriter(fileName);
			// writer.println(configSMTengine());
			writer.println(sbVar.toString() + "\n");
			writer.println(sb.toString() + "\n\n");
			writer.println(sbMax.toString() + "\n\n");
			writer.print("(check-allsat ( ");
			for(String var : impVar){
				writer.print(var + " ");
			}
			writer.println("))\n");
			// writer.println("(get-model)\n");
			//*
			writer.print("\n(allsat-relevant ( ");
			for (String var : collector.getListOfVariables()) {
				if (var.charAt(0) == 'l') {
					writer.print(var + " ");
				}
			}
			for (String PC : PCs) {
				writer.print(PC + " ");
			}
			writer.print("))");
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
}
