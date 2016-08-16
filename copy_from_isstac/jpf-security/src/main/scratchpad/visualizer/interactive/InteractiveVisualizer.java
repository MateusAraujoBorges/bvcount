/*
 * Copyright (C) 2014, United States Government, as represented by the
 * Administrator of the National Aeronautics and Space Administration.
 * All rights reserved.
 *
 * Symbolic Pathfinder (jpf-symbc) is licensed under the Apache License, 
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 * 
 *        http://www.apache.org/licenses/LICENSE-2.0. 
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and 
 * limitations under the License.
 */
package scratchpad.visualizer.interactive;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.swing.AbstractAction;
import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.KeyStroke;
import javax.swing.SwingConstants;

import prefuse.Constants;
import prefuse.Display;
import prefuse.Visualization;
import prefuse.action.Action;
import prefuse.action.ActionList;
import prefuse.action.ItemAction;
import prefuse.action.RepaintAction;
import prefuse.action.animate.ColorAnimator;
import prefuse.action.animate.LocationAnimator;
import prefuse.action.animate.QualityControlAnimator;
import prefuse.action.animate.VisibilityAnimator;
import prefuse.action.assignment.ColorAction;
import prefuse.action.assignment.FontAction;
import prefuse.action.filter.FisheyeTreeFilter;
import prefuse.action.layout.CollapsedSubtreeLayout;
import prefuse.action.layout.Layout;
import prefuse.action.layout.graph.NodeLinkTreeLayout;
import prefuse.activity.SlowInSlowOutPacer;
import prefuse.controls.Control;
import prefuse.controls.ControlAdapter;
import prefuse.controls.DragControl;
import prefuse.controls.FocusControl;
import prefuse.controls.PanControl;
import prefuse.controls.WheelZoomControl;
import prefuse.controls.ZoomControl;
import prefuse.controls.ZoomToFitControl;
import prefuse.data.Graph;
import prefuse.data.Tuple;
import prefuse.data.Schema;
import prefuse.data.event.TupleSetListener;
import prefuse.data.io.DataIOException;
import prefuse.data.io.TreeMLReader;
import prefuse.data.io.TreeMLWriter;
import prefuse.data.search.PrefixSearchTupleSet;
import prefuse.data.tuple.TupleSet;
import prefuse.render.AbstractShapeRenderer;
import prefuse.render.DefaultRendererFactory;
import prefuse.render.EdgeRenderer;
import prefuse.render.LabelRenderer;
import prefuse.util.ColorLib;
import prefuse.util.FontLib;
import prefuse.util.PrefuseLib;
import prefuse.util.ui.JFastLabel;
import prefuse.util.ui.JSearchPanel;
import prefuse.visual.DecoratorItem;
import prefuse.visual.VisualItem;
import prefuse.visual.expression.InGroupPredicate;
import prefuse.visual.sort.TreeDepthItemSorter;

/**
 * @author Kasper Luckow
 */
public class InteractiveVisualizer {

  private Graph graph;
  private Visualization visualization;
  private Display display;

  //structure
  private String nodeLbl;
  private static final String TREE = "graph";
  private static final String TREE_NODES = "graph.nodes";
  private static final String TREE_EDGES = "graph.edges";
  
  //private static final String EDGE_DECORATORS = "edgeDeco";
  private static final String NODE_DECORATORS = "nodeDeco";

  //actions and layout
  private static final String REPAINT = "repaint";
  private static final String FULL_PAINT = "fullPaint";
  private static final String ANIMATE_PAINT = "animatePaint";
  private static final String ORIENT = "orient";
  private static final String FILTER = "filter";
  private static final String ANIMATE = "animate";
  private static final String TEXT_COLOR = "textColor";
  
  private static final String TREE_LAYOUT = "treeLayout";
  private static final String SUB_LAYOUT = "subLayout";
  
  //renderers
  private LabelRenderer nodeRenderer;
  private EdgeRenderer edgeRenderer;

  //orientation of tree
  private int orientation = Constants.ORIENT_TOP_BOTTOM;

