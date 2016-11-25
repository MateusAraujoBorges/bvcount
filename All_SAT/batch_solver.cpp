#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <stdio.h>
#include <set>
#include <vector>
#include "dstruct.h"
#include "InterfaceCSolver.h"
#include <cstring>

using namespace std;

#define BATCH_SIZE      2
#define MAX_LINE_LENGTH 40960
#define MAX_WORD_LENGTH 64


int loadClauses(char* filename,
		vector<vector<int> > &clauses,
		int& numOfVars);
void createInterfaceSolver(char* filename,
			   SAT_Manager* &solver,
			   int &varsNum);
void handle_result(SAT_Manager mng, int outcome, char * filename );
unsigned int* createSolutionsBuffer(int interfaceSize, 
				    int batchSize);


void createInterfaceSolver(char* filename,
			   SAT_Manager* &solver,
			   int &varsNum) {
  solver = new SAT_Manager;
  CLAUSES clauses;

  // read the CNF file to memory
  loadClauses(filename,clauses,varsNum);

  // initialize solver
  *solver = SAT_InterfaceCSolver_InitManager();
  SAT_SetNumVariables(*solver,varsNum);

  //load the problem into the solver
  for (int clauseIndex = 0; clauseIndex < clauses.size(); clauseIndex++)
    SAT_AddClause(*solver,& ((clauses[clauseIndex].begin())[0]),(clauses[clauseIndex]).size());
  clauses.clear();
}


int main(int argc, char ** argv) {
  
  if ((argc < 2) || (argc > 4)) {
    cerr << "Usage: " << argv[0] << " problem_file "
	 << "<Interface Size> <batch_size>\n";
    exit (-1);
  }

  char* filename = argv[1];
  int numOfVars;
  AssignmentStack *stopPoint = NULL, *startPoint = NULL;
  unsigned long int solFound,totalSolutions;
  int interfaceSize;
  ifstream *inp;
  SAT_Manager* solver;
  unsigned int *solutionsBuffer;
  
  // create a solver
  createInterfaceSolver(filename,solver,numOfVars);
  
  // retrieve additional data from command line
  if (argc > 2) 
    interfaceSize = atoi(argv[2]);
  else
    interfaceSize = numOfVars;
  if ((interfaceSize < 1) || (interfaceSize > numOfVars)) {
    cerr << "Interface size is out of range: " 
	 << interfaceSize << endl;
    exit (-1);
  }
  int batchSize = BATCH_SIZE;
  if (argc==4)
    batchSize = atoi(argv[3]);
  if (batchSize < 1) {
    cerr << "batch size must be larger than 0.\n";
    exit(-1);
  }
  cout << "batch size is set to " << batchSize << endl;

  // Create a buffer for the solutions.
  // see createSolutionsBuffer
  solutionsBuffer = createSolutionsBuffer(interfaceSize,batchSize);
  int lineSize = Assignment::dataSize(interfaceSize);
    
   // these parameters are not relevant for All-SAT
  // and are a used for reachability analysis
  int bsize = numOfVars - interfaceSize;
  int leftInterfaceSize = 0;
  int fullBody = true;
  
   // print problem information
  int clNum = SAT_NumClauses(*solver);
  cout << "solving " << filename << " with " << clNum << " clauses and "
       << numOfVars << " variables." << endl;
  cout << "Interface size = " << interfaceSize << endl; 
  

  // batch solve
  totalSolutions = 0;
  int result;
  do {
    // set number of required solutions
    SAT_InterfaceCSolver_RequiredSolutions(*solver,batchSize); 
   
    // set interface size
    SAT_InterfaceCSolver_SetInterfaceSize(*solver,leftInterfaceSize,
			 interfaceSize,bsize,fullBody);

    // startPoint is the previous stopPoint
    if (startPoint)
      SAT_InterfaceCSolver_SetStartingPoint(*solver,startPoint);
    
    // solve
     result = SAT_InterfaceCSolver_Solve(*solver, solutionsBuffer, &stopPoint, &solFound);

     cout << "Found a batch of " << solFound << " solutions.\n";
     
     // This would be a good place to use the solutions
     // in solutionBuffer, before the next iteration.
     // For example:
     Assignment a;
     int mark = 0;
     for (int loop = 0; loop < solFound; loop++) {
       a.setData(solutionsBuffer+mark);
       mark += lineSize;
       //a.print();
       //cout << endl;
     }
     
     totalSolutions += solFound;
     delete startPoint;
     startPoint = stopPoint;
     stopPoint = NULL;
     
     if (result == MEM_OUT) {
       cerr << "Memory out!\nExiting!\n";
       cout << "Memory out!\nExiting!\n";
       exit (-1);
     }
     
     // if current batch is UNSAT then the whole
     // problem is EXHAUSTED
     if (result == UNSATISFIABLE)
       result = EXHAUSTED;

     // prepeare the solver for the next iteration
     if (result != EXHAUSTED) {
       SAT_InterfaceCSolver_Recycle (*solver);
       cout << "Recycled the solver\n";
     }
  } while (result != EXHAUSTED);

 
  cout << "Total Number of solutions found: "<< totalSolutions << endl;
  
  SAT_InterfaceCSolver_ReleaseManager(*solver);
  delete solutionsBuffer;
  return 0;
}


