package scratchpad.visualizer.interactive;

import prefuse.Visualization;
import prefuse.action.assignment.ColorAction;
import prefuse.util.ColorLib;
import prefuse.visual.VisualItem;

/**
 * @author Kasper Luckow
 */
public class NodeColorAction extends ColorAction {

  public NodeColorAction(String group) {
    super(group, VisualItem.FILLCOLOR);
  }

  public int getColor(VisualItem item) {
    if(m_vis.isInGroup(item, Visualization.SEARCH_ITEMS))
      return ColorLib.rgb(255,100,100);
    else if(m_vis.isInGroup(item, Visualization.FOCUS_ITEMS))
      return ColorLib.rgb(81,133,189);
    else if(item.getDOI() > -1)
      return ColorLib.rgb(91,227,235);
    else
      return ColorLib.rgba(255,255,255,0);
  }
}
