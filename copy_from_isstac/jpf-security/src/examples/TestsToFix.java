
import java.io.File;
import java.util.Map;
import static org.junit.Assert.assertTrue;
import org.junit.Test;
import sidechannel.TimingChannelListener;
import wcanalysis.heuristic.model.State;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author sn
 */
public class TestsToFix extends TestsBase {

    @Test(timeout = 300000)
  public void bellmanFordHeuristics() {
    runJPFHeuristics(new String[]{"benchmarks/heuristics/BellmanFord.jpf"}, "choco", 0,3);
    State state = runJPFHeuristics(new String[]{"benchmarks/heuristics/BellmanFord.jpf"}, "choco", 1,5);
    File file = new File("../../benchmarks.BellmanFord.csv");
    assertTrue(file.exists());
  }

  @Test(timeout = 90000)
  public void huffmanStringZ3BV() {
    TimingChannelListener.Results res = runJPF(new String[]{"HuffmanCode_String.jpf"}, "z3bitvector");
    assertTrue(res.worstCaseExecutionTime >= res.bestCaseExecutionTime);
    assertTrue(res.bestCaseExecutionTime > 0);
    assertTrue(res.bestCaseExecutionTime < 100000);
    assertTrue(res.worstCaseExecutionTime > 0);
    assertTrue(res.worstCaseExecutionTime < 100000);
  }


  @Test(timeout = 90000)
  public void RSAZ3() {
    TimingChannelListener.Results res = runJPF(new String[]{"RSA.jpf"}, "z3");
    assertTrue(res.worstCaseExecutionTime >= res.bestCaseExecutionTime);
    assertTrue(res.bestCaseExecutionTime > 0);
    assertTrue(res.bestCaseExecutionTime < 1000000);
    assertTrue(res.worstCaseExecutionTime > 0);
    assertTrue(res.worstCaseExecutionTime < 1000000);
    assertTrue(res.constraintValues.size() > 0);
  }



}