  //Decorators
  private static final Schema DECORATOR_SCHEMA = PrefuseLib.getVisualItemSchema(); 
  static { 
    DECORATOR_SCHEMA.setDefault(VisualItem.INTERACTIVE, false); 
    DECORATOR_SCHEMA.setDefault(VisualItem.TEXTCOLOR, ColorLib.gray(128)); 
    DECORATOR_SCHEMA.setDefault(VisualItem.FONT, FontLib.getFont("Tahoma",16));
  }

  //controls for handling events
  private List<Control> controls;
  
  public InteractiveVisualizer() {
    this.controls = new ArrayList<>();
  }
  
  public void addControl(Control ctrl) {
    controls.add(ctrl);
  }
  
  public void visualize(String treeFilePath, String nodeLabel) {
    TreeMLReader reader = new TreeMLReader();
    try {
      this.visualize(reader.readGraph(treeFilePath), nodeLabel);
    } catch (DataIOException e) {
      throw new RuntimeException(e);
    }
  }

  public void visualize(Graph graph, String nodeLabel) {
    this.graph = graph;
    this.nodeLbl = nodeLabel;
    
    setUpVisualization();
    setUpRenderers();
    setUpActions();
    setUpDisplay();
    JPanel panel = setUpPanel();

    JFrame frame = new JFrame("JPF-Symbc Visualizer");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.setContentPane(panel);

    // Prepares the window.
    frame.pack();      
    
    // Shows the window.
    frame.setVisible(true);
  }

  private void setUpVisualization() {
    this.visualization = new Visualization();
    this.visualization.add(TREE, graph);
  }

  private void setUpRenderers() {
    //Set up node renderer
    nodeRenderer = new LabelRenderer(nodeLbl);
    nodeRenderer.setRenderType(AbstractShapeRenderer.RENDER_TYPE_FILL);
    nodeRenderer.setHorizontalAlignment(Constants.LEFT);
    nodeRenderer.setRoundedCorner(8,8);

    //Set up edge renderer
    edgeRenderer = new EdgeRenderer(Constants.EDGE_TYPE_CURVE);

    //set renderer
    DefaultRendererFactory rf = new DefaultRendererFactory(nodeRenderer);
    rf.add(new InGroupPredicate(TREE_EDGES), edgeRenderer);
    //rf.add(new InGroupPredicate(EDGE_DECORATORS), new LabelRenderer2(VisualItem.LABEL));
    //rf.add(new InGroupPredicate(EDGE_DECORATORS), new LabelRenderer(VisualItem.LABEL));
    //rf.add(new InGroupPredicate(NODE_DECORATORS), new LabelRenderer("line"));
    this.visualization.setRendererFactory(rf);
    
    //set decorators
    //DECORATOR_SCHEMA.setDefault(VisualItem.TEXTCOLOR, ColorLib.gray(0));
    //this.visualization.addDecorators(EDGE_DECORATORS, TREE_EDGES, DECORATOR_SCHEMA);
    //Predicate labelP =  new StartVisiblePredicate();//ExpressionParser.predicate("(type = 1 or type = 0) and _visible");//new AndPredicate(ExpressionParser.predicate("(type = 1 or type = 0)"), new StartVisiblePredicate());
    //this.visualization.addDecorators(NODE_DECORATORS, TREE_NODES, labelP, DECORATOR_SCHEMA);
  }
  
