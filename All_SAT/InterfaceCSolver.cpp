// InterfaceCSolver.cpp
#include "InterfaceCSolver.h"
#include <fstream>

int solverRuns = 0;


InterfaceCSolver::InterfaceCSolver() {
  _lostSolution = NULL;
}

void InterfaceCSolver::init(unsigned int* results) {
  _generatedClauses.clear();
  if (_params.firstRun) {
    _params.timer = new Timers(4);
    CDatabase::init();
    _stats.num_free_variables	= num_variables();
    for (int i=0; i<variables().size(); ++i) 
      _assignment_stack.push_back(new vector<int>);

    _var_order.resize( num_variables());
    _last_var_lits_count[0].resize(variables().size());
    _last_var_lits_count[1].resize(variables().size());
  }
  
  _stats.is_solver_started 	= true;
  _stats.start_cpu_time 	= current_cpu_time();
  _stats.start_world_time	= current_world_time();
  if (!results) {
    cerr << "asap_solver.cpp::init(Solution* results) : Results vector invalid!\n";
    exit (-1);
  }
  _resultsBuffer = results;
}


int InterfaceCSolver::preprocess(void) 
{
   //1. detect all the unused variables
  if (_params.firstRun) {
    vector<int> un_used;
    for (int i=1, sz=variables().size(); i<sz; ++i) {
      CVariable & v = variable(i);
      if (v.lits_count(0) == 0 && v.lits_count(1) == 0 && !inInitAssginment(i)) {
	un_used.push_back(i);
	v.value() = 1; 
	v.dlevel() = -1;
      }
    }
    num_free_variables() -= un_used.size();
    if (_params.verbosity>1 && un_used.size() > 0) {
      cout << un_used.size()<< " Variables are defined but not used " << endl;
      if (_params.verbosity > 2) {
	for (int i=0; i< un_used.size(); ++i)
	  cout << un_used[i] << " ";
	cout << endl;
      }
    }
  }
  //2. detect all variables with only one phase occuring
  // Feature is disabled for important variables
  // in order to get all possible solutions  
  
  vector<int> uni_phased;
  markUniPhased(uni_phased,1,_params.interfaceL - 1);
  markUniPhased(uni_phased,_params.interfaceR+1,variables().size() - 1);
//  for (int i=1, sz=variables().size(); i<sz; ++i) {
  
  if (_params.verbosity>1 && uni_phased.size() > 0) {
    cout << uni_phased.size()<< " Variables only appear in one phase." << endl;
    if (_params.verbosity > 2) {
      for (int i=0; i< uni_phased.size(); ++i)
	cout << uni_phased[i] << " ";
      cout <<endl;
    }
  }
    
  
  //3. detect all the unit clauses
  for (ClauseIdx i=0, sz=clauses().size(); i<sz; ++i) {
    if (clause(i).num_lits() == 1){ //unit clause
      queue_implication(find_unit_literal(i), i);
    }
  }
  
  // 4. mark all vars that are in initial assignment
  int i,val;
  if (_params.initialAssignment) {
    for (i = _params.initialAssignment-> numOfVars(); i>0; i--) {
      val = _params.initialAssignment->valueOfVar(i);
      if (val != 2) {
	queue_implication(i*2+!val, NULL_CLAUSE);
	
      }
    }
  }
  if(deduce()==CONFLICT) return CONFLICT;
  return NO_CONFLICT;    
}
 
SAT_StatusT InterfaceCSolver::solve(unsigned int* results,
			    AssignmentStack** stopPoint,unsigned long int *solFound) {

  solverRuns++;
  *solFound = 0;
  init(results);
  _params.timer->updateTimer(SOLVER_WAIT);
  //preprocess 
  if(preprocess()==CONFLICT) {
    _params.timer->updateTimer(SOLVER_PREPROCESS);
    _stats.outcome = UNSATISFIABLE;
  } else {//the real search
    _params.timer->updateTimer(SOLVER_PREPROCESS);
    if (_params.startingPointRequired) {
      int result = activateStartingPoint();
      _params.timer->updateTimer(SOLVER_STACKLOAD);
      real_solve(stopPoint, solFound,result);
    } else 
      real_solve(stopPoint, solFound,NO_CONFLICT);
  }
  _params.timer->updateTimer(SOLVER_SOLVE);
  _stats.finish_cpu_time = current_cpu_time();
  _stats.finish_world_time = current_world_time();
  _params.firstRun = false;

  return (SAT_StatusT)_stats.outcome;
}

