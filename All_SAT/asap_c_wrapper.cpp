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
 any trademark,  service mark, or the name of Princeton University. 


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
#include "asap_clsgen.h"

#ifndef SAT_Manager
#define SAT_Manager void *
#endif

/*=====================================================================
Following are wrapper functions for C callers. 

 ====================================================================*/

extern "C" SAT_Manager SAT_InitManager(void)
{
    CSolver * solver = new CSolver;
    return (SAT_Manager)solver;
}

extern "C" char * SAT_Version(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;
    return solver->version();
}

extern "C" void SAT_SetNumVariables(SAT_Manager mng, 
				    int n_var)
{
    CSolver * solver = (CSolver*) mng;
    solver->set_variable_number(n_var);
}

extern "C" void SAT_ReleaseManager(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;
    delete solver;
}

extern "C" int SAT_AddVariable	(SAT_Manager 	mng)
{
    CSolver * solver = (CSolver*) mng;
    return solver->add_variable();
}

extern "C" void SAT_SetTimeLimit	(SAT_Manager 	mng ,  
					 float 		runtime)
{
    CSolver * solver = (CSolver*) mng;
    solver->set_time_limit(runtime);
}

extern "C" void SAT_SetMemLimit	(SAT_Manager 	mng, 
				 int 		mem_limit)
{
    CSolver * solver = (CSolver*) mng;
    solver->set_mem_limit(mem_limit);
}

extern "C" void SAT_AddClause	(SAT_Manager 	mng, 
				 int * 		clause_lits,
				 int 		num_lits)
{
    CSolver * solver = (CSolver*) mng;
    solver->add_clause(clause_lits, num_lits);
}

extern "C" int SAT_Solve 	(SAT_Manager 	mng,
				 Assignments*  results,
				 AssignmentStack** stopPoint,
				 int *solFound)
{
    CSolver * solver = (CSolver*) mng;
    return solver->solve(results, stopPoint,solFound);
}

extern "C" void SAT_AddHookFun 	(SAT_Manager	mng, 
				 void(*fun)(void *),
				 int 		interval)
{
    CSolver * solver = (CSolver*) mng;	
    solver->add_hook(fun, interval);
}	

extern "C" void SAT_SetRandomness	(SAT_Manager	mng,
					 int 		n)
{
    CSolver * solver = (CSolver*) mng;	
    solver->set_randomness(n);
}

extern "C" void SAT_SetRandSeed	(SAT_Manager	mng,
				 int		seed)
{
    CSolver * solver = (CSolver*) mng;	
    solver->set_random_seed(seed);
}

extern "C" void SAT_MakeDecision	(SAT_Manager	mng,
					 int		vid,
					 int		sign)
{
    CSolver * solver = (CSolver*) mng;	
    solver->queue_implication(vid * 2 + sign, NULL_CLAUSE);
    ++solver->dlevel();
    if (solver->dlevel()>solver->_stats.max_dlevel)
      solver->_stats.max_dlevel=solver->dlevel();
    solver->dump_assignment_stack();
}

extern "C" int SAT_GetVarAsgnment	(SAT_Manager	mng,
					 int 		v_idx)
{
    CSolver * solver = (CSolver*) mng;
    assert (v_idx > 0 && v_idx < solver->variables().size());
    return solver->variable(v_idx).value();
}	

extern "C" int SAT_EstimateMemUsage(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;
    return solver->estimate_mem_usage();
}

extern "C" float SAT_GetElapsedCPUTime(SAT_Manager	mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->elapsed_cpu_time();
}

extern "C" float SAT_GetCurrentCPUTime(SAT_Manager	mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->current_cpu_time()/1000.0;
}

extern "C" float SAT_GetCPUTime	(SAT_Manager	mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->cpu_run_time();
}

extern "C" float SAT_GetWorldTime	(SAT_Manager	mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->world_run_time();
}

extern "C" int SAT_NumLiterals	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_literals();
}

extern "C" int SAT_NumClauses	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_clauses();
}

extern "C" int SAT_NumVariables	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_variables();
}

extern "C" int SAT_InitNumLiterals(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->init_num_literals();
}

extern "C" int SAT_InitNumClauses(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->init_num_clauses();
}

extern "C" int SAT_NumAddedLiterals(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_added_literals();
}

extern "C" int SAT_NumAddedClauses	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_added_clauses();
}

