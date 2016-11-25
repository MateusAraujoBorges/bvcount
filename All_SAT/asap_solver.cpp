/* =========FOR INTERNAL USE ONLY. NO DISTRIBUTION PLEASE ========== */

/*********************************************************************
 Copyright 2000-2001, Princeton University.  All rights reserved. 
 By using this software the USER indicates that he or she has read, 
 understood and will comply with the following:

 --- Princeton University hereby grants USER nonexclusive permission 
 to use, copy and/or modify this software for internal, noncommercial,
 research purposes only. Any distribution, including commercial sale 
 or license, of this software, copies of the software, its associated 
 documentation and/or modifications of either is strictly prohibited 
 without the prior consent of Princeton University.  Title to copyright
 to this software and its associated documentation shall at all times 
 remain with Princeton University.  Appropriate copyright notice shall 
 be placed on all software copies, and a complete copy of this notice 
 shall be included in all copies of the associated documentation.  
 No right is  granted to use in advertising, publicity or otherwise 
 any trademark, service mark, or the name of Princeton University. 


 --- This software and any associated documentation is provided "as is" 

 PRINCETON UNIVERSITY MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS 
 OR IMPLIED, INCLUDING THOSE OF MERCHANTABILITY OR FITNESS FOR A 
 PARTICULAR PURPOSE, OR THAT  USE OF THE SOFTWARE, MODIFICATIONS, OR 
 ASSOCIATED DOCUMENTATION WILL NOT INFRINGE ANY PATENTS, COPYRIGHTS, 
 TRADEMARKS OR OTHER INTELLECTUAL PROPERTY RIGHTS OF A THIRD PARTY.  

 Princeton University shall not be liable under any circumstances for 
 any direct, indirect, special, incidental, or consequential damages 
 with respect to any claim by USER or any third party on account of 
 or arising from the use, or inability to use, this software or its 
 associated documentation, even if Princeton University has been advised
 of the possibility of those damages.
*********************************************************************/
#include "asap_solver.h"
#include <string>
void printClause(vector<int> clause);
extern int solverRuns;
using namespace std;

CSolver::CSolver(void)    
{
    _maxMemory = 0;
    dlevel()=0;
    _params.time_limit 		= 3600 * 48;		//2 days
    _params.decision_strategy 	= 0;
    _params.preprocess_strategy = 0;
    _params.allow_clause_deletion 		= false ;
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
    _params.firstRun = true;
}

CSolver::~CSolver()
{
  for (int i=0; i<variables().size(); ++i)
    delete _assignment_stack[i];
}

void CSolver::run_periodic_functions(void)
{
    //a. clause deletion
    if ( _params.allow_clause_deletion &&
	 _stats.num_backtracks % _params.clause_deletion_interval == 0)
  	    delete_unrelevant_clauses(); 
    //b. restart
    if (_params.allow_restart && _stats.num_backtracks > _params.next_restart_backtrack) {
	_params.next_restart_backtrack += _params.restart_backtrack_incr;
	_params.restart_backtrack_incr += _params.restart_backtrack_incr_incr;
  	float current = current_cpu_time()/1000;
  	if (current > _params.next_restart_time) {
  	    if (_params.verbosity > 1) cout << "restart..." << endl;
  	    _params.next_restart_time = current + _params.restart_time_increment;
	    _params.restart_time_increment += _params.restart_time_incr_incr;
	    _params.randomness = _params.restart_randomness;
	    cerr << "CSolver::run_periodic_functions(void) is trying to "
		 << "activate restart().\nERROR. Exiting.\n";
	    exit(-1);
	    restart();
	}
    }    
    //c. update var stats for decision
    if ((_stats.num_decisions % 0xff)==0) 
	    update_var_stats();
    //d. run hook functions
    for (int i=0; i< _hooks.size(); ++i) {
	pair<int,pair<HookFunPtrT, int> > & hook = _hooks[i];
	if (_stats.num_decisions >= hook.first) {
	    hook.first += hook.second.second;
	    hook.second.first((void *) this);
	}
    }
} 


