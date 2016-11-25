/***************************************************************************
                          utils.cpp  -  description
                             -------------------
    begin                : Wed Dec 4 2002
    copyright            : (C) 2002 by Avi.Y.
    email                : yadgar@tx.technion.ac.il
 ***************************************************************************/

#include "utils.h"
#include <string.h>
#include <iostream>
#include <fstream>
#include <stdlib.h>

// returns:
//	-1 - no filename assigned

AssignmentStack* readStack(char* fileName) {
  
  
  long loop1, loop2;
  unsigned int  maxLevel;
  int 	currentLit;
  ifstream* input;
  AssignmentStack* stack;
  unsigned int* lengths;
  
  if (!strcmp (fileName,""))
    return NULL;						// no filename
  cout <<  "Position filename is: " << fileName << endl;
  input = new ifstream(fileName, ios::in);
  
  *input >> maxLevel;
  //  cout << "Max level is: " << maxLevel << endl;
  lengths = new (unsigned int[maxLevel+1]);
  
  for (loop1 = 0; loop1 <= maxLevel; loop1++) {
    *input >> lengths[loop1];
  }
  cout << endl;
  
  
  stack = new AssignmentStack (maxLevel+1, lengths);
  
  for (loop1 = 0; loop1 <= maxLevel; loop1++) {
    for (loop2 = 0; loop2 < lengths[loop1]; loop2++) {
      *input >> currentLit;
      stack->setLit_l_i(loop1,loop2,currentLit);
    }
  }
  
  cout << "Read stack is:\n";	
  stack->print();
  
  delete input;
  //cout << "Positon file successfully loaded \n";
  return stack;
  
  
}

void printClause(vector<int> clause) {
  for (int i = 0; i<clause.size();i++) {
    int lit =  clause[i];
    cout << (((lit%2)>0)?"-":"") << (lit/2) << " ";
  }
}

void printVector(vector<int> v) {
  for (int i = 0; i < v.size(); i++)
    cout << v[i] << " ";
}

void printClauses(CLAUSES& clauses) {
  for (int loop1 = 0; loop1 < clauses.size(); loop1++) {
    printClause(clauses[loop1]);
    cout << " 0" << endl;
  }
}



