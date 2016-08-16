package wcanalysis.fitting;

import java.util.ArrayList;
import java.util.Arrays;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.regression.OLSMultipleLinearRegression;

import com.google.common.base.Predicate;

import gov.nasa.jpf.util.Pair;

/**
 * @author Kasper Luckow
 */
public abstract class OLSTrendLine implements TrendLine {

  protected RealMatrix coef = null; // will hold prediction coefs once we get values

  private double RSquared;
  private double adjustedRSquared;

  protected abstract double[] xVector(double x); // create vector of values from x
  protected abstract boolean logY(); // set true to predict log of y (note: y must be positive)
  
  @Override
  public void setValues(double[] yIn, double[] xIn) {
    if (xIn.length != yIn.length) {
      throw new IllegalArgumentException(String.format("The numbers of y and x values must be equal (%d != %d)",yIn.length,xIn.length));
    }

    ArrayList<Double> xArr = new ArrayList<>();
    ArrayList<Double> yArr = new ArrayList<>();
    Predicate<Double> dom = getDomainPredicate();
    Predicate<Double> ran = getRangePredicate();
    
    for(int i = 0; i < xIn.length; i++) {
      if(ran.apply(yIn[i]) && dom.apply(xIn[i])) {
        yArr.add(yIn[i]);
        xArr.add(xIn[i]);
      }
    }
    //todo: super ugly conversion back to arr of primitive type
    double[] x = new double[xArr.size()];
    double[] y = new double[xArr.size()];
    for(int i = 0; i< x.length; i++) {
      x[i] = xArr.get(i);
      y[i] = yArr.get(i);
    }
    
    double[][] xData = new double[x.length][]; 
    for (int i = 0; i < x.length; i++) {
      // the implementation determines how to produce a vector of predictors from a single x
      xData[i] = xVector(x[i]);
    }
    if(logY()) { // in some models we are predicting ln y, so we replace each y with ln y
      y = Arrays.copyOf(y, y.length); // user might not be finished with the array we were given
      for (int i = 0; i < x.length; i++) {
        y[i] = Math.log(y[i]);
      }
    }

    OLSMultipleLinearRegression ols = new OLSMultipleLinearRegression();
    ols.setNoIntercept(true); // let the implementation include a constant in xVector if desired
    ols.newSampleData(y, xData); // provide the data to the model
    coef = MatrixUtils.createColumnRealMatrix(ols.estimateRegressionParameters()); // get our coefs

    //set r^2
    this.RSquared = ols.calculateRSquared();
    this.adjustedRSquared = ols.calculateAdjustedRSquared();
  }

  @Override
  public double predict(double x) {
    double yhat = coef.preMultiply(xVector(x))[0]; // apply coefs to xVector
    if (logY()) yhat = (Math.exp(yhat)); // if we predicted ln y, we still need to get y
    return yhat;
  }

  @Override
  public double getRSquared() {
    return RSquared;
  }
  
  @Override
  public double getAdjustedRSquared() {
    return adjustedRSquared;
  }
}