void CSolver::init(Assignments* results) {
  if (_params.firstRun) {
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
  _params.results = results;
  //  CHECK(dump());
}

void CSolver::set_var_value(int v, int value, ClauseIdx ante, int dl)
{
  assert (value == 0 || value == 1);
  ++_stats.num_implications ;
  --num_free_variables();
  CVariable & var = _variables[v];
  assert (var.value() == UNKNOWN);
  var.dlevel() = dl;
  var.value() = value;
  var.set_antecedence(ante);
  vector<CLitPoolElement *> & ht_ptrs = var.ht_ptr(value);
  if (dl == dlevel()) 
    set_var_value_with_current_dl(v, ht_ptrs);
  else 
    set_var_value_not_current_dl(v, ht_ptrs);
}


void CSolver::set_var_value_with_current_dl(int v, vector<CLitPoolElement *> & ht_ptrs)
{
  ClauseIdx cl_idx;
  CLitPoolElement * ht_ptr, * other_ht_ptr, * ptr;
  int dir;
  for (vector <CLitPoolElement *>::iterator itr = ht_ptrs.begin(); itr != ht_ptrs.end(); ++itr) {
    ht_ptr = *itr;
    dir = ht_ptr->direction();
    ptr = ht_ptr;
    while(1) {
      ptr += dir;
      if (ptr->val() <= 0) {
	if (dir == 1) 
	  cl_idx = - ptr->val();
	if (dir == ht_ptr->direction()) {
	  ptr = ht_ptr;
	  dir = -dir;
	  continue;
	}
	int the_value = literal_value (*other_ht_ptr);
	if (the_value == 0) {//a conflict
	  _conflicts.push_back(cl_idx);
	  //	  cout << "new conflict-1! " << vec_tostring(_conflicts) << endl;
	} else if ( the_value != 1) //e.g. unknown
	  queue_implication (other_ht_ptr->s_var(), cl_idx);
	break;
      }
      if (ptr->is_ht()) {
	other_ht_ptr = ptr;
	continue;
      }
      if (literal_value(*ptr) == 0) 
	continue;
      //now it's value is either 1 or unknown
      int v1 = ptr->var_index();
      int sign = ptr->var_sign();
      variable(v1).ht_ptr(sign).push_back(ptr);
      ht_ptr->unset_ht();
      ptr->set_ht(dir);
      
      *itr = ht_ptrs.back();
      ht_ptrs.pop_back();
      --itr;
      break;
    }
	//	cout << "while(1) over " << endl;
  }
  //  	cout << "for (x in ht_ptrs) over " << endl;
}

void CSolver::set_var_value_not_current_dl(int v, vector<CLitPoolElement *> & ht_ptrs)
{
  ClauseIdx cl_idx;
  CLitPoolElement * ht_ptr, * other_ht_ptr, * ptr, * max_ptr = NULL;
  int dir,max_dl;
  
  for (vector <CLitPoolElement *>::iterator itr = ht_ptrs.begin(); 
       itr != ht_ptrs.end(); ++itr) {
    max_dl = -1;
    ht_ptr = *itr;
    dir = ht_ptr->direction();
    ptr = ht_ptr;
    while(1) {
      ptr += dir;
      if (ptr->val() <= 0) {
	if (dir == 1) 
	  cl_idx = - ptr->val();
	if (dir == ht_ptr->direction()) {
	  ptr = ht_ptr;
	  dir = -dir;
	  continue;
	}
	if (variable(ht_ptr->var_index()).dlevel() < max_dl) {
	  int v1 = max_ptr->var_index();
	  int sign = max_ptr->var_sign();
	  variable(v1).ht_ptr(sign).push_back(max_ptr);
	  ht_ptr->unset_ht();
	  max_ptr->set_ht(dir);
	  *itr = ht_ptrs.back();
	  ht_ptrs.pop_back();
	  --itr;
	}
	int the_value = literal_value (*other_ht_ptr);
	if (the_value == 0) { //a conflict
	  _conflicts.push_back(cl_idx);
	  //cout << "new conflict-2! " << vec_tostring(_conflicts) << endl;
	} else if ( the_value != 1) //e.g. unknown
	  queue_implication (other_ht_ptr->s_var(), cl_idx);
	break;
      }
      if (ptr->is_ht()) {
	other_ht_ptr = ptr;
	continue;
      }
      if (literal_value(*ptr) == 0) {
	if (variable(ptr->var_index()).dlevel() > max_dl) {
	  max_dl = variable(ptr->var_index()).dlevel();
	  max_ptr = ptr;
	}
	continue;
      }
      //now it's value is either 1 or unknown
      int v1 = ptr->var_index();
      int sign = ptr->var_sign();
      variable(v1).ht_ptr(sign).push_back(ptr);
      ht_ptr->unset_ht();
      ptr->set_ht(dir);
      
      *itr = ht_ptrs.back();
      ht_ptrs.pop_back();
      --itr;
      break;
    }
  }
}

void CSolver::unset_var_value(int v)
{
  //  CHECK(cout <<"Unset var " << (variable(v).value()?"+":"-") << v << endl;);
  CVariable & var = variable(v);
  if (var.var_score_pos() < _max_score_pos)
    _max_score_pos = var.var_score_pos();
  var.value() = UNKNOWN;
  var.set_antecedence(NULL_CLAUSE);
  var.dlevel() = -1;
}

int CSolver::find_max_clause_dlevel(ClauseIdx cl)
{
//if cl has single literal, then dlevel should be 0 
    int max_level = 0;
    if (cl == NULL_CLAUSE || cl == FLIPPED) 
      return dlevel();
    for (int i=0, sz= clause(cl).num_lits(); i<sz;  ++i) {
      int var_idx =((clause(cl).literals())[i]).var_index();
      if (_variables[var_idx].value() != UNKNOWN) {
	if (max_level < _variables[var_idx].dlevel()) {
	  max_level =  _variables[var_idx].dlevel();
	}
      }
    }
    return max_level; 
}

int CSolver::find_min_clause_dlevel(ClauseIdx cl)
{
//if cl has single literal, then dlevel should be 0 
    int min_level = dlevel();
    if (cl == NULL_CLAUSE || cl == FLIPPED) 
	return dlevel();
    for (int i=0, sz= clause(cl).num_lits(); i<sz;  ++i) {
	int var_idx =((clause(cl).literals())[i]).var_index();
	if (_variables[var_idx].value() != UNKNOWN) {
	    if (min_level > _variables[var_idx].dlevel())
		min_level =  _variables[var_idx].dlevel();
	}
    }
    return min_level; 
}

void CSolver::dump_assignment_stack(ostream & os) {
    cout << "Assignment Stack:  ";
    for (int i=0; i<= dlevel(); ++i) {
	if ((*_assignment_stack[i]).size() > 0)
	if (variable( (*_assignment_stack[i])[0]>>1).get_antecedence()==FLIPPED)
	  cout << "*" ;
	cout << "(" <<i << ":";
	for (int j=0; j<(*_assignment_stack[i]).size(); ++j ) {
	  cout << "(";
	  cout << ((*_assignment_stack[i])[j]&0x1?"-":"+")
	       << ((*_assignment_stack[i])[j] >> 1) << ","
	       << variable((*_assignment_stack[i])[j]>>1).get_antecedence()
	       << ") ";
	}
	cout << ") " << endl;
    }
    cout << endl;
}


bool CDatabase::is_conflict(ClauseIdx cl)
{
    CLitPoolElement * lits = clause(cl).literals();
    for (int i=0, sz= clause(cl).num_lits(); i<sz;  ++i)
	if (literal_value(lits[i]) != 0)
		return false;
    return true;
}

bool CDatabase::is_satisfied(ClauseIdx cl)
{
    CLitPoolElement * lits = clause(cl).literals();
    for (int i=0, sz= clause(cl).num_lits(); i<sz; ++i) 
	if (literal_value(lits[i]) == 1) 
	    return true;
    return false;
}

int CDatabase::find_unit_literal(ClauseIdx cl) {
  //if it's not unit, return 0.
  int unassigned = 0;
  for (int i=0, sz= clause(cl).num_lits(); i<sz;  ++i) {
    int var_idx =((clause(cl).literals())[i]).var_index();
    int sign = clause(cl).literal(i).s_var() & 0x1;
    int var_value = variable(var_idx).value();
    if( (var_value == 1 && sign == 0) ||
	(var_value == 0 && sign == 1) )
      return 0; // clause already SAT
    if (var_value == UNKNOWN) {
      if (unassigned == 0) 
	unassigned = clause(cl).literals()[i].s_var();
      else //more than one unassigned
	return 0;
    }
  }
  return unassigned;
}

void CSolver::delete_unrelevant_clauses(void) 
{
  //    CHECK_FULL (dump());
    int original_num_deleted = num_deleted_clauses();
    int original_del_lits = num_deleted_literals();
    if (CDatabase::_stats.mem_used_up) {
	CDatabase::_stats.mem_used_up = false;
	if (++CDatabase::_stats.mem_used_up_counts < 5) {
	    _params.max_unrelevance = (int) (_params.max_unrelevance * 0.8);
	    if (_params.max_unrelevance < 4)
		_params.max_unrelevance = 4;
	    _params.min_num_clause_lits_for_delete = (int) (_params.min_num_clause_lits_for_delete* 0.8);
	    if (_params.min_num_clause_lits_for_delete < 10)
		_params.min_num_clause_lits_for_delete = 10;
	    _params.max_conflict_clause_length = (int) (_params.max_conflict_clause_length*0.8);
	    if (_params.max_conflict_clause_length < 50 )
		_params.max_conflict_clause_length = 50;
	    CHECK(
	    cout << "Forced to reduce unrelevance in clause deletion. " << endl;
	    cout <<"MaxUnrel: " << _params.max_unrelevance 
		 << "  MinLenDel: " << _params.min_num_clause_lits_for_delete
		 << "  MaxLenCL : " << _params.max_conflict_clause_length << endl;
		);
	}
    }
    //first find out the clause to delete and mark them
    for (vector<CClause>::iterator itr = clauses().begin() + init_num_clauses(); 
	 itr != clauses().end(); ++itr) {
	CClause & cl = * itr;
	CLitPoolElement * lits = cl.literals();
	if (!cl.in_use() || cl.num_lits() < _params.min_num_clause_lits_for_delete ) continue;
	int val_0_lits = 0, val_1_lits = 0, unknown_lits = 0;
	for (int i=0; i< cl.num_lits(); ++i) {
	    int lit_value = literal_value (cl.literal(i));
  	    if (lit_value == 0 ) ++val_0_lits;
  	    else if (lit_value == 1) ++val_1_lits;
  	    else ++unknown_lits;
	    if (unknown_lits + val_1_lits > _params.max_unrelevance) {
		mark_clause_deleted(cl);
		_unused_clause_idx_queue.push(itr - clauses().begin());
		CHECK (cout << "Deleting Unrelevant clause: " << cl << endl;);
		break;
	    }
	    if (cl.num_lits() > _params.max_conflict_clause_length && 
		(unknown_lits+val_1_lits > 1) ) { //to  sure it's not generating an implication
		                                  //and it's not an antecedence for other var assignment
		mark_clause_deleted(cl);
		CHECK (cout << "Deleting too large clause: " << cl << endl;);
		_unused_clause_idx_queue.push(itr - clauses().begin());
		break;
	    }
	}
    }
    //now delete the index from variables
    if (original_num_deleted == num_deleted_clauses()) 
	return ; //didn't delete anything
    for (vector<CVariable>::iterator itr = variables().begin(); 
	 itr != variables().end(); ++ itr) {
	for (int i=0; i<2; ++i) { //for each phase
	    //delete the h_t index from the vars
	    vector<CLitPoolElement *> & ht_ptr = (*itr).ht_ptr(i);
	    for (vector<CLitPoolElement *>::iterator my_itr = ht_ptr.begin(); 
		 my_itr != ht_ptr.end(); ++my_itr) {
		if ( (*my_itr)->val() <= 0) {
		    *my_itr = ht_ptr.back();
		    ht_ptr.pop_back();
		    --my_itr;
		}
	    }
	}
    }
}
//============================================================================================
bool CSolver::time_out(void) 
{
    if ( (current_cpu_time() - _stats.start_cpu_time)/1000.0 > _params.time_limit )
	return true;
    return false;
}

inline bool compare_var_stat(const pair<CVariable *,int> & v1, 
			    const pair<CVariable *,int> & v2) 
{	
    if (v1.second > v2.second) return true;
    return false;
}

void CSolver::update_var_stats(void) 
{
    for(int i=1; i< variables().size(); ++i) {
	CVariable & var = variable(i);
	var.score(0) = var.score(0)/2 + var.lits_count(0) - _last_var_lits_count[0][i];
	var.score(1) = var.score(1)/2 + var.lits_count(1) - _last_var_lits_count[1][i];
	_last_var_lits_count[0][i] = var.lits_count(0);
	_last_var_lits_count[1][i] = var.lits_count(1);
	_var_order[i-1] = pair<CVariable * , int>( &var, var.score());
    }
    ::stable_sort(_var_order.begin(), _var_order.end(), compare_var_stat);
    for (int i=0; i<_var_order.size(); ++i) 
	_var_order[i].first->var_score_pos() = i;
    _max_score_pos = 0;
}

bool CSolver::decide_next_branch(void)
{
  //    cout << "Before decision :\n";
  //  dump_assignment_stack();

    if (!_implication_queue.empty()) {
	//some hook function did a decision, so skip my own decision making.
	//if the front of implication queue is 0, that means it's finished
	//because var index start from 1, so 2 *vid + sign won't be 0. 
	//else it's a valid decision.
	_max_score_pos = 0; //reset the max_score_position.
	return _implication_queue.front().first;
    }

    ++_stats.num_decisions;
    int s_var = 0;

   

    for (int i=_max_score_pos; i<_var_order.size(); ++i) {
	CVariable & var = *_var_order[i].first;
	if (var.value()==UNKNOWN) {
	    //move th max score position pointer
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
	    // & (pointer.begin())[0] is to overcome compatibility issues
	    // Should have been pointer.begin()
	    int var_idx = ptr - (&(variables().begin())[0]);
	    s_var = var_idx + var_idx + sign;
	    break;
	}
    }

    if (s_var<2) //no more free vars, solution found,  quit
	return false;
    ++dlevel();
    
    cout << "Decision Variable: " << (s_var>>1) << endl;
    
    if (dlevel() > _stats.max_dlevel) _stats.max_dlevel = dlevel();
    queue_implication(s_var, NULL_CLAUSE);
    return true;
}


void CSolver::real_solve(AssignmentStack** stopStack, int *solutionNum,int deduced) 
{    
}

int CSolver::solve(Assignments* results, AssignmentStack** stopPoint,int *solFound)
{
  return 0;
}

void CSolver::back_track(int blevel)
{
  //  CHECK (cout << "Back track to " << blevel <<" ,currently in "<< dlevel() << " level " << endl;);
  //CHECK_FULL (dump());
  //  CHECK(verify_integrity());
  

  assert(blevel <= dlevel() + 1);
  for (int i=dlevel(); i>= blevel; --i) {
    vector<int> & assignments = *_assignment_stack[i];
    for (int j=assignments.size()-1 ; j>=0; --j) {
      unset_var_value(assignments[j]>>1);
    }
    num_free_variables() += assignments.size();
    assignments.clear();
  }
  dlevel() = blevel - 1;
  if (dlevel() < _params.interfaceDecisionLevel) { 
     _params.interfaceDecisionLevel = dlevel();
  }
  ++_stats.num_backtracks;
}

int CSolver::deduce(void) 
{
  if (_conflicts.size() > 0) {
    cerr << "In deduce,_conflicts.size() = " << _conflicts.size() << endl
	 << "ERROR. Exiting!" << endl;
    exit (-1);
  }
  while (!_implication_queue.empty() && _conflicts.size()==0) {
    int literal = _implication_queue.front().first;
    int variable_index = literal>>1;
    ClauseIdx cl = _implication_queue.front().second;
    _implication_queue.pop();
    CVariable & the_var = variables()[variable_index];
    int dl;
    if (cl == NULL_CLAUSE)
      dl = dlevel();
    else 
      dl = find_max_clause_dlevel(cl);
    if ( the_var.value() == UNKNOWN) { // an implication
      set_var_value(variable_index, !(literal&0x1), cl, dl);
      _assignment_stack[dl]->push_back(literal);
    }
    else {
      if (cl == NULL_CLAUSE) {
	cerr << "CSolver::deduce - forcing a variable"
	     << " with previous assignment is not allowed\n";
	exit (-1);
      }
      if (dl < the_var.dlevel()) {
	cerr << "CSolver::deduce - implicating a variable with assignment "
	     << "in higher level is not allowed\n";
	exit (-1);
      }
      if (the_var.value() == (literal&0x1) ) { //a conflict
	//note: literal & 0x1 == 1 means the literal is in negative phase
	_conflicts.push_back(cl);
	//cout << "new conflict-3! " << vec_tostring(_conflicts) << endl;
      } 
    }
  }
  while(!_implication_queue.empty()) _implication_queue.pop();
  return (_conflicts.size()?CONFLICT:NO_CONFLICT);
}


void CSolver::verify_integrity(char* msg) {
  for ( int cl_idx = getFirstClause(); cl_idx >= 0; 
	cl_idx = getNextClause(cl_idx)) {
    int len = clause(cl_idx).num_lits();
    int i;
    for (i=0; i < len; ++i) {
      int v_idx = clause(cl_idx).literal(i).s_var() >> 1;
      int sign = clause(cl_idx).literal(i).s_var() & 0x1;
      int var_value = variable(v_idx).value();
      if (var_value == UNKNOWN)
	break;
      if( (var_value == 1 && sign == 0) ||
	  (var_value == 0 && sign == 1) ) break;
    }
    if (i >= len) {
      cout << msg;
      cout << "verify integrity failed." << endl;
      cout << "The clause that failed is : " << cl_idx << endl;
      for (int i=0, sz= clause(cl_idx).num_lits(); i<sz;  ++i) {
	int var_idx =((clause(cl_idx).literals())[i]).var_index();
	int val = _variables[var_idx].value();
	cout << var_idx << "\t->\t" << val << "\t";
      }
      cout << endl;
      cerr << msg;
      cerr << "verify integrity failed." << endl;
      // dump_assignment_stack();
      exit(-1);
    }
  }
  // cout << "verify integrity successful.\n";
}

int CSolver::getFirstClause() {
    for (int i=0; i < clauses().size(); ++i)
	if (clause(i).in_use()) return i;
    return -1;
}

int CSolver::getFirstAddedClause () {
    for (int i= init_num_clauses(); i < clauses().size(); ++i)
	if (clause(i).in_use()) return i;
    return -1;
}

int CSolver::getNextClause (int cl_idx) {
    for (int i= cl_idx + 1; i < clauses().size(); ++i)
	if (clause(i).in_use()) return i;
    return -1;
}




// assumes both are in the stack in level 'level'!!!
bool CSolver::varRightToj(int var, int j, int level) {
  if (level > dlevel()) {
    cerr << "CSolver::iRgithToj: level > dlevel() is not allowed.\n";
    exit (-1);
  }
  vector <int> & assignments = *_assignment_stack[level];
  int i = assignments.size() - 1;
  while(i >= j) {    
    int assigned = assignments[i];
    if ((assigned>>1) == var)
      return 
	true;
    --i;	  
  }
  return false;
}

void CSolver::mark_vars_at_level(ClauseIdx cl, int var_idx, int dl, 
				 int rootIndex)
{
  for (CLitPoolElement * itr = clause(cl).literals(); (*itr).val() > 0 ; ++ itr) {
    int v = (*itr).var_index();
    if (v == var_idx) 
      continue;
    else if ((variable(v).dlevel() == dl) && varRightToj(v,rootIndex,dl)) {
      if (!variable(v).is_marked()) { // mark only if right to the root
	variable(v).set_marked();
	++ _num_marked;
      } 
    }
    else {
      int dl1 = variable(v).dlevel(); // vars left to root are in conflict clause as well
      assert (variable(v).dlevel() <= dl); // that's why <=
      if (variable(v).in_new_cl() == -1){ //it's not in the new cl
	variable(v).set_in_new_cl((*itr).var_sign());
	_conflict_lits.push_back((*itr).s_var());
      }
    }
  }
}

int CSolver::analyze_conflicts(void) {
  return conflict_analysis_zchaff();
}

int CSolver::findFirstRootIndex(int level) {
  if (level > dlevel()) {
    cerr << "CSolver::findFirstRootIndex: level > dlevel() is not allowed.\n";
    exit (-1);
  }
  vector <int> & assignments = *_assignment_stack[level];
  for (int j = assignments.size() - 1; j >= 0; --j ) { 
	  int assigned = assignments[j];
	  ClauseIdx ante_cl = variables()[assigned>>1].get_antecedence();
	  if ( ante_cl == NULL_CLAUSE ) 
	    return j;
  }
  return 0; // should be dead code.
}

int CSolver::conflict_analysis_zchaff (void) 
{  return 0;
}

void CSolver::markUniPhased(vector<int> &uni_phased, int left, int right) {
  for (int i=left; i <= right; ++i) {
    CVariable & v = variable(i);
    if (v.value() != UNKNOWN)
      continue;
    if (v.lits_count(0) == 0){ //no positive phased lits.
      queue_implication( i+i+1, NULL_CLAUSE);
      uni_phased.push_back(-i);
    }
    else if (v.lits_count(1) == 0){ //no negative phased lits.
      queue_implication( i+i, NULL_CLAUSE);
      uni_phased.push_back(i);
    }
  }
}
  














