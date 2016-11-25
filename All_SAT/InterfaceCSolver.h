// InterfaceCSolver.h
#ifndef _INTERFACE_CSOLVER_H_
#define _INTERFACE_CSOLVER_H_

#include "asap_solver.h"
#include "SAT.h"
#include "dstruct.h"
#include <ext/hash_map>
#include "utils.h"
using __gnu_cxx::hash_map;
using __gnu_cxx::hash;


class InterfaceCSolver:public CSolver {
 protected:
  unsigned int* _resultsBuffer;
  int* _lostSolution;
  // conflict analyzis
  vector<ClauseIdx> _generatedClauses;
  ClauseIdx _lastConflictClauseFound;
  int preprocess(void);
  void grabDecisionStack(AssignmentStack** stopStack);
 public:
  InterfaceCSolver();
  SAT_StatusT solve(unsigned int* results,
	    AssignmentStack** stopPoint,unsigned long int *solFound);
  void init(unsigned int* results);
  void real_solve(AssignmentStack** stopStack, unsigned long int *solutionNum,int deduced); 
  int analyzeConflict(bool toDecision);
  int handleConflict(int& blevel);
  int synch_back_track();
  void joinClauses(ClauseIdx,ClauseIdx,vector<int>&);
  void getClauseLits(int clIdx,vector<int> &lits);
  void setLostSolution(int* solution);
  bool skippedSolution();
  bool decide_next_branch(void);
  int makeInterfaceDecision();
  int makeVSIDSdecision();

	// set vector for usr conflicts and load them
    bool setConflictClauses(vector<vector<int> >* clauses,int maxSize);
//start search from specific point  4/12/02
    void setStartingPoint (AssignmentStack* stack);
// for initial assignment 
    void setInitialAssignment (Assignment* assignment);
//for activating starting point
    int activateStartingPoint();
// set desired number of solutions
    void setSolutionsNum (int i);
// set size of interface (default = 0)
    void setInterfaceSize(int Lisize,int Risize,int bsize,bool fullBody);

  //////////////////////////////////////////
     ////////// added 6.1.03 ////////////
    void verifyCurrentSolution();
    

    ///////////////////////////////////
    bool inInitAssginment(int i);
    void updateMaxMemory();

    // conflict ananlysis 12.5.03
    void clearConflictLits();
    void addUserConflictClause();
    int  addConflictClause();
    int  flipDecisionVar(int dlevel);
    int  implicateConflict(ClauseIdx conflict_cl, int back_level,
			   bool avoidLevel0,int flippedDecision);
    // restarting solver without re-creation
    void recycle();
    void restoreInitValues();
    ///////////////////////////////////////////////////
	void selectLowestMaxDlevelClause(ClauseIdx* idx, int* level);


};

// USER METHODS
// Use this method to create a new All-SAT solver
SAT_Manager SAT_InterfaceCSolver_InitManager();

// This method runs the solver after the clauses were loaded 
// and the interface size was set. 
// output: 
// results is the buffer used for the solutions found. This
// buffer should include the right number of Assignments, with
// valid headers.
// stopPoint is the position of the solver when the preset 
// number of solutions was found. set it to be an empty stack
// (NULL pointer). It remains NULL if the problem is EXHAUSTED
// solFound returns the actual number of solutions found
// the return value can be:
// MEM_OUT - memory limit reached
// UNSATISFIABLE - no solution found.
// SATISFIABLE - found the present number of solutions, 
//               and there might be more
// EXHAUSTED - found all of the solutions.

SAT_StatusT SAT_InterfaceCSolver_Solve(SAT_Manager mng, unsigned int* results,
			  AssignmentStack** stopPoint,unsigned long int *solFound);


// Use this method to delete the solver.
void SAT_InterfaceCSolver_ReleaseManager(SAT_Manager mng);




// This method is used to add condlict clauses which were already
// generated for the formula during previous run of the
// same problem.
bool SAT_InterfaceCSolver_SetConflictClauses(SAT_Manager mng,
			    vector<vector<int> >*_conflictClauses,
			    int maxSize);

// This method is used to resume a stopped search. Make sure the 
// the stack is loaded into a solver which has at lease the same 
// set of clauses as the solver where it was generated e.g. the
// original solver after reccycling, or a solver after clauses
//  migration
void SAT_InterfaceCSolver_SetStartingPoint(SAT_Manager mng, AssignmentStack* stack); 

// This method allows you to solve the problem under a specific 
// initial assignment. The result would be all the solutions
// which agree with this partial assignment.
void SAT_InterfaceCSolver_SetInitialAssignment(SAT_Manager mng, Assignment* assignment);

// This method allows you to search for a given number of solution
// make sure you keep the stopPoint stack if you want to resume the
// search later. set i = -1 in order to search for all of the 
// solutions
void SAT_InterfaceCSolver_RequiredSolutions(SAT_Manager mng,int i);

// This method defines the set of IMPORTANT variables.
// The IMPORTANT variables are the highest Risize variables.
// e.g. for a problem with 10 variables and Risize = 2, 
// variables 9,10 are IMPORTANT
void SAT_InterfaceCSolver_SetInterfaceSize(SAT_Manager mng, int Lisize,
			  int Risize,int bsize,bool fullBody);

// This method resets the search of the solver, but keeps the 
// generated conflict clause. You can use a recycled solver 
// by loading the stopPoint stack, and resuming the search,
// or by adding more clauses, for incremental steps.
void SAT_InterfaceCSolver_Recycle(SAT_Manager mng);

// This method is for debugging purposes.
void SAT_InterfaceCSolver_SetLostSolution(SAT_Manager mng,int* solution);


#endif