void InterfaceCSolver::real_solve(AssignmentStack** stopStack,
				  unsigned long int *solutionNum,
				  int deduced) {
  *solutionNum = 0;
  bool solutionFound = false;
  int lineSize = Assignment::dataSize(_params.interfaceSize);
  int bufferOffset = 0;
  Assignment solInterface;

  ////////////////////////////////////////////////
  // verify that so far everything is ok (activateStartingPoint)
  while (deduced==CONFLICT) { 
    int blevel;
    deduced = handleConflict(blevel);
    if (blevel <= 0) {
      _stats.outcome = UNSATISFIABLE;
      return;
    }
  }

  cout << "Starting first brach.\n";

  while(1) {
    run_periodic_functions();
    updateMaxMemory();
    if (decide_next_branch()) {
      deduced = deduce();
      while (deduced==CONFLICT) {
	int blevel;
	deduced = handleConflict(blevel);
	if (blevel <= 0) {
	  if (_stats.outcome == MEM_OUT)
	    return;
	  if  (_stats.outcome == SATISFIABLE) 
	    _stats.outcome = EXHAUSTED;
	  else
	    _stats.outcome = UNSATISFIABLE;
	  return;
	}
      }
      if (*solutionNum == _params.solutionsRequired) {
	grabDecisionStack(stopStack);
	return;
      }
    } else {
      _stats.outcome = SATISFIABLE;
      solutionFound = true;

      // copy the solution interface	
      solInterface.setData(_resultsBuffer+bufferOffset);
      bufferOffset += lineSize;
      for (int loop2 = 1,interfaceP = _params.interfaceL;
	   loop2 <= _params.interfaceSize; loop2++) {
	if (solInterface.setVarValue
	    (loop2,variable(interfaceP).value()) 
	    == -2)
	  cerr << "variable " << loop2 << " assignment = " 
	       <<variable(interfaceP).value()
	       << endl;
	interfaceP++;
      }
      

      (*solutionNum) ++;
      if (_params.interfaceDecisionLevel < 1) {
	_stats.outcome = EXHAUSTED;
	return;
      }
            
      // flip highest interface decision
      int flippedDecision = flipDecisionVar(_params.interfaceDecisionLevel);
      back_track(_params.interfaceDecisionLevel);
      queue_implication(flippedDecision, NULL_CLAUSE);
    }
    
    if (time_out()) { 
      _stats.outcome = TIME_OUT;
      return; 
    }
    if (_stats.is_mem_out) {
      _stats.outcome = MEM_OUT;
      return; 
    }	    
  }
}



int InterfaceCSolver::analyzeConflict (bool toDecision) {
  assert (_conflicts.size() == 1);
  assert (_implication_queue.empty());
  assert (_num_marked == 0);
  static int entries = 0;
  ++ entries;
 
  bool endTerm = true;       // normal analysis to 1UIP unless toDecision
  int back_level = 0;
  ClauseIdx conflict_cl = -1;
  bool synchronousBackTrack = false;
  
  ClauseIdx cl = _conflicts[0];
  clearConflictLits();
  int max_dlevel = find_max_clause_dlevel(cl); // find the max level, which is the back track level
  
  int firstRootIndex = findFirstRootIndex(max_dlevel);
  synchronousBackTrack = (firstRootIndex);             // if there is such root, no backtracking to level 0;
  if (synchronousBackTrack && toDecision) {
    cerr << "InterfaceCSolver::analyzeConflict - synchronousBackTrack "
	 << "&& toDecision are not allowed!\nExiting!\n";
    exit(-1);
  }
  bool first_time = true; //its the beginning
  bool prev_is_uip = false;
  mark_vars_at_level (cl, -1 /*var*/, max_dlevel, firstRootIndex);  
  
  vector <int> & assignments = *_assignment_stack[max_dlevel];
  for (int j = assignments.size() - 1; j >= 0; --j ) { //now add conflict lits, and unassign vars
    int assigned = assignments[j];
    if (variable(assigned>>1).is_marked()) {
      variable(assigned>>1).clear_marked();
      -- _num_marked; 
      ClauseIdx ante_cl = variables()[assigned>>1].get_antecedence();
      if (toDecision)
	endTerm = (j == 0);   // analysis to the decision var
      if ( (_num_marked == 0 && 
	    (!first_time) && 
	    (prev_is_uip == false) &&
	    endTerm)
	   || ante_cl==NULL_CLAUSE) { //conclude add clause
	assert (variable(assigned>>1).in_new_cl()==-1);
	_conflict_lits.push_back(assigned^0x1);  // add this assignment's reverse, e.g. UIP
	//addUserConflictClause();
	conflict_cl = addConflictClause();
	if (conflict_cl < 0)
	  return -1;              // memory out
	prev_is_uip = true;
	break; //if do this, only one clause will be added.
      }
      else  {
	prev_is_uip = false;
	if ( ante_cl != NULL_CLAUSE ) 
	  mark_vars_at_level(ante_cl, assigned>>1/*var*/, max_dlevel,firstRootIndex);
	else {
	  cerr << "InterfaceCSolver::analyzeConflict - Marked literals "
	       << " left  when reaching ante = NULL_CLAUSE.\n ERROR, exiting.\n";
	  exit (-1);
	}
	first_time = false;
      }
    } 
    
  }
  
  if (conflict_cl != -1) 
    _generatedClauses.push_back(conflict_cl);
  
  back_level = max_dlevel;
  

  assert (_num_marked == 0);
  
  _conflicts.clear();
  //		cout << "clearing conflicts! "  << endl;
  clearConflictLits();
  return back_level;
}	
						    