extern "C" int SAT_NumDeletedClauses	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_deleted_clauses();
}

extern "C" int SAT_NumDeletedLiterals	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_deleted_literals();
}

extern "C" int SAT_NumDecisions	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_decisions();
}

extern "C" int SAT_NumImplications	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->num_implications();
}

extern "C" int SAT_MaxDLevel	(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    return solver->max_dlevel();
}


extern "C" int SAT_GetFirstClause(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    for (int i=0; i< solver->clauses().size(); ++i)
	if ( solver->clause(i).in_use()) return i;
    return -1;
}

extern "C" int SAT_GetFirstAddedClause (SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    for (int i= solver->init_num_clauses(); i< solver->clauses().size(); ++i)
	if ( solver->clause(i).in_use()) return i;
    return -1;
}

extern "C" int SAT_GetNextClause	(SAT_Manager mng, int cl_idx)
{
    CSolver * solver = (CSolver*) mng;	
    for (int i= cl_idx + 1; i< solver->clauses().size(); ++i)
	if ( solver->clause(i).in_use()) return i;
    return -1;
}

extern "C" int SAT_GetClauseNumLits(SAT_Manager mng, int cl_idx)
{
    CSolver * solver = (CSolver*) mng;	
    return (solver->clause(cl_idx).num_lits());
}

extern "C" void SAT_GetClauseLits(SAT_Manager mng, int cl_idx,  int * lits)
{
    CSolver * solver = (CSolver*) mng;	
    for (int i=0; i< solver->clause(cl_idx).num_lits(); ++i)
	lits[i] = solver->clause(cl_idx).literal(i).s_var();
}

extern "C" void SAT_EnableConfClsDeletion(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    solver->enable_cls_deletion(true);
}

extern "C" void SAT_DisableConfClsDeletion(SAT_Manager mng)
{
    CSolver * solver = (CSolver*) mng;	
    solver->enable_cls_deletion(false);
}

extern "C" void SAT_SetClsDeletionInterval(SAT_Manager mng, int n)
{
    CSolver * solver = (CSolver*) mng;	
    solver->set_cls_del_interval(n);
}

extern "C" void SAT_SetMaxUnrelevance(SAT_Manager mng, int n)
{
    CSolver * solver = (CSolver*) mng;	
    solver->set_max_unrelevance(n);
}

extern "C" void SAT_SetMinClsLenForDelete(SAT_Manager mng, int n)
{
    CSolver * solver = (CSolver*) mng;	
    solver->set_min_num_clause_lits_for_delete(n);
}

extern "C" void SAT_SetMaxConfClsLenAllowed(SAT_Manager mng, int n)
{
    CSolver * solver = (CSolver*) mng;	
    solver->set_max_conflict_clause_length(n);
}

//  extern "C" void SAT_AllowMultipleConflicts(SAT_Manager mng);
//  extern "C" void SAT_AllowMultipleConfCls(SAT_Manager mng);

//  extern "C" void SAT_SetLitPoolCompactRatio(SAT_Manager mng, float ratio);
//  extern "C" void SAT_SetLitPoolExpantionRatio(SAT_Manager mng, float ration);



extern "C" void SAT_GenClsAnd2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.and2 (*solver, a, b, o);
}

extern "C" void SAT_GenClsAndN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o ) 
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.and_n (*solver, inputs, num_inputs, o);

}

extern "C" void SAT_GenClsOr2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o ) 
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.or2 (*solver, a, b, o);
}

extern "C" void SAT_GenClsOrN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.or_n (*solver, inputs, num_inputs, o);
}

extern "C" void SAT_GenClsNand2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.nand2 (*solver, a, b, o);
}


extern "C" void SAT_GenClsNandN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.nand_n (*solver, inputs, num_inputs, o);
}


extern "C" void SAT_GenClsNor2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.nor2 (*solver, a, b, o);
}


extern "C" void SAT_GenClsNorN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.nor_n (*solver, inputs, num_inputs, o);
}

extern "C" void SAT_GenClsXor	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.xor2 (*solver, a, b, o);
}

extern "C" void SAT_GenClsNot	(SAT_Manager mng, 
			 int a,
			 int o )
{
    CSolver * solver = (CSolver*) mng;	
    CClause_Gen cls_gen;
    cls_gen.not1 (*solver, a, o);
}


























