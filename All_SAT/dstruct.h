// dstruct.h
#ifndef _DATA_STRUCTURES_
#define _DATA_STRUCTURES_

#include <iostream>
#include <unistd.h>
#include <time.h>
#include <ext/hash_set>
using __gnu_cxx::hash_set;
using __gnu_cxx::hash;

using namespace std;

// Class Assignment
// Object of this class are used to store assignments.
// The assignment is stored in an unsigned int array.
// each variable can have value of 0,1 or undefined (2).
// each byte holds 4 variables.
class Assignment {
 public:
  // A hash function
  struct hashAss
  {
    unsigned int operator()(const Assignment* a) const
    {
      hash<unsigned int> H;
      unsigned int* data = a->getData();
      unsigned int sumValue = data[0];
      for (int loop = 1; loop < data[0]; loop++) {
	 sumValue = sumValue ^ data[loop];
      }
      return (H(sumValue));
    }
  };
  // Equality operator
  struct eqAss
  {
    bool operator()(const Assignment* a1, const Assignment* a2) const
    {
      return ((a1->compare(*a2)) == 0);
    }
  };
  
 public:
  Assignment();
  Assignment(unsigned int* data,int offset = 0);
  Assignment(int numOfVars,int offset = 0);
  ~Assignment();
  int numOfVars() const;
  int size() const;                         // number of int, including header
  int valueOfVar(int index) const;
  int setVarValue(int index, int value);
  unsigned int* getData() const;
  void setData(unsigned int* data);
  void print() const;
  void print(int out) const;
  int compare(const Assignment &a2) const;
  static int dataSize(int numOfVars) { // returns the number of bytes required
    int len;                           // for Assignment with nomOfVars vars
    if (numOfVars % 16 == 0)
      len = (numOfVars / 16) + 2; // 2 are for the header
    else
      len = (numOfVars / 16) + 3; // 3 are for the remainder + header
    return len;
  };
 protected:
  unsigned int* _data;
  bool _localMemoryAllocation;
  bool _deleteAllowed;
  int _offset;
};




// Class AssignmentStack
// Objects of this class are used to store assignment stacks
// The stack can include multiple levels starting with 0
// Each level can be of 0 literals or more.
// Each number represents a literal according to:
// variable = val / 2
// polarity = val mod 2
class AssignmentStack {
 protected:
  unsigned int* _data;
  int _lits;
  bool localMemoryAllocation;

 public:
  AssignmentStack(unsigned int levels, unsigned int* sizes);
  AssignmentStack(unsigned int* data = NULL);
  ~AssignmentStack();
  int numOfLevels() const ;
  int sizeOfLevel(int level) const;
  int numOfLits() const;
  unsigned int getLit_l_i(int level,int index) const;
  int setLit_l_i(int level,int index, unsigned int lit);
  unsigned int* getData();
  void setData(unsigned int* data);
  void print() const;
  int size() const ; // size of buffer, NOT number of lits.
};

// Class Solution
// Used to point to both body and interface of a solution.
// Any of the two can be null, according to the problem.
// Holds a pointer to the solution that lead to it.
class Solution {
 public:
  // hash function
 struct hashSolution
  {
    unsigned int operator()(const Solution* s) const
    {
      Assignment::hashAss H;
      return (H(s->_interface));
    }
  };
 // equality operator
  struct eqSolution
  {
    bool operator()(const Solution* s1, const Solution* s2) const
    {
      Assignment::eqAss E;
      return E(s1->_interface,s2->_interface);
    }
  };
  
 protected:
  Solution* _prevSol;        // the solution that generated this solution
  int _numOfPointings;       // num of solutions generated from this 
  Assignment* _body;
  Assignment* _interface;
  
 public:
  Solution (Assignment* body = NULL,
	    Assignment* interface = NULL,
	    Solution* prev = NULL);
  ~Solution();
  void setData(Assignment* body,Assignment* interface,
	       Solution* prev=NULL, int pointings = 0);
  void setPrev(Solution* prev);
  int addPointings(int num);
  Solution* getPrevSolution() const;
  Assignment* getBody() const;
  Assignment* getInterface() const;
  Assignment* nullify();
  bool compare(Solution& s2) const;
};


struct Assignments {
  unsigned int *body;
  unsigned int *interface;
};


#endif