void InterfaceCSolver::selectLowestMaxDlevelClause(ClauseIdx* idx, int* level) {
  int max_dlevel = 0;
  ClauseIdx cl;
  
  // if (_conflicts.size() > 1) {
  // 	for (vector<ClauseIdx>::iterator it = _conflicts.begin(); it != _conflicts.end(); it++) {
  // 		ClauseIdx tmp = *it;
  // 	    int tmp_max_dlevel = find_max_clause_dlevel(tmp);
  // 		if (tmp_max_dlevel != 0 && tmp_max_dlevel > max_dlevel) { //don't choose clauses resulting from bcp
  // 		  cl = tmp;
  // 		  max_dlevel = tmp_max_dlevel; 
  // 		}
  // 	}
	
  // 	cout << "InterfaceCSolver::handleConflict - final dlevel is " << max_dlevel << endl;
  // 	if (_conflicts.size() > 1) {
  // 	  _conflicts.clear();
  // 	  _conflicts.push_back(cl);
  // 	  cout << "Cleared almost all conflicts; only one remains" << endl;
  // 	}

  // } else {
	cl = _conflicts[0];
	max_dlevel = find_max_clause_dlevel(cl);
  // }
  
  if (max_dlevel < dlevel()) {
	cerr << "InterfaceCSolver::handleConflict - initial backtrack is " 
		 << "more than one level.\nERROR, exiting.\n.";
	exit (-1);
  }

  *idx = cl;
  *level = max_dlevel;
}

int InterfaceCSolver::handleConflict(int &blevel) {
  
  cout << "handle conflict.\n";
  //  dump_assignment_stack();
  int deduced;
  int back_level;
  bool synchBackTrack;
  int &i_d_l = _params.interfaceDecisionLevel;
  // while (_conflicts.size() ) {
  while (_conflicts.size() || _generatedClauses.size()) {
    if (_conflicts.size()) {
	  // MAB: find 'min' max_dlevel over all conflicts

	  // int max_dlevel = 99999999;
	  // ClauseIdx cl;

	  // selectLowestMaxDlevelClause(&max_dlevel,&cl);
	  
	  // MAB: end changes
	  
      ClauseIdx cl = _conflicts[0];
      int max_dlevel = find_max_clause_dlevel(cl);
      if (max_dlevel < dlevel()) {
	cerr << "InterfaceCSolver::handleConflict - initial backtrack is " 
	     << "more than one level.\nERROR, exiting.\n.";
	exit (-1);
      }
      synchBackTrack = (max_dlevel <= i_d_l); //(actually == )
      if (synchBackTrack) {
	back_level = synch_back_track();
	if (back_level <= 0) {
	  blevel = 0;
	  return CONFLICT;
	}
      } else {
	back_level = analyzeConflict(false); // == max_dlevel
	if (back_level <= 0) {
	  blevel = 0;
	  return CONFLICT;
	}
	back_track(back_level);  
	ClauseIdx conflictClause = _generatedClauses.back();
	int l = find_unit_literal(conflictClause);
	if (!l && !synchBackTrack) {
	  cerr << "InterfaceCSolver::handleConflict - no asserting clause "
	       << "and not synchronousBackTrack.\n ERROR, exiting.\n";
	  exit (-1);
	}
      }
    } else {
      ClauseIdx oldConflictClause = _generatedClauses.back();
      _generatedClauses.pop_back();
      ClauseIdx ante = oldConflictClause;
      int lit = find_unit_literal(oldConflictClause);
      if (!lit)
	continue; 
      int dl = find_max_clause_dlevel(oldConflictClause);
      if (dl >= i_d_l)
	back_level = dl + 1; 
      else {
	back_level = i_d_l + 1;
	back_track(back_level);
	queue_implication(lit,NULL_CLAUSE);
	dlevel()++;
	deduced = deduce();
	if (deduced == CONFLICT) {
	  if (_conflicts.size() > 1) {
		cout << "Conflict size: " << _conflicts.size() << endl;
		ClauseIdx tmp1;
		int tmp2 = 9999999;
		selectLowestMaxDlevelClause(&tmp1, &tmp2);
	  }
	  back_level = analyzeConflict(true); //ToDecision();
	  if (back_level <= 0) {
	    cerr << "InterfaceCSolver::handleConflict() - ERROR, Exiting!\n";
	    exit (-1);
	    blevel = 0;
	    return CONFLICT;
	  }
	  back_track(back_level);
	  ClauseIdx newConflictClause = _generatedClauses.back();
	  vector<int> resolutionLits;
	  joinClauses(oldConflictClause,newConflictClause,resolutionLits);
	  int resolCl = add_clause(&(resolutionLits.begin())[0], resolutionLits.size());
	  if (resolCl < 0) {
	    blevel = 0;
	    return CONFLICT;
	  }
	  _generatedClauses.push_back(resolCl);
	  
	  back_level = find_max_clause_dlevel(resolCl);
	  lit = flipDecisionVar(back_level);
	  back_track(back_level);
	  int dvar = find_unit_literal(resolCl) >> 1; 
	  if (dvar == (lit >>1)) { // do not implicate the decision var
	    lit = 0;
	  }
	  ante = -1;
	}
      }
      if (back_level <= 0) {
	blevel = 0;
	return CONFLICT;
      }
      
      back_track(back_level);
      if (lit) {
	queue_implication(lit, ante);
	deduced = deduce();
      }
    }
  }
  blevel = back_level;
  return NO_CONFLICT; // no conflicts here
}




