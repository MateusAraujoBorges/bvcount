/*********************************************************************
 The file is an extention to the file SAT.h, which is originally 
 copyrighted as stated below:

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

#ifndef __SAT_HEADER__
#define __SAT_HEADER__

#include <vector>
#include "dstruct.h"
#include "utils.h"


#define	SAT_Manager void * 	

#ifndef __SAT_STATUS__
#define __SAT_STATUS__
enum SAT_StatusT {
    UNDETERMINED,
    UNSATISFIABLE,
    SATISFIABLE,
    TIME_OUT,
    MEM_OUT,
    ABORTED,
    EXHAUSTED
};
#endif

#ifndef UNKNOWN
#define UNKNOWN  -1
#endif



/*============================================================

This is the header for using the sat solver. A typical flow is 

1. calling SAT_InitManager to get a new manager. You can pre-set 
   the number of variables upfront, or you can add it later by
   SAT_AddVariable.
   Variables are indexed from 1, NOT 0.

2. add clauses by calling SAT_AddClause. Clause is represented by
   an array of integers. Each literal is represented by 
   2 * VarIndex + Sign. The Sign is 0 for positive phased literals,
   and 1 for negative phased literals.
   For example, a clause (3 -5 11 -4 ) should be represented by
   { 6, 11, 22, 9 }
   Note: Each variable can occure no more than once in a clause.
   if a variable occures in both phase, the clause is automatically
   satisfied. If more than one occurance with same phase, they
   should be combined. IT IS YOUR RESPONSIBILITY TO KEEP EACH 
   CLAUSE NON-REDUNDENT, or the solver will not function correctly.
   
3. Optionally, you may set the time limit and memory limit for
   the solver, note: time and memory limits are not exact.
   Also, you can set other paramenters like clause deletion
   etc. 

--------------------------------------------------------------
// Do not use this method when using InterfaceCSolver!!! (A.Y)
4. You can add hook function to do some extra work after 
   a certain number of decisions (branchings). A hook function 
   should accept input of a manager, and has no return value.
--------------------------------------------------------------

5. Calling SAT_Solve to solve the problem. it will return the 
   status of the solver.

6. If the problem is satisfiable, you can call SAT_GetVarAsgnment
   to get a variable assignment which satisfy the problem.

7. You can also get some statistics from the solver, such as 
   run time, mem usage, etc.

8. Release the manager by calling SAT_ReleaseManager.

=============================================================*/


//Following are the main functions for the flow.

//init a manager
SAT_Manager SAT_InitManager(void);

//get the version of the solver
char * SAT_Version(SAT_Manager mng);

//release a manager
void SAT_ReleaseManager	(SAT_Manager 	mng);

//set the number of variables.
void SAT_SetNumVariables(SAT_Manager mng, 
			 int num_vars);

//add a variable. it will return the new var's index
int SAT_AddVariable	(SAT_Manager 	mng);

//add a clause. a literal is a integer with value 2*V_idx + sign
void SAT_AddClause	(SAT_Manager 	mng, 
			 int * 		clause_lits,
			 int 		num_lits);

void SAT_SetTimeLimit	(SAT_Manager 	mng ,  
			 float 		runtime); 

//note: memory estimation is very rough, so allow 30% of error
//in both SetMemLimit and EstimateMemUsage. Also, in the run 
//time, the memory usage could be temporarily 50% larger than
//the limit (this occours when program reallocate memory because
//of insufficiency in the initial allocation). 
void SAT_SetMemLimit	(SAT_Manager 	mng, 
			 int 		num_bytes);


enum SAT_StatusT SAT_Solve 	(SAT_Manager 	mng,Assignments* results, AssignmentStack** stopPoint, int* solNum);

//Get a variable's assignment. -1 means UNKNOWN or undicided
int SAT_GetVarAsgnment	(SAT_Manager	mng,
			 int 		v_idx);

//this is used for randomness in decision making
void SAT_SetRandomness	(SAT_Manager	mng,
			 int 		n);
//if the seed < 0, solver will use the day timer to
//get a "psuedo real random" seed.
void SAT_SetRandSeed	(SAT_Manager	mng,
			 int		seed);

//add a hookfunction
void SAT_AddHookFun   	(SAT_Manager	mng, 
			 void(*fun)(void *), 
			 int	interval);


