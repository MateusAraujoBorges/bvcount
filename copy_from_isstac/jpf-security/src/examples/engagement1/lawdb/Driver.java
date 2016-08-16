package engagement1.lawdb;

import gov.nasa.jpf.symbc.Debug;

public class Driver {

	public static void main(String[] args){
		BTree tree = new BTree(10);
		//int i = 0;
		//for(i = 3; i < 5; i++){
			tree.add(3, null, false);
			tree.add(5, null, false);
		//}
		CheckRestrictedID checker = new CheckRestrictedID();
		// int h1 = Debug.makeSymbolicInteger("h1");
		// int h2 = Debug.makeSymbolicInteger("h2");
		// checker.add(h1);
		//for (i = 1; i < 2; i++) {
			int h = Debug.makeSymbolicInteger("h");
			Debug.assume(h!=3&&h!=5);
			tree.add(h, null, false);
			checker.add(h);
		//}
		// checker.add(h2);
		
		UDPServerHandler handler = new UDPServerHandler(tree,checker);
		int key = Debug.makeSymbolicInteger("key");
		handler.channelRead0(8,key);
	}
}