unsigned int* createSolutionsBuffer(int interfaceSize,int batchSize) {
  // lineSize is the memory required for one solution
  int lineSize = Assignment::dataSize(interfaceSize);

  // allocate memory for solutions
  int solutionsBufferSize = batchSize*lineSize;
  unsigned int* solutionsBuffer = new unsigned int[solutionsBufferSize];
  
  // The buffer should consist of valid Assignments. Therefore
  // we create the appropriate header (the first two integers in 
  // each Assignment), and set the last integer to 0 so the last
  // bits (which are not a part of the assignments) are identical
  // (for comparison needs). By doing it outside the solver, it
  // only has to be done once, when creating the solver.
  for (int loop = 0; loop < batchSize; loop++) {
    *(solutionsBuffer + loop*lineSize) = lineSize;   
    *(solutionsBuffer + loop*lineSize + 1) = interfaceSize;
    *(solutionsBuffer + loop*lineSize + lineSize - 1) = 0;
  } 
  cout << "Solutions buffer size is " << 4*solutionsBufferSize << "B\n";
  return solutionsBuffer;
}



//This cnf parser function is based on the GRASP code by Joao Marques Silva
int loadClauses(char* filename,
			      vector<vector<int> > &clauses,
			      int& numOfVars) {
  char line_buffer[MAX_LINE_LENGTH];
  char word_buffer[MAX_WORD_LENGTH];
  set<int> clause_vars;
  set<int> clause_lits;

  // Delete the previous problem.
  clauses.clear();

  // Load the new problem.
  ifstream inp (filename, ios::in);
  if (!inp) {
    cerr << "Can't open input file: \"" << filename << "\"" <<  endl;
    exit(1);
    }
  while (inp.getline(line_buffer, MAX_LINE_LENGTH)) {
    if (inp.fail()) {
      cerr << "Too large an input line. Unable to continue..." << endl;
      exit(2);
    }
    
    if (line_buffer[0] == 'c') { continue; }
    else if (line_buffer[0] == 'p') {
      int var_num;
      int cl_num;
      
      int arg = sscanf (line_buffer, "p cnf %d %d", &var_num, &cl_num);
      if( arg < 2 ) {
	cerr << "Unable to read number of variables and clauses" << endl;
	exit(3);
      }
      numOfVars =  var_num; //first element not used.
    }
    else {                             // Clause definition or continuation
      char *lp = line_buffer;
      do {
	char *wp = word_buffer;
	while (*lp && ((*lp == ' ') || (*lp == '\t'))) {
	  lp++;
	}
	while (*lp && (*lp != ' ') && (*lp != '\t') && (*lp != '\n')) {
	  *(wp++) = *(lp++);
	}
	*wp = '\0';                                 // terminate string
	
	if (strlen(word_buffer) != 0) {     // check if number is there
	  int var_idx = atoi (word_buffer);
	  int sign = 0;
	  
	  if( var_idx != 0) {
	    if( var_idx < 0)  { var_idx = -var_idx; sign = 1; }
	    clause_vars.insert(var_idx);
	    clause_lits.insert( (var_idx << 1) + sign);
	  } 	
	  else {
	    //add this clause
	    if (clause_vars.size() != 0 && (clause_vars.size() == clause_lits.size())) { //yeah, can add this clause
	      vector <int> temp;
	      for (set<int>::iterator itr = clause_lits.begin();
		   itr != clause_lits.end(); ++itr)
		temp.push_back (*itr);
	      clauses.push_back(temp);
	    }
	    else {} //it contain var of both polarity, so is automatically satisfied, just skip it
	    clause_lits.clear();
	    clause_vars.clear();
	  }
	}
      }
      while (*lp);
    }
  }
  //    assert (clause_vars.size() == 0); 	//some benchmark has no 0 in the last clause
  if (clause_lits.size() && clause_vars.size()==clause_lits.size() ) {
    vector <int> temp;
    for (set<int>::iterator itr = clause_lits.begin();
	 itr != clause_lits.end(); ++itr)
      temp.push_back (*itr);
    clauses.push_back(temp);
  }
  clause_lits.clear();
  clause_vars.clear();
  return 0;
}


