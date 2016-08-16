package sidechannel.util.smt;

import gov.nasa.jpf.Config;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import modelcounting.domain.Problem;
import sidechannel.util.SymbolicVariableCollector;

import com.google.common.cache.LoadingCache;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public abstract class SMTLIB2Utils {

	public static final int ENGINE_WMAX = 1;
	public static final int ENGINE_MAXRES = 2;
	public static final int ENGINE_BCD2 = 3;
	public static final int ENGINE_MAXHS = 4;
	public static final int ENGINE_DIFFERENCE_LOGIC = 5;
	
	protected Config conf;

	public static String configSMTengine() {
		// default engine
		int engine = ENGINE_DIFFERENCE_LOGIC;
		// engine = ENGINE_MAXRES;
		// engine = ENGINE_WMAX;
		// TODO: read engine from config file
		
		String result = "";
		switch (engine) {
		case ENGINE_WMAX:
			result = "(set-option :opt.maxsat_engine wmax)\n";
			break;
		case ENGINE_MAXRES:
			result = "(set-option :opt.enable_sat false)\n";
			break;
		case ENGINE_BCD2:
			break;
		case ENGINE_MAXHS:
			break;
		case ENGINE_DIFFERENCE_LOGIC:
			result = "(set-option :smt.arith.solver 1) ; enables difference logic solver for sparse constraints\n(set-option :smt.arith.solver 3) ; enables difference logic solver for dense constraints\n";
			break;
		default:
			// TODO: wrong index, you should not reach this
			assert (false);
			break;
		}
		return result;
	}

	abstract protected String convertConstraint(
			modelcounting.domain.Constraint c);
	
	abstract public HashMap<String,Long> generateMaxSmtForAdaptiveAttackWithDomain(HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector, LoadingCache<Problem, Set<Problem>> omegaCache);
	
	abstract public HashMap<String,Long> generateMaxSmtForAdaptiveAttack(HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector);
	
	abstract public HashMap<String,Long> generateAllSmtForAdaptiveAttack(HashMap<Long, HashSet<String>> obsrv,
			SymbolicVariableCollector collector);
	
	public SMTLIB2Utils(Config conf){
		this.conf = conf;
	}

	// count is the index of PC when renaming for self-composition
	public String extractDomains(
			LoadingCache<Problem, Set<Problem>> omegaCache, int count,
			Set<String> pcVars) {

		assert (omegaCache != null);
		HashMap<String, HashSet<String>> domains = new HashMap<String, HashSet<String>>();
		for (Set<Problem> problems : omegaCache.asMap().values()) {
			for (Problem problem : problems) {
				if (!problem.isFalse()) {
					extractDomains(problem, domains, pcVars);
				}
			}
		}
		Set<String> vars = domains.keySet();
		StringBuilder sb = new StringBuilder();

		sb.append("(assert (= DOMAIN" + count + "\n");
		if (vars.size() > 1) {
			sb.append("(and\n");
		}
		for (String var : vars) {
			String rename = var + count;
			HashSet<String> domain = domains.get(var);
			if (domain.size() > 1) {
				sb.append(" (or\n");
			}
			for (String constraint : domain) {
				sb.append("  " + constraint.replace(var, rename) + "\n");
			}
			if (domain.size() > 1) {
				sb.append(" )\n");
			}
		}
		if (vars.size() > 1) {
			sb.delete(sb.length() - 1, sb.length());
			sb.append("\n)");
		}
		sb.append("))\n");
		return sb.toString();
	}

	private void extractDomains(Problem p,
			HashMap<String, HashSet<String>> domains, Set<String> pcVars) {
		List<String> vars = p.getVarList().asList();
		for (String v : vars) {
			// symbolic variable for secret starts with "h"
			if (v.charAt(0) == 'h' && pcVars.contains(v)) {
				// System.out.println("\n------------------- Constraint ------------------");
				Set<modelcounting.domain.Constraint> set = p
						.getConstraintsRelatedTo(v);
				// System.out.println(set);
				StringBuilder sb = new StringBuilder();
				if (set.size() > 1) {
					sb.append("(and ");
				}
				for (modelcounting.domain.Constraint element : set) {
					// System.out.println(element.toSmtlib2BitVector());
					element.convertToPositive();
					// sb.append(element.toSmtlib2BitVector() + " ");
					sb.append(convertConstraint(element) + " ");
				}
				// remove the last space
				sb.delete(sb.length() - 1, sb.length());
				if (set.size() > 1) {
					sb.append(")");
				}
				HashSet<String> domain = domains.get(v);
				if (domain == null) {
					domain = new HashSet<String>();
					domain.add(sb.toString());
					domains.put(v, domain);
				} else {
					domain.add(sb.toString());
				}
				// System.out.println(sb.toString());
				// System.out.println("-------------------------------------------------");
			}
		}
	}
}