int InterfaceCSolver::synch_back_track() {
  int &dl = dlevel();
  int deduced,lit,blevel;
  
  do {
    //_conflicts.clear();
    blevel = analyzeConflict(false); // to 1UIP
    if (blevel <= 0)
      return 0;
    if (dl == 0)
      return 0;
    lit = flipDecisionVar(dl);
    back_track(dl);
  
    int ulit = 0;
    if (_generatedClauses.size())
      ulit = find_unit_literal(_generatedClauses.back());
    if ((ulit >> 1) == (lit >> 1)) {
      lit = 0;
    } 
                  
    if (lit)
      queue_implication(lit,NULL_CLAUSE);
    deduced = deduce();
  } while (deduced == CONFLICT);
  return dl + 1;
}

// assumes none of the clauses is a tautology
// might return a taugology
void InterfaceCSolver::joinClauses(ClauseIdx c1,ClauseIdx c2,vector<int> &res) {
   hash_map<int,int> varMap;
   vector<int> cl1,cl2;
   int pivot = 0;

   getClauseLits(c1,cl1);
   getClauseLits(c2,cl2);
   res.clear();
   for (int i = 0, size = cl1.size(); i < size; i++) {
     pair<int,int> literal((cl1[i]>>1),cl1[i]);
     varMap.insert(literal);
   }
   hash_map<int,int>::iterator it;
   for (int i = 0, size = cl2.size(); i < size; i++) {
     int l1 = 0;
     int l2 = cl2[i];
     int var = l2 >> 1;
     it = varMap.find(var);
     if (it != varMap.end()) {
       l1 = (*it).second;
       if (l1 != l2) {
	 if (pivot != 0) {
	   cerr << "InterfaceCSolver::joinClauses - trying to join two clauses "
		<< "with more than one pivot (ERROR, Exiting).\n";
	   exit (-1);
	 } else { // l1 == !l2
	   pivot = (var);
	   varMap.erase(it);
	 }
       } else {  // l1==l2
	 res.push_back(l1);
	 varMap.erase(it);
       }
     } else  { // var(l1) != var(l2)
       res.push_back(l2);
     }
   }
   if (pivot == 0) {
     cerr << "InterfaceCSolver::joinClauses - trying to join two clauses "
	  << "with no pivot (ERROR, Exiting).\n";
     exit (-1);
   }
   hash_map<int,int>::const_iterator i1 = varMap.begin();
   hash_map<int,int>::const_iterator iEnd = varMap.end();
   while (i1 != iEnd) {
     res.push_back((*i1).second);
     i1++;
   }
}



bool InterfaceCSolver::decide_next_branch(void)
{
    ++_stats.num_decisions;
    if (!_implication_queue.empty()) { // no need for decision
      _max_score_pos = 0; //reset the max_score_position.
      return _implication_queue.front().first;
    }
    int s_var=0,interfaceDecision=0;
    if (_dlevel <= _params.interfaceDecisionLevel)
      s_var = interfaceDecision = makeInterfaceDecision();
    if (!s_var)
      s_var = makeVSIDSdecision();
    if (s_var<2) //no more free vars, solution found,  quit
	return false;
    ++dlevel();
    if (interfaceDecision) 
      _params.interfaceDecisionLevel = dlevel();
    if (dlevel() > _stats.max_dlevel) 
      _stats.max_dlevel = dlevel();
    queue_implication(s_var, NULL_CLAUSE);
    
    return true;
}

