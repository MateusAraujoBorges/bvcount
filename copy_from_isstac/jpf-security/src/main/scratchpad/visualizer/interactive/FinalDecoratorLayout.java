package scratchpad.visualizer.interactive;

import java.awt.geom.Rectangle2D;
import java.util.Iterator;

import prefuse.action.layout.Layout;
import prefuse.visual.DecoratorItem;
import prefuse.visual.VisualItem;

/**
 * @author Kasper Luckow
 */
public class FinalDecoratorLayout extends Layout {
  public FinalDecoratorLayout(String group) {
    super(group);
  }

  public void run(double frac) {
    Iterator<?> iter = this.m_vis.items(this.m_group);
    while(iter.hasNext()){
      DecoratorItem decorator = (DecoratorItem)iter.next();
      VisualItem decoratedItem = decorator.getDecoratedItem();
      Rectangle2D bounds = decoratedItem.getBounds();

      double x = bounds.getCenterX() - 100;
      double y = bounds.getCenterY();

      setX(decorator, null, x);
      setY(decorator, null, y);
    }
  }
}
