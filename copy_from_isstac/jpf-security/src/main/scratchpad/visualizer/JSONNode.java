package scratchpad.visualizer;

import java.util.ArrayList;

/**
 * @author Kasper Luckow
 * Will be serialized as JSON
 */
public class JSONNode {
  private String content;
  private java.util.List<JSONNode> children;
  
  public JSONNode() {
    this.children = new ArrayList<>();
  }
  
  public JSONNode(String content) {
    this();
    this.content = content;
  }
  
  public void setContent(String content) {
    this.content = content;
  }
  
  public void addChild(JSONNode child) {
    this.children.add(child);
  }
}