bool verify_solution(SAT_Manager mng, int* solution,int first) {
  int count = 0;
  for ( int cl_idx = SAT_GetFirstClause (mng); cl_idx >= 0; 
	cl_idx = SAT_GetNextClause(mng, cl_idx)) {
    count++;
    int len = SAT_GetClauseNumLits(mng, cl_idx);
    int lits[len+1];
    SAT_GetClauseLits( mng, cl_idx, lits);
    int i;
    for (i=0; i< len; ++i) {
      int v_idx = lits[i] >> 1; 
      if (v_idx >= first) {
	int sign = lits[i] & 0x1;
	int var_value = solution[v_idx-first];
	if( (var_value == 1 && sign == 0) ||
	    (var_value == 0 && sign == 1) ) 
	  break;
      }
    }
    if (i >= len) {
      cerr << "The solution checked does not satisfy the current clauses. " << endl;
      cerr << "Found a conflicting clause:" << cl_idx << endl;
      return false;
    }
  }
  //cout << "Verify Solution successful. checked " << count << " clauses.\n";
  return true;
}

void handle_result(SAT_Manager mng, int outcome, char * filename )
{
    char * result = "UNKNOWN";
    switch (outcome) {
    case SATISFIABLE:
	cout << "Instance satisfiable" << endl;
	result  = "SAT";
	cout << endl;
	break;
    case UNSATISFIABLE:
	result  = "UNSAT";
	cout << "Instance unsatisfiable" << endl;
	break;
    case TIME_OUT:
	result  = "ABORT : TIME OUT"; 
	cout << "Time out, unable to determing the satisfiablility of the instance";
	cout << endl;
	break;
    case MEM_OUT:
      result  = "ABORT : MEM OUT"; 
      cout << "Memory out, unable to determing the satisfiablility of the instance";
      cout << endl;
      break;
    case EXHAUSTED:
      result  = "EXHAUSTED"; 
      break;
    default:
	cerr << "Unknown outcome" << endl;
	exit (5);
    }	
    cout << "Max Decision Level\t\t\t" << SAT_MaxDLevel(mng) << endl;
    cout << "Num. of Decisions\t\t\t" << SAT_NumDecisions(mng)<< endl;
    cout << "Original Num Clauses\t\t\t" << SAT_InitNumClauses(mng) << endl;
    cout << "Original Num Literals\t\t\t" << SAT_InitNumLiterals(mng) << endl;
    cout << "Added Conflict Clauses\t\t\t" << SAT_NumAddedClauses(mng)- SAT_InitNumClauses(mng)<< endl;
    cout << "Added Conflict Literals\t\t\t" << SAT_NumAddedLiterals(mng) - SAT_InitNumLiterals(mng) << endl;
    cout << "Deleted Unrelevant clause\t\t" << SAT_NumDeletedClauses(mng) <<endl;
    cout << "Deleted Unrelevant literals\t\t" << SAT_NumDeletedLiterals(mng) <<endl;
    cout << "Number of Implication\t\t\t" << SAT_NumImplications(mng)<< endl;
    //other statistics comes here
    cout << "Total Run Time\t\t\t\t" << SAT_GetCPUTime(mng) << endl << endl;
    cout << "RESULT:\t" << filename << " " << result << " RunTime: " << SAT_GetCPUTime(mng)<< endl;
}