/* =======================================================
This function is for users who want to customize their own
decision making strategy. 

DO NOT USE THIS FUNCTIONS WHEN USING InterfaceSatSolver (A.Y)

What you can do is add a hook function with interval of 1, 
that function will be called before every decision. Inside
this hook function, use SAT_MakeDecision to make decision
with variable "vid" and "sign". sign = 1 means value of 
the variable be 0. 

If there are no free variable left, problem is satisfied,
call SAT_MakeDecision with vid = 0 && sign = 0 will cause 
solver exit with status "SATISFIABLE".

Here is an example:

void my_own_decision (SAT_Manager mng)
{
int n_var = SAT_NumVariables(mng);
int i;
for (i=1; i<n_var; ++i) {
  if (SAT_GetVarAsgnment(mng, i)==UNKNOWN){
    SAT_MakeDecision(mng, i, 1); //make decision with value 0;
    break;
  }
}
if (i >= n_var) //every var got an assignment, no free var left 
  SAT_MakeDecision (mng, 0, 0);
}
======================================================== */
void SAT_MakeDecision	(SAT_Manager	mng,
			 int		vid,
			 int		sign);

//Following are statistics collecting functions
int SAT_EstimateMemUsage(SAT_Manager mng);
//time elapsed from last call of GetElapsedCPUTime
float SAT_GetElapsedCPUTime(SAT_Manager mng);
//current cpu time
float SAT_GetCurrentCPUTime(SAT_Manager mng);
//time spent on the whole solving process
float SAT_GetCPUTime	(SAT_Manager mng);

float SAT_GetWorldTime	(SAT_Manager mng);

int SAT_NumLiterals	(SAT_Manager mng);

int SAT_NumClauses	(SAT_Manager mng);

int SAT_NumVariables	(SAT_Manager mng);

int SAT_InitNumLiterals	(SAT_Manager mng);

int SAT_InitNumClauses	(SAT_Manager mng);

int SAT_NumAddedLiterals(SAT_Manager mng);

int SAT_NumAddedClauses	(SAT_Manager mng);

int SAT_NumDeletedClauses	(SAT_Manager mng);

int SAT_NumDeletedLiterals	(SAT_Manager mng);

int SAT_NumDecisions	(SAT_Manager mng);

int SAT_NumImplications	(SAT_Manager mng);

int SAT_MaxDLevel	(SAT_Manager mng);

//Following function will allow you to traverse all the
//clauses and literals. Clause is represented by a index.
//The original clauses' indice are not changed during the
//whole process, while added clauses may get deleted, so
//a certain index may not always represent the same 
//clause, also, a index may not always be valid.
int SAT_GetFirstClause	(SAT_Manager mng);

//GetFirstAddedClause will jump directly to the first 
//added clause, so you don't need to traverse original
//clauses. from then on, all the clauses got from "next"
//will be added clause.
int SAT_GetFirstAddedClause (SAT_Manager mng);

//if there are no more clauses left, return value is -1.
//the organization is like :
//index 0 ... InitNumClauses - 1 are the original clauses
//after that, they are added clauses.
int SAT_GetNextClause	(SAT_Manager mng, int cl_idx);

int SAT_GetClauseNumLits(SAT_Manager mng, int cl_idx);

//the lits array should have enough space to store all the
//lits of a clause.
void SAT_GetClauseLits	(SAT_Manager mng, int cl_idx,  int * lits);



//Following functions dictate the run time behavior
//Don't mess with them unless you know what you are doing
void SAT_EnableConfClsDeletion(SAT_Manager mng);
void SAT_DisableConfClsDeletion(SAT_Manager mng);
void SAT_SetClsDeletionInterval(SAT_Manager mng, int freq);

void SAT_SetMaxUnrelevance(SAT_Manager mng, int n);
void SAT_SetMinClsLenForDelete(SAT_Manager mng, int n);
void SAT_SetMaxConfClsLenAllowed(SAT_Manager mng, int n);

//  void SAT_AllowMultipleConflicts(SAT_Manager mng);
//  void SAT_AllowMultipleConfCls(SAT_Manager mng);
//  void SAT_SetLitPoolCompactRatio(SAT_Manager mng, float ratio);
//  void SAT_SetLitPoolExpantionRatio(SAT_Manager mng, float ration);



//Followings are functions to facilitate the translation from 
//Circuit to a CNF representation. It will auto matically generate
//the necessary clauses to represent the gates.
//Note: The input convension are the same as in AddClause,
//      e.g. 2 * Vid + Sign

void SAT_GenClsAnd2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o );

void SAT_GenClsAndN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o );

void SAT_GenClsOr2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o );

void SAT_GenClsOrN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o );

void SAT_GenClsNand2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o );

void SAT_GenClsNandN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o );

void SAT_GenClsNor2	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o );

void SAT_GenClsNorN	(SAT_Manager mng, 
			 int * inputs,
			 int num_inputs,
			 int o );

void SAT_GenClsXor	(SAT_Manager mng, 
			 int a,
			 int b,
			 int o );

void SAT_GenClsNot	(SAT_Manager mng, 
			 int a,
			 int o );


// END OF ORIGINAL FILE
/***************************************************************/




#endif

