// Assumes a new decision is needed (implication queue empty)
int InterfaceCSolver::makeInterfaceDecision() {
  int s_var = 0;
  bool found = false;
  int position = _variables.size() + 1;
  
  for (int i = _params.interfaceL; i <= _params.interfaceR ;i++) {
    if ((_variables[i].value() == UNKNOWN) && 
	(_variables[i].var_score_pos() < position)){
      position = _variables[i].var_score_pos();
      s_var = i;
    }
  }
  if (s_var == 0)
    return 0;
  int sign = _variables[s_var].score(0) > _variables[s_var].score(1) ? 0 : 1;
  s_var = s_var + s_var + sign;
  return (s_var);
}

int InterfaceCSolver::makeVSIDSdecision() {
  int s_var = 0;
  for (int i=_max_score_pos; i<_var_order.size(); ++i) {
    CVariable & var = *_var_order[i].first;
    if (var.value()==UNKNOWN) {
      //move the max score position pointer
      _max_score_pos = i;
      //make some randomness happen
      if (--_params.randomness < _params.base_randomness)
	_params.randomness = _params.base_randomness;
      
      int randomness = _params.randomness;
      if (randomness >= num_free_variables())
	randomness = num_free_variables() - 1;
      int skip =random()%(1+randomness);
      int index = i;
      while (skip > 0) {
	++index;
	if (_var_order[index].first->value()==UNKNOWN)
	  --skip;
      }
      CVariable * ptr = _var_order[index].first;
      assert (ptr->value() == UNKNOWN);
      int sign = ptr->score(0) > ptr->score(1) ? 0 : 1;
      int var_idx = ptr - (&(variables().begin())[0]);
      s_var = var_idx + var_idx + sign;
      break;
    }
  }
  return s_var;
}

void InterfaceCSolver::updateMaxMemory() {
  static int counter = 1;
  
  if ((counter % 200000) != 0) {
    counter++;
    return;
  }
  
  counter = 1;
  int mem = CDatabase::mem_usage();
  if (mem > _maxMemory) {
    _maxMemory = mem;
    cerr << "Memory used = " << mem << endl;
    cout << "Memory used = " << mem << endl;
  }
}

int  InterfaceCSolver::flipDecisionVar(int dlevel) {
  int flippedVar, flippedVarValue;
  int dVar = (*_assignment_stack[dlevel])[0];
  return dVar^0x1;
}

void InterfaceCSolver::addUserConflictClause() {
  int clauseSize = _conflict_lits.size();
  if ((clauseSize > 0) && (clauseSize <= _maxUsrConflictSize)) {
    vector<int> newClause;
    for (int loop = 0; loop < clauseSize; loop++) 
      newClause.push_back(_conflict_lits[loop]);
    _usrConflictClauses->push_back(newClause);
    //////////////////////////////////////////////////////////
  }
}
int InterfaceCSolver::addConflictClause() {
  int conflict_cl = add_clause(&(_conflict_lits.begin())[0], _conflict_lits.size());
  if (conflict_cl < 0 ) {
    _stats.is_mem_out = true;
    _conflicts.clear();
	cout << "clearing conflicts! " << endl;
    assert (_implication_queue.empty());
  } else
    _conflict_lits.pop_back();  // remove for continue use of _conflict_lits
  return conflict_cl;
}

void InterfaceCSolver::clearConflictLits() {
  while (_conflict_lits.size()) {
    CVariable & var = variable(_conflict_lits.back() >> 1);
    _conflict_lits.pop_back();
    var.set_in_new_cl(-1);
  }
}

void InterfaceCSolver::setStartingPoint (AssignmentStack* assStack) {
  _params.startingPointRequired = true;
  _params.startingPointStack = assStack;
  
}

void InterfaceCSolver::setInitialAssignment (Assignment* assignment) {
  _params.initialAssignment = assignment;
}

void InterfaceCSolver::setSolutionsNum (int num) {
  if ((num < -1) || (num == 0)) {
    cerr << "void InterfaceCSolver::setSolutionsNum (int num) : Number of solutions " 
	 << num << " is not allowed\nExiting.";
    exit (-1);
  }
  _params.solutionsRequired = num;
}

void InterfaceCSolver::grabDecisionStack(AssignmentStack** stopStack) {
  unsigned int stackLevels, *levelSizes;
  unsigned int* stackData;
  int currentLit;
  
  stackLevels = dlevel() + 1;
  levelSizes = new unsigned int[stackLevels];
  for (int i=0; i< stackLevels; ++i)
    levelSizes[i] = (*_assignment_stack[i]).size();
  *stopStack = new AssignmentStack(stackLevels,levelSizes);
  
  stackData = (*stopStack)->getData();
  currentLit = stackLevels + 1;
  
  for (int i=0; i<  stackLevels; ++i) {
    for (int j=0; j<(*_assignment_stack[i]).size(); ++j ) {
      stackData[currentLit] = (*_assignment_stack[i])[j];
      currentLit++;
    }
  }
  delete levelSizes;
}

