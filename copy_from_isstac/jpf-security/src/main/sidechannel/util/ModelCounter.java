package sidechannel.util;

import gov.nasa.jpf.Config;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Set;

import modelcounting.analysis.Analyzer;
import modelcounting.analysis.SequentialAnalyzer;
import modelcounting.domain.Problem;
import modelcounting.domain.ProblemSetting;
import modelcounting.utils.BigRational;
import modelcounting.utils.Configuration;

import org.antlr.runtime.RecognitionException;

import com.google.common.cache.LoadingCache;

/**
 * Counting the number of input for a specific path condition
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class ModelCounter {

	private ProblemSetting problemSettings;
	Configuration configuration; // Model Counter's configuration
	Config conf; // JPF's configuration	
	LoadingCache<Problem, Set<Problem>> omegaCache;

	public ModelCounter(Config conf) {
		this.conf = conf;

		configuration = new Configuration();
		configuration.setTemporaryDirectory(conf
				.getProperty("symbolic.reliability.tmpDir"));
		configuration.setOmegaExectutablePath(conf
				.getProperty("symbolic.reliability.omegaPath"));
		configuration.setLatteExecutablePath(conf
				.getProperty("symbolic.reliability.lattePath"));

		problemSettings = null;
		String problemSettingsPath = conf
				.getProperty("symbolic.reliability.problemSettings");
		if (problemSettingsPath == null) {
			throw new RuntimeException(
					"Problem settings must be dummy or provided by file.");
		}
		try {
			problemSettings = ProblemSetting.loadFromFile(problemSettingsPath);
			// System.out.println("Problem settings loaded from: " + problemSettingsPath);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (RecognitionException e) {
			e.printStackTrace();
		}

	}
	
	public LoadingCache<Problem, Set<Problem>> getOmegaCache(){
		return omegaCache;
	}

	public long count(Set<String> set) {
		long result = -1;

		try {
			SequentialAnalyzer analyzer = new SequentialAnalyzer(configuration,
					problemSettings.getDomain(),
					problemSettings.getUsageProfile(), 1);
			BigRational numberOfPoints = analyzer.countPointsOfSetOfPCs(set);
			result = Long.parseLong(numberOfPoints.toString());
			omegaCache = analyzer.getOmegaCache();
			analyzer.terminate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	public BigDecimal countSinglePath(String pc) {
		BigDecimal result = new BigDecimal("-1");

		try {
			SequentialAnalyzer analyzer = new SequentialAnalyzer(configuration,
					problemSettings.getDomain(),
					problemSettings.getUsageProfile(), 1);
			BigRational numberOfPoints = analyzer.countPointsOfPC(pc);
			result = new BigDecimal(numberOfPoints.toString());
			omegaCache = analyzer.getOmegaCache();
			analyzer.terminate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

}