  private void setUpActions() {
    //Colors
    //ItemAction decoColor = new NodeColorAction(NODE_DECORATORS);
    ItemAction nodeColor = new NodeColorAction(TREE_NODES);
    ItemAction textColor = new ColorAction(TREE_NODES, 
        VisualItem.TEXTCOLOR, ColorLib.rgb(0,0,0));
    this.visualization.putAction(TEXT_COLOR, textColor);

    ItemAction edgeColor = new ColorAction(TREE_EDGES,
        VisualItem.STROKECOLOR, ColorLib.rgb(200,200,200));
    ItemAction arrowColor = new ColorAction(TREE_EDGES,
        VisualItem.FILLCOLOR, ColorLib.rgb(200,200,200));

    //NodeLabelLayout nodeLblLayout = new NodeLabelLayout(EDGE_DECORATORS);

    //action for quick repaint
    ActionList repaint = new ActionList();
    repaint.add(nodeColor);
    repaint.add(new RepaintAction());
    this.visualization.putAction(REPAINT, repaint);

    //action for full repaint
    ActionList fullPaint = new ActionList();
    fullPaint.add(nodeColor);
    this.visualization.putAction(FULL_PAINT, fullPaint);

    //action for animating the paint change
    ActionList animatePaint = new ActionList(400);
    animatePaint.add(new ColorAnimator(TREE_NODES));
    animatePaint.add(new RepaintAction());
    this.visualization.putAction(ANIMATE_PAINT, animatePaint);

    Action decLayout = new FinalDecoratorLayout(NODE_DECORATORS);

    //create funky tree layout
    NodeLinkTreeLayout treeLayout = new NodeLinkTreeLayout(TREE,
        orientation, 30, 10, 15);
    //treeLayout.setLayoutAnchor(new Point2D.Double(25,300));
    this.visualization.putAction(TREE_LAYOUT, treeLayout);
    //m_vis.putAction("labelsLayout", new LabelLayout2(EDGE_DECORATORS));
    CollapsedSubtreeLayout subLayout = 
        new CollapsedSubtreeLayout(TREE, orientation);
    this.visualization.putAction(SUB_LAYOUT, subLayout);

    AutoPanAction autoPan = new AutoPanAction();

    //create funky filtering stuff
    //Fisheye filter basically implements collapsing of subtrees
    ActionList filter = new ActionList();
    filter.add(new FisheyeTreeFilter(TREE, 2));
    filter.add(new FontAction(TREE_NODES, FontLib.getFont("Tahoma", 16)));
    filter.add(treeLayout);
    filter.add(subLayout);
    filter.add(decLayout);
    filter.add(textColor);
    filter.add(arrowColor);
    filter.add(nodeColor);
    filter.add(edgeColor);
    this.visualization.putAction(FILTER, filter);

    //Action for animating the transitions and auto panning
    ActionList animate = new ActionList(1000);
    animate.setPacingFunction(new SlowInSlowOutPacer());
    animate.add(autoPan);
    
    //animate.add(nodeLblLayout);
    animate.add(new QualityControlAnimator());
    animate.add(new VisibilityAnimator(TREE));
    animate.add(new LocationAnimator(TREE_NODES));
    animate.add(new ColorAnimator(TREE_NODES));
    animate.add(new RepaintAction());
    this.visualization.putAction(ANIMATE, animate);
    this.visualization.alwaysRunAfter(FILTER, ANIMATE);

    //This stuff is for changing the orientation of the tree using keyboard shortcuts
    //Not strictly necessary
    ActionList orient = new ActionList(2000);
    orient.setPacingFunction(new SlowInSlowOutPacer());
    orient.add(autoPan);
    //orient.add(nodeLblLayout);
    orient.add(new QualityControlAnimator());
    orient.add(new LocationAnimator(TREE_NODES));
    orient.add(new RepaintAction());
    this.visualization.putAction(ORIENT, orient);
  }
  
  private void setUpDisplay() {
    this.display = new Display(visualization);
    this.display.setSize(800,1024);
    this.display.setItemSorter(new TreeDepthItemSorter());
    
    //Add all the controls
    this.display.addControlListener(new ZoomToFitControl());
    this.display.addControlListener(new ZoomControl());
    this.display.addControlListener(new WheelZoomControl());
    this.display.addControlListener(new PanControl());
    this.display.addControlListener(new DragControl());
    this.display.addControlListener(new FocusControl(1, FILTER));

    //Keyboard actions for chaing orientation
    this.display.registerKeyboardAction(
        new OrientAction(Constants.ORIENT_LEFT_RIGHT),
        "left-to-right", KeyStroke.getKeyStroke("ctrl 1"), javax.swing.JComponent.WHEN_FOCUSED);
    this.display.registerKeyboardAction(
        new OrientAction(Constants.ORIENT_TOP_BOTTOM),
        "top-to-bottom", KeyStroke.getKeyStroke("ctrl 2"), javax.swing.JComponent.WHEN_FOCUSED);
    this.display.registerKeyboardAction(
        new OrientAction(Constants.ORIENT_RIGHT_LEFT),
        "right-to-left", KeyStroke.getKeyStroke("ctrl 3"), javax.swing.JComponent.WHEN_FOCUSED);
    this.display.registerKeyboardAction(
        new OrientAction(Constants.ORIENT_BOTTOM_TOP),
        "bottom-to-top", KeyStroke.getKeyStroke("ctrl 4"), javax.swing.JComponent.WHEN_FOCUSED);
    
    // filter graph and perform layout
    setOrientation(orientation);
    visualization.run(FILTER);
    
    TupleSet search = new PrefixSearchTupleSet(); 
    this.visualization.addFocusGroup(Visualization.SEARCH_ITEMS, search);
    search.addTupleSetListener(new TupleSetListener() {
      public void tupleSetChanged(TupleSet t, Tuple[] add, Tuple[] rem) {
        visualization.cancel(ANIMATE_PAINT);
        visualization.run(FULL_PAINT);
        visualization.run(ANIMATE_PAINT);
      }
    });
  }
  