int InterfaceCSolver::implicateConflict(ClauseIdx conflict_cl, int back_level,
			       bool synchronousBackTrack,int flippedDecision) 
{
  if (!synchronousBackTrack) {
    int dl = find_max_clause_dlevel(conflict_cl);
    if (dl >= _params.interfaceDecisionLevel) 
      back_level = dl + 1;
    else 
      back_level = _params.interfaceDecisionLevel + 1;    
    back_track(back_level);
  }
  int lit = find_unit_literal(conflict_cl);
  if (lit) {
    queue_implication(lit, conflict_cl);
  } else if (synchronousBackTrack) {
    queue_implication(flippedDecision, NULL_CLAUSE);
  } else {
    cerr << "InterfaceCSolver::implicateConflict - no unit literal and non synchronousBackTrack.\n";
    exit (-1);
  }
  return back_level;
}


int InterfaceCSolver::activateStartingPoint() {					
  int currentLevel, litIndex;
  AssignmentStack *assStack = _params.startingPointStack;
  int result;
  
  result = NO_CONFLICT;
  dlevel() = -1;
  for (int levels = assStack->numOfLevels(),currentLevel = 0;
       currentLevel < levels ; currentLevel++) {
    int levelSize = assStack->sizeOfLevel(currentLevel);
    if (levelSize == 0) {
      if (currentLevel == 0)
	dlevel() = 0;
      else {
	cerr << "Level greater than 0 must be of size > 0\n";
	exit (-1);
      }
      continue;
    }
    // handle a decision variable
    int lit = assStack->getLit_l_i(currentLevel,0);
    if (_variables[(lit) >> 1].value()  == UNKNOWN) { // normal insertion
      dlevel()++;
      queue_implication(lit, NULL_CLAUSE);
      if (deduce()==CONFLICT) {
	result = CONFLICT;
	break;
      }
    } else {
      if (_variables[(lit) >> 1].value()  != (lit % 2)) {// no conflict
	// put all the implication in currentLevel - 1
	// move all the rest of the stack one level down
	// hence, don't inc dlevel()
      } else {                                 // a conflict
	// stop loading stack so a new decision will be made
	result = NO_CONFLICT;
	break;
      }
    }
    if (dlevel() == -1)
      dlevel() = 0;
    // handle implications
    for (litIndex = 1; litIndex < levelSize; litIndex++) {
      lit = assStack->getLit_l_i(currentLevel,litIndex);
      if (_variables[(lit) >> 1].value()  == UNKNOWN) { // normal insertion
	queue_implication(lit, NULL_CLAUSE);
	if (deduce()==CONFLICT) {
	  result = CONFLICT;
	  break;
	}
      } else if (_variables[(lit) >> 1].value()  == (lit % 2)) {// a conflict
	// ignore all level down to the conflict implication
	result = NO_CONFLICT;
	break;
      } else {
	// no conflict, just ommit it.
      }
    }
  }
  // update interface decision level
  if (_params.interfaceSize) {
    for (int loop = dlevel(); loop >= 0; loop--) {
      int var = (assStack->getLit_l_i(loop,0)) >> 1;
      if ((var >= _params.interfaceL) && (var <= _params.interfaceR)) {
	_params.interfaceDecisionLevel = loop;
	break;
      }
    }
  }
  return result;
}


bool InterfaceCSolver::setConflictClauses(vector<vector<int> > * clauses,int maxSize) {
  int num = clauses->size();
  //  cout << "Number of clauses to add: " << num << endl;
  for (int loop = 0; loop < num; loop++){
    /*
      cout << "Adding: ";
      for (int i = 0; i < (*clauses)[loop].size(); i++)
      cout << ((*clauses)[loop])[i] << ",";
      cout << endl;
    */
    if (add_clause(&((*clauses)[loop].begin())[0],(*clauses)[loop].size()) < 0)
      return false;
  }
  _usrConflictClauses = clauses;
  _maxUsrConflictSize = maxSize;
  return true;
}

