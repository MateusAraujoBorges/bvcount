package sidechannel.multirun.adaptive.backup;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import modelcounting.domain.Constraint;
import modelcounting.domain.Problem;

import org.apache.commons.io.FileUtils;

import sidechannel.util.Environment;
import sidechannel.util.smt.BitVectorUtils;

import com.google.common.cache.LoadingCache;
import com.google.common.collect.ImmutableMap;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class AdaptiveAttackQuantifier {

	private static Config conf = null;
	private static LoadingCache<Problem, Set<Problem>> omegaCache = null;

	public static void start(Config config, String[] args) {

		conf = config;

		setupEnvironment();

		String adaptive = conf.getProperty("adaptive");
		assert(adaptive != null);
		
		if(adaptive.equals("normal")){
			adaptiveAttack();
		} else if(adaptive.equals("optimize")){
			optimizedAdaptiveAttack();
		} else{
			assert false;
		}
	}

	private static void adaptiveAttack() {

		int numOfRuns = Integer.parseInt(conf.getProperty("multirun.num_run"));
		for (int i = 1; i <= numOfRuns; i++) {
			// set up parameters
			conf.setProperty("greedy.output", "build/tmp/maxSMT.run" + i
					+ ".smt2");
			conf.setProperty("target.args", Integer.toString(i));
			// attack and defense
			JPF jpf = new JPF(conf);
			AdaptiveAttackListener listener = new AdaptiveAttackListener(conf,
					jpf);
			jpf.addListener(listener);
			try {
				jpf.run();
				omegaCache = listener.getOmegaCache();
				// dumpConstraints(i);
				// updateDomains();
				// printOmegaCache();
				FileUtils.cleanDirectory(new File(conf
						.getProperty("symbolic.reliability.tmpDir")));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	private static void optimizedAdaptiveAttack() {

		JPF jpf = new JPF(conf);
		OptimizedAdaptiveAttackListener listener = new OptimizedAdaptiveAttackListener(conf, jpf);
		jpf.addListener(listener);
		try {
			jpf.run();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	/*
	private static void dumpConstraints(int i) {
		HashMap<String, Vector<Set<Constraint>>> domains = updateDomains();
		StringBuilder sb = new StringBuilder();
		for (Map.Entry<String, Vector<Set<Constraint>>> entry : domains.entrySet()) {
			String var = entry.getKey();
			Vector<Set<Constraint>> setOfConjuction = entry.getValue();
			StringBuilder sbDisjunct = new StringBuilder();
			sbDisjunct.append(var);
			for (Set<Constraint> conjuction : setOfConjuction) {
				// disjunction of constraints are separated by "#"
				sbDisjunct.append("#");
				for(Constraint c : conjuction){
					c.convertToPositive();
					ImmutableMap<String, Long> coefficients = c.getLhs().getCoefficients();
					// we assume that the domain is only 1 variable
					long term = coefficients.get(var);
					long val =  c.getRhs().getIntegerKnownTerm();
					// conjunction of constraints are separated by ";"
					// the constraint is of the form term * var <= var
					sbDisjunct.append(term + ":" + c.getRelation() + ":" + val + ",");
				}
			}
			sb.append(sbDisjunct + "\n");
		}
		try {
			String fileName = conf.getProperty("greedy.constraints","build/tmp/constraints" + i + ".txt");
			PrintWriter writer = new PrintWriter(fileName);
			writer.println(sb.toString());
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//*/
	
	private static HashMap<String,Vector<Set<Constraint>>> updateDomains(){
		HashMap<String,Vector<Set<Constraint>>> domains = new HashMap<String,Vector<Set<Constraint>>>();
		for (Set<Problem> problems : omegaCache.asMap().values()) {
			for (Problem p : problems) {
				if (!p.isFalse()) {
					List<String> vars =  p.getVarList().asList();
					for(String v : vars){
						// symbolic variable for secret starts with "h"
						if(v.charAt(0) == 'h'){
							Set<Constraint> set = p.getConstraintsRelatedTo(v);
							Vector<Set<Constraint>> disjunct = domains.get(v);
							if (disjunct == null) {
								disjunct = new Vector<Set<Constraint>>();
								disjunct.add(set);
								domains.put(v, disjunct);
							}else{
								disjunct.add(set);
							}
						}
					}
				}
			}
		}
		return domains;
	}

	private static void setupEnvironment() {
		// clean tmp file
		try {
			FileUtils
					.cleanDirectory(new File(conf.getProperty("greedy.tmpDir")));
			String tmpDir2 = conf.getProperty("symbolic.reliability.tmpDir");
			assert (tmpDir2 != null);
			File dir = new File(tmpDir2);
			if (!dir.exists()) {
				dir.mkdirs();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// find z3
		String z3 = Environment.find("z3");
		if (z3 == null) {
			return;
		}
		conf.setProperty("z3", z3);

		String bit_length = conf.getProperty("bit_length");
		if (bit_length != null) {
			BitVectorUtils.bitLength = Integer.parseInt(bit_length);
		}
	}
}
