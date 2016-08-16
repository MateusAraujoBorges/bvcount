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
package scratchpad.visualizer;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import gov.nasa.jpf.Config;
import gov.nasa.jpf.JPF;
import gov.nasa.jpf.symbc.tree.NodeFactory;
import gov.nasa.jpf.symbc.tree.visualizer.AVisualizerListener;

/**
 * @author Kasper Luckow
 */
public class JSONListener extends AVisualizerListener<JSONNode> {

  private final static String OUTPUT_PATH = "symbolic.visualizer.outputpath";

  private final String basePath;
  private JSONFactory nodeFactory;
  public JSONListener(Config conf, JPF jpf) {
    super(conf, jpf);
    basePath = conf.getString(OUTPUT_PATH, "./");
  }

  @Override
  protected NodeFactory<JSONNode> getNodeFactory() {
    nodeFactory = new JSONFactory();
    return nodeFactory;
  }

  @Override
  protected void processTree() {
    SimpleDateFormat form = new SimpleDateFormat("ddMMyy-hhmmss");
    String filename = super.targetMethod.substring(super.targetMethod.lastIndexOf('.') + 1);
    filename += "_" + form.format(new Date()) + ".json";
    String filepath = new File(basePath, filename).getAbsolutePath();
    outputVisualization(filepath);
  }

  private void outputVisualization(String path) {
    try {
      PrintWriter out = new PrintWriter(path);
      Gson gson = new GsonBuilder().setPrettyPrinting().create();
      out.println(gson.toJson(nodeFactory.root));
      out.close();
    } catch (FileNotFoundException e) {
      e.printStackTrace();
    }
  }
}