void InterfaceCSolver::setInterfaceSize(int Lisize,int Risize,int bsize, bool fullBody) {
  if (Lisize < 0) {
    cerr << "void InterfaceCSolver::setInterfaceSize : Lisize < 0 is not allowed.\n"
	 << "Exiting!\n";
    exit (-1);
  }
  if (Risize < 0) {
    cerr << "void InterfaceCSolver::setInterfaceSize : Risize < 0 is not allowed.\n"
	 << "Exiting!\n";
    exit (-1);
  }
  if (Risize < Lisize) {
    cerr << "Risize < Lisize is not allowed.\nExiting.\n";
    exit(-1);
  }
  if (bsize < 0) {
    cerr << "void InterfaceCSolver::setInterfaceSize : bsize < 0 is not allowed.\n"
	 << "Exiting!\n";
    exit (-1);
  }

  _params.leftInterfaceSize = Lisize;
  _params.interfaceSize = Risize;
  _params.bodySize = bsize;
  _params.interfaceL = bsize + 1;
  _params.fullBody = fullBody;
  if (!fullBody)
    _params.interfaceL += Lisize;
  _params.interfaceR = _params.interfaceL + Risize - 1;
    
}

bool InterfaceCSolver::inInitAssginment(int i) {
  if (i > _params.leftInterfaceSize)
    return false;
  if (_params.initialAssignment)
    if (_params.initialAssignment->valueOfVar(i) != 2) 
      return true;
  return false;    
}

void InterfaceCSolver::verifyCurrentSolution() {
    for ( int cl_idx = getFirstClause(); cl_idx >= 0; 
	  cl_idx = getNextClause(cl_idx)) {
	int len = clause(cl_idx).num_lits();
	int i;
	for (i=0; i < len; ++i) {
	    int v_idx = clause(cl_idx).literal(i).s_var() >> 1;
	    int sign = clause(cl_idx).literal(i).s_var() & 0x1;
	    int var_value = variable(v_idx).value();
	    if( (var_value == 1 && sign == 0) ||
		(var_value == 0 && sign == 1) ) break;
	}
	if (i >= len) {
	    cerr << "Verify Satisfiable solution failed, please file a bug report, thanks. " << endl;
	    cout << "at solution: ";
		//	    dump_assignment_stack();
	    exit(-1);
	}
    }
    // cout << "Verify Solution successful.\n";
}

void InterfaceCSolver::recycle() {
  //clean up the original var_stats.
  for (int i=1; i<variables().size(); ++i) {
    variable(i).score(0) = 0;
    variable(i).score(1) = 0;
    _last_var_lits_count[0][i] = 0;
    _last_var_lits_count[1][i] = 0;
   
  }
  update_var_stats();
  _conflicts.clear();
  cout << "clearing conflicts! " << endl;
  clearConflictLits();
 
  back_track(0);  
  restoreInitValues();
}
// a copy of the constructor. Sets the value of the parameters to 
// the initial values.
void InterfaceCSolver::restoreInitValues() {
  dlevel()=0;
  _params.time_limit 		= 3600 * 48;		//2 days
  _params.decision_strategy 	= 0;
  _params.preprocess_strategy = 0;
  _params.allow_clause_deletion 		= false;
  _params.clause_deletion_interval		= 5000;
  _params.max_unrelevance			= 20;
  _params.min_num_clause_lits_for_delete	= 100;
  _params.max_conflict_clause_length		= 5000;
  _params.bubble_init_step 	= 32;
  
  _params.randomness		= 0;
  _params.verbosity		= 0;
  
  _params.back_track_complete	= true;
  _params.allow_multiple_conflict		= false;
  _params.allow_multiple_conflict_clause	= false;
  
  _params.allow_restart	= false;        // must run in order	
  _params.next_restart_time	= 50;		//this set the first restart time (in seconds)
  _params.restart_time_increment	= 0;
  _params.restart_time_incr_incr = 0;
  
  _params.next_restart_backtrack= 0;
  _params.restart_backtrack_incr= 40000;		
  _params.restart_backtrack_incr_incr = 100;
  
  _params.restart_randomness	= 0;	
  _params.base_randomness	= 0;
  _params.randomness		= 0;
  
  _stats.is_solver_started	= false;
  _stats.outcome		= UNKNOWN;
  _stats.is_mem_out		= false;
  _stats.start_cpu_time	= 0;	   	
  _stats.finish_cpu_time	= 0;
  _stats.last_cpu_time	= 0;	   	
  
  _stats.start_world_time	= 0;
  _stats.finish_world_time	= 0;
  
  _stats.num_decisions 	= 0;
  _stats.num_backtracks	= 0;
  _stats.max_dlevel 		= 0;
  _stats.num_implications   	= 0;
  
  _num_marked 		= 0;
  _dlevel			= 0;		
  _stats.total_bubble_move 	= 0;
  
  _maxUsrConflictSize = -1; // no user cluases will be added that way
  _params.startingPointRequired = false;
  _params.initialAssignment = NULL;
  _params.solutionsRequired = 1;
  _params.interfaceSize = 0;
  _params.leftInterfaceSize = 0;
  _params.bodySize = 0;
  _params.interfaceL = 0;
  _params.interfaceR = 0;
  _params.fullBody = false;
  _params.interfaceDecisionLevel = 0;
}

