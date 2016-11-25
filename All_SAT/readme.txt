This package contatins Memory Efficient All-SAT solver.
This code is based on zChaff, developed by Lintao Zhang in Princton
university. 
http://www.princeton.edu/~chaff/

The all SAT engine is given in the libsat.a library. In order to use
it, make sure you link this library to your code. Creating an All-SAT 
solver and using it, is done by using the methods declared in 
InterfaceSatSolver.h (under USER METHODS) and in SAT.h . Make sure you 
use InterfaceSatSolver constructor to create your All-SAT solver.
This All-SAT solver makes use of specific data structures which are
linear representations of assignments and assignment stacks. These 
representations allow quick memory allocation in continous blocks, which 
are also easy to transfer between machines. The data structures are 
declared in dstruct.h 

The functionality of the solver is demonstrated in batch_solver. Usage:
batch_solver inputFile <important size> <batch size>
Let N = important size. This is the number of important variables. The 
last N variables are considered by the solver as important. batch 
size is the number of solutions serached for in each iteration.

For questions or bug report, please contact Avi Yadgar 
yadgar@tx.technion.ac.il