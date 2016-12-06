#include <string>
#include <sstream>
#include <vector>
#include <fstream>
#include <cmath>

#include <iostream>
#include "cuddObj.hh"
using namespace std;


//split function comes from stackoverflow

vector<string> &split(const string &s, char delim, vector<string> &elems) {
    stringstream ss(s);
    string item;
    while (getline(ss, item, delim)) {
        elems.push_back(item);
    }
    return elems;
}

vector<string> split(const string &s, char delim) {
    vector<string> elems;
    split(s, delim, elems);
    return elems;
}

vector<int> parseVars(vector<string> &toks) {
  vector<int> varIds;
  for (string tok : toks) {
	int id = stoi(tok);
	if (id == 0) {
	  break;
	} else {
	  varIds.push_back(id);
	}
  }

  return varIds;
}

#define BATCH_SIZE 100

int main(int argc, char* argv[]) {

  Cudd mgr(0,0);
  mgr.AutodynEnable(); // reorder automatically

  if (argc < 2) {
	cout << "Not enough arguments!";
	return 1;
  }

  BDD conjunction = mgr.bddZero();
  vector<BDD> vars(10,conjunction);
  vector<BDD> intermediateBDDs;
  
  //read dimacs csv
  ifstream infile(argv[1]);
  string line;

  int i = 0;
  while (getline(infile, line)) {
	cout << "line " << i++ << endl;
	vector<string> toks = split(line,' ');
	string head = toks[0];

	if (head.find("cr") == 0) { //projection
	  cout << "skipping projection" << endl;
	} else if (head.find("c") == 0) { //comment
	  //skip
	} else if (head.find("p") == 0) { //header
	  int nvars = stoi(toks[2]);
	  vars.resize(nvars,mgr.bddZero());
	} else {
	  vector<int> varIds = parseVars(toks);
	  BDD disjunction = mgr.bddZero();
	  
	  for (int id : varIds) {
		bool isNot = id < 0;
		id = abs(id);
		
		BDD node;
		if (vars[id].IsZero()) {
		  node = mgr.bddVar(id);
		  if (isNot) {
			node = !node;
		  }
		  vars[id] = node;
		} else {
		  node = vars[id];
		}

		if (disjunction.IsZero()) {
		  disjunction = node;
		} else {
		  disjunction = disjunction + node;
		}
	  }

	  if (conjunction.IsZero()) {
		conjunction = disjunction;
	  } else {
		conjunction = conjunction * disjunction;
	  }
	}

	if (i % BATCH_SIZE == 0) {
	  intermediateBDDs.push_back(conjunction);
	  conjunction = mgr.bddZero();
	}
  }

  cout << "Finished intermediate bdd processing" << endl;

  BDD result = mgr.bddOne();
  for (auto const& bddTmp : intermediateBDDs) {
	result = result * bddTmp;
  }
  
  mgr.info();
  cout << conjunction;
  return 0;
}
