/***************************************************************************
                          utils.h  -  description
                             -------------------
    begin                : Wed Dec 4 2002
    copyright            : (C) 2002 by Avi.Y.
    email                : yadgar@tx.technion.ac.il
 ***************************************************************************/

#ifndef _UTILS_H_
#define _UTILS_H_

#include <vector>
#include "dstruct.h"

#ifndef ASSIGNMENT_STACK
#define ASSIGNMENT_STACK vector<vector<int> *>
#endif

AssignmentStack* readStack(char* fileName);

#endif

#ifndef PRINT_CLAUSES
#define PRINT_CLAUSES
typedef vector<int> CLAUSE;
typedef vector<vector<int> > CLAUSES;
void printClause(vector<int> clause);
void printVector(vector<int> v);
void printClauses(CLAUSES& clauses);
#endif