/*
// returns true - solution was skipped
//         false - solution not skipped (yet)
bool InterfaceCSolver::skippedSolution() {
  int fl = -1, fi = -1;
  if (!_lostSolution)
    return false;
  int first = variables().size() - _params.interfaceSize;
  // check level 0 (all must fit)
  for (int i = 0, sz = _assignment_stack[0]->size(); i<sz; i++) {
    int var = (*(_assignment_stack[0]))[i] >> 1;
    if (var >= first) {
      int val = variable(var).value();
      if (val != _lostSolution[var-first]) {
	fl = 0;
	fi = i;
	break;
      }
    }
  }
  if (fl == -1) {
    // check the rest of the levels
    for (int i = 1,sz = _params.interfaceDecisionLevel; i <= sz; i++) {
      int var = (*(_assignment_stack[i]))[0] >> 1;
      int val = variable(var).value();
      if (val == _lostSolution[var-first])
	for (int j = 1, lsz = _assignment_stack[i]->size(); j<lsz; j++) {
	  int var = (*(_assignment_stack[i]))[j] >> 1;
	  if (var >= first) {
	    int val = variable(var).value();
	    if (val != _lostSolution[var-first]) {
	      fl = i;
	      fi = j;
	      break;
	    }
	  }
	}
      else if ((val == 1) && (_lostSolution[i] == 0)) {
	fl = i;
	fi = 0;
	break;
      } else //(val == 0) && (_lostSolution[i] == 1)
	return false; // not missed yet
    }
  }
  if (fl != -1) {
    cout << "Solution:";
    for (int i = 0; i < _params.interfaceSize; i++)
      cout << i+1 << ":" << _lostSolution[i] << ", ";
    cout << endl << "skipped at level " << fl << endl;
    cout << "Literal is:" << (*_assignment_stack[fl])[fi] << endl;
    cout << "Entries = " << entries 
	 << ", decisions = " << _stats.num_decisions << endl;
    dump_assignment_stack();
    return true;
  }
  return false; // interface variables does not show skipping yet
}
*/



void InterfaceCSolver::getClauseLits(int clIdx,vector<int> &lits) {
  lits.clear();
  for (int i=0, sz= clause(clIdx).num_lits(); i<sz;  ++i)
    lits.push_back(((clause(clIdx).literals())[i]).s_var());
}
void InterfaceCSolver::setLostSolution(int* solution) {
  _lostSolution = solution;
  }



SAT_Manager SAT_InterfaceCSolver_InitManager() {
  InterfaceCSolver * solver = new InterfaceCSolver;
  return (SAT_Manager)solver;
}

SAT_StatusT SAT_InterfaceCSolver_Solve(SAT_Manager mng, unsigned int* results,
			  AssignmentStack** stopPoint,unsigned long int *solFound) {
  InterfaceCSolver* solver = (InterfaceCSolver*) mng;
  return solver->solve(results,stopPoint,solFound);
}

void SAT_InterfaceCSolver_ReleaseManager(SAT_Manager mng)
{
    InterfaceCSolver * solver = (InterfaceCSolver*) mng;
    delete solver;
}
void SAT_InterfaceCSolver_SetLostSolution(SAT_Manager mng,int* solution) 
{
    InterfaceCSolver * solver = (InterfaceCSolver*) mng;
    solver->setLostSolution(solution);
}

void SAT_InterfaceCSolver_Recycle(SAT_Manager mng) {
  InterfaceCSolver * solver = (InterfaceCSolver*) mng;	
  solver->recycle();
}

bool SAT_InterfaceCSolver_SetConflictClauses(SAT_Manager mng,
			    vector<vector<int> >*_conflictClauses,
			    int maxSize) {
  InterfaceCSolver * solver = (InterfaceCSolver*) mng;	
  return (solver->setConflictClauses(_conflictClauses, maxSize));
}


void SAT_InterfaceCSolver_RequiredSolutions(SAT_Manager mng, int i){
  InterfaceCSolver * solver = (InterfaceCSolver*) mng;	
  solver->setSolutionsNum(i);
}

void SAT_InterfaceCSolver_SetInterfaceSize(SAT_Manager mng, int Lisize,
			  int Risize,int bsize,bool fullBody){
  InterfaceCSolver * solver = (InterfaceCSolver*) mng;	
  solver->setInterfaceSize(Lisize,Risize,bsize,fullBody);
}

void SAT_InterfaceCSolver_SetStartingPoint(SAT_Manager mng, AssignmentStack* assStack) {
  InterfaceCSolver * solver = (InterfaceCSolver*) mng;	
  solver->setStartingPoint(assStack);
}
