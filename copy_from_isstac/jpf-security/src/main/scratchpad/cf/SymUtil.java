package scratchpad.cf;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.symbc.bytecode.BytecodeUtils;
import gov.nasa.jpf.vm.MethodInfo;

/**
 * @author Kasper Luckow
 */
public class SymUtil {
  //TODO: This is copied from ATreeListener (it should not be there...)
  public static boolean isSymbolic(Config jpfConf, MethodInfo method) {
    return BytecodeUtils.isClassSymbolic(jpfConf, method.getClassInfo().getName(), method, method.getBaseName())
        || BytecodeUtils.isMethodSymbolic(jpfConf, method.getFullName(), method.getNumberOfArguments(), null);
  }
  
  public static String normalizeJPFMethodName(MethodInfo methInfo) {
    int methBeginIdx = methInfo.getBaseName().lastIndexOf('.') + 1;
    String fullName = methInfo.getFullName();
    return fullName.substring(methBeginIdx, fullName.length());
  }
}