  private JPanel setUpPanel() {
    Color BACKGROUND = Color.WHITE;
    Color FOREGROUND = Color.BLACK;

    display.setBackground(BACKGROUND);
    display.setForeground(FOREGROUND);
    
    // create a search panel
    JSearchPanel searchPanel = new JSearchPanel(display.getVisualization(),
        TREE_NODES, Visualization.SEARCH_ITEMS, nodeLbl, true, true);
    searchPanel.setShowResultCount(true);
    searchPanel.setBorder(BorderFactory.createEmptyBorder(5,5,4,0));
    searchPanel.setFont(FontLib.getFont("Tahoma", Font.PLAIN, 11));
    searchPanel.setBackground(BACKGROUND);
    searchPanel.setForeground(FOREGROUND);

    final JFastLabel title = new JFastLabel("                 ");
    title.setPreferredSize(new Dimension(350, 20));
    title.setVerticalAlignment(SwingConstants.BOTTOM);
    title.setBorder(BorderFactory.createEmptyBorder(3,0,0,0));
    title.setFont(FontLib.getFont("Tahoma", Font.PLAIN, 16));
    title.setBackground(BACKGROUND);
    title.setForeground(FOREGROUND);

    display.addControlListener(new ControlAdapter() {
      public void itemEntered(VisualItem item, java.awt.event.MouseEvent e) {
        if(item.canGetString(nodeLbl))
          title.setText(item.getString(nodeLbl));
      }
      public void itemExited(VisualItem item, java.awt.event.MouseEvent e) {
        title.setText(null);
      }
    });
    
    //Add all the additional user controls
    for(Control ctrl : this.controls)
      display.addControlListener(ctrl);
    
    
    //add save button. Output is graphml
    final Box box = new Box(BoxLayout.X_AXIS);
    
    JButton saveBtn = new JButton("Save");
    final JFileChooser jfc = new JFileChooser("./");
    jfc.setSelectedFile(new File("sym-tree.xml"));
    saveBtn.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
        int returnVal = jfc.showSaveDialog(box);
        if(returnVal == JFileChooser.APPROVE_OPTION) {
            File file = jfc.getSelectedFile();
            TreeMLWriter writer = new TreeMLWriter();
            try {
              writer.writeGraph(graph, file);
              title.setText("Saved tree structure to " + file.getAbsolutePath());
            } catch (DataIOException e1) {
              e1.printStackTrace();
            }
        } else {
            System.out.println("Save command cancelled by user. ");
        }
      }
    });
    
    box.add(Box.createHorizontalStrut(10));
    box.add(title);
    box.add(Box.createHorizontalGlue());
    box.add(saveBtn);
    box.add(Box.createHorizontalStrut(10));
    box.add(searchPanel);
    box.add(Box.createHorizontalStrut(3));
    box.setBackground(BACKGROUND);

    JPanel panel = new JPanel(new BorderLayout());
    panel.setBackground(BACKGROUND);
    panel.setForeground(FOREGROUND);
    panel.add(display, BorderLayout.CENTER);
    panel.add(box, BorderLayout.SOUTH);
    return panel;
  }

  private void setOrientation(int orientation) {
    NodeLinkTreeLayout rtl 
    = (NodeLinkTreeLayout)this.visualization.getAction(TREE_LAYOUT);
    CollapsedSubtreeLayout stl
    = (CollapsedSubtreeLayout)this.visualization.getAction(SUB_LAYOUT);
    switch(orientation) {
    case Constants.ORIENT_LEFT_RIGHT:
      nodeRenderer.setHorizontalAlignment(Constants.LEFT);
      edgeRenderer.setHorizontalAlignment1(Constants.RIGHT);
      edgeRenderer.setHorizontalAlignment2(Constants.LEFT);
      edgeRenderer.setVerticalAlignment1(Constants.CENTER);
      edgeRenderer.setVerticalAlignment2(Constants.CENTER);
      break;
    case Constants.ORIENT_RIGHT_LEFT:
      nodeRenderer.setHorizontalAlignment(Constants.RIGHT);
      edgeRenderer.setHorizontalAlignment1(Constants.LEFT);
      edgeRenderer.setHorizontalAlignment2(Constants.RIGHT);
      edgeRenderer.setVerticalAlignment1(Constants.CENTER);
      edgeRenderer.setVerticalAlignment2(Constants.CENTER);
      break;
    case Constants.ORIENT_TOP_BOTTOM:
      nodeRenderer.setHorizontalAlignment(Constants.CENTER);
      edgeRenderer.setHorizontalAlignment1(Constants.CENTER);
      edgeRenderer.setHorizontalAlignment2(Constants.CENTER);
      edgeRenderer.setVerticalAlignment1(Constants.BOTTOM);
      edgeRenderer.setVerticalAlignment2(Constants.TOP);
      break;
    case Constants.ORIENT_BOTTOM_TOP:
      nodeRenderer.setHorizontalAlignment(Constants.CENTER);
      edgeRenderer.setHorizontalAlignment1(Constants.CENTER);
      edgeRenderer.setHorizontalAlignment2(Constants.CENTER);
      edgeRenderer.setVerticalAlignment1(Constants.TOP);
      edgeRenderer.setVerticalAlignment2(Constants.BOTTOM);
      break;
    default:
      throw new IllegalArgumentException(
          "Unrecognized orientation value: "+orientation);
    }
    rtl.setOrientation(orientation);
    stl.setOrientation(orientation);
  }
  
  private class OrientAction extends AbstractAction {
    private int orientation;
    private Display display;

    public OrientAction(int orientation) {
      this.orientation = orientation;
    }
    public void actionPerformed(ActionEvent evt) {
      setOrientation(orientation);
      display.getVisualization().cancel(ORIENT);
      display.getVisualization().run(TREE_LAYOUT);
      display.getVisualization().run(ORIENT);
    }
  }

  public class AutoPanAction extends Action {
    private Point2D m_start = new Point2D.Double();
    private Point2D m_end   = new Point2D.Double();
    private Point2D m_cur   = new Point2D.Double();
    private int     m_bias  = 150;

    public void run(double frac) {
      TupleSet ts = m_vis.getFocusGroup(Visualization.FOCUS_ITEMS);
      if(ts.getTupleCount() == 0)
        return;

      if(frac == 0.0) {
        int xbias=0, ybias=0;
        switch(orientation) {
        case Constants.ORIENT_LEFT_RIGHT:
          xbias = m_bias;
          break;
        case Constants.ORIENT_RIGHT_LEFT:
          xbias = -m_bias;
          break;
        case Constants.ORIENT_TOP_BOTTOM:
          ybias = m_bias;
          break;
        case Constants.ORIENT_BOTTOM_TOP:
          ybias = -m_bias;
          break;
        }

        VisualItem vi = (VisualItem)ts.tuples().next();
        m_cur.setLocation(display.getWidth()/2, display.getHeight()/2);
        display.getAbsoluteCoordinate(m_cur, m_start);
        m_end.setLocation(vi.getX()+xbias, vi.getY()+ybias);
      } else {
        m_cur.setLocation(m_start.getX() + frac*(m_end.getX()-m_start.getX()),
            m_start.getY() + frac*(m_end.getY()-m_start.getY()));
        display.panToAbs(m_cur);
      }
    }
  }
}
