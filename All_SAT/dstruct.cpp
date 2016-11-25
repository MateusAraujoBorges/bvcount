// dstruct.cpp

#include "dstruct.h"
#include <stdlib.h>

////////////////////// implementation of Assignment//////////////////////
// the array is of unsigned int
// _data[0] = length of the array
// _data[1] = number of variables in the array (16 per integer)
// _data[2]..data[len-1] - the assignments.

// for static memory allocation, does not specify size and num of vars!
// when deleted, does not delete the array!
Assignment::Assignment() {
  _localMemoryAllocation = false;
  _deleteAllowed = false;
  _offset = 0;
}
// when caling this method, data in the array should already be valid!!!
// hence - _data should have been created by another Assignment object
// when deleted, the array is also deleted.
Assignment::Assignment(unsigned int*  data, int offset) {
  _data = data;
  _localMemoryAllocation = false;
  _deleteAllowed = true;
  _offset = offset;
}

// allocates memory for numOfVars according to the structure 
// default value is set to '1' for all vars.
// When deleted, the array is also deleted.
Assignment::Assignment(int numOfVars,int offset) {
  int loop, len;
  if (numOfVars % 16 == 0)
    len = (numOfVars / 16) + 2; // 2 are for the header
  else
    len = (numOfVars / 16) + 3; // 3 are for the remainder + header
  _data = new (unsigned int[len]);
  _data[1] = numOfVars;
  _data[0] = len;
  for (loop = 2; loop < len; loop++)
    _data[loop] = 0xaaaaaaaa;
  _offset = offset;
  _localMemoryAllocation = true;
  _deleteAllowed = true;
}

Assignment::~Assignment() {
  if (_deleteAllowed) {
    if (_localMemoryAllocation)
      delete _data;
    else {
      int l = size();
      // This line has been changed due to compiler compatibility issues
      // This was not checked, and might cause runtime error!
      //      delete ((unsigned int[l])_data);
      // 2.10.2007 Avi.Y.
      delete (_data);
    }
  }
}


// returns the number of variables in the assignment,
//  -1 if no vars.
int Assignment::numOfVars() const {
  if (_data == NULL)
    return -1;
  return _data[1];
}

// returns the size in unsigned int.
int Assignment::size() const {
  if (_data == NULL)
    return 0;
  return _data[0];
}

void Assignment::print() const {
  int i;
  for (i = 1; i<=_data[1];i++) {
    int val = valueOfVar(i);
    if (val == 2)
      cout << '-';
    else 
      cout << val;
  }
}

void Assignment::print(int out) const {
  int i;
  for (i = 1; i<=_data[1];i++) {
    int val = valueOfVar(i);
    if (val == 2)
      write(out,"-",1);
    else {
      char word = val + '0';
      write(out,&word,1);
      //write(out,"PP",2);
    }
  }
}

// returns:
// 1 => i, 0=> !i, 2=> undefined, -1=> i is out of range
// -2 => there is no data.
// 1 < (i - offset) <= numOfVars()
int Assignment::valueOfVar(int i) const {
  if (_data==NULL) 
    return -2;
  i--; // vars start from 1
  i -= _offset;
  if ((i >= _data[1]) || (i < 0))
    return -1;
  return (((_data[i/16+ 2]) >> ((15-(i % 16))*2)) % 4);
}

// val==1 => i  val==0 => !i, val==2 => undefined
// returns: 0 - success, -1 - i out of range, -2 -val out of range
// -3 - data does not exist
// 0 < i <= numOfVars()
int Assignment::setVarValue(int i, int val) {
  unsigned int d1,d2,d3;
  
  if (_data==NULL) 
    return -3;
  i--;  // vars start from 1
  i -= _offset;
  if ((i >= _data[1]) || (i < 0)){
    cout << "Assignment::setVarValue(int i, int val) - i=" << i 
	 << " is out of range\n";
    cerr << "Assignment::setVarValue(int i, int val) - i=" << i 
	 << " is out of range\n";
    return -1;
  }
  if ((val < 0) || (val > 2)) {
    cout << "Assignment::setVarValue(int i, int val) - val= " << val 
	 << " is out of range\n";
    cerr << "Assignment::setVarValue(int i, int val) - val= " << val 
	 << " is out of range\n";
    return -2;
  }
  
  d3 = (val <<((15-(i % 16))*2));
  if ((i % 16) == 0)
    d1 = 0;
  else
    d1 = (_data[i/16 + 2] / (1<< ((16-(i % 16))*2))) << ((16-(i % 16))*2) ;
  if ((i % 16) == 15)
    d2 = 0;
  else
    d2 = _data[i/16 + 2] % (1<< ((15-(i % 16))*2));
  _data[i/16 + 2] = d1 + d2 + d3;
  return 0;
}

// returns a pointer to the data aray.
unsigned int* Assignment::getData() const {
  return _data;
}

// Makes the assignment point to a new data array
void Assignment::setData(unsigned int*  data) {
  _data = data;
  _localMemoryAllocation = false;
}

// Compares this to another assignment of the same length.
// returns 0 for equality, -1 for this<a2, 1 for this>a2
int Assignment::compare(const Assignment &a2) const {
  if (_data[1] != a2._data[1]) {
    cerr << "Assignment::compare can not be used between assignments of different sizes\n";
    exit (-1);
  }
  for (int i = 2; i < _data[0]; i++)
    // the following lines  do not consider dont' cares!
    if (_data[i] < a2._data[i])
      return -1;
    else if (_data[i] > a2._data[i])
      return 1;
  return 0;
}


////////////////////// implementation of AssignmentStack/////////////////
/* Linear representaion of the stack:
   _data[0] - number of levels in the stack.
   -data[1..(data[0])] number of literals in each level.
   _data[(data[0]..data[1+numOfLevels+numOfLits]] - literals
*/

// creates a new stack with 'level' levels of the sizes
// specified in the array 'sizes'.
AssignmentStack::AssignmentStack(unsigned int levels,unsigned int* sizes) {
  int loop, lits;
  
  if (sizes == NULL) {
    cerr << "AssignmentStack::AssignmentStack(int levels, int* sizes) 'sizes' is invalid\n";
    exit (-1);
  }
  
  for (loop = 0, lits = 0; loop < levels; loop++)
    lits += sizes[loop];
  _lits = lits;
  _data = new (unsigned int[1+levels+lits]);
  _data[0] = levels;
  for (loop = 0; loop < levels; loop++)
    _data[loop+1] = sizes[loop];
  for (loop = 0; loop < lits; loop++)
    _data[1+levels+loop] = 0;
  localMemoryAllocation = true;
}

// Creates a new AssignmentStack with 'data' as the data array
// The values in the array must be a valid representation
// of an AssignmentStack.
AssignmentStack::AssignmentStack(unsigned int* data) {
  int loop;
  /*  if (data == NULL) {
      cerr << "AssignmentStack::AssignmentStack(int data) 'data' is invalid\n";
      exit (-1);
      }
  */
  _data = data;
  if (data) {
    _lits = 0;
    for (loop = 1; loop <= _data[0]; loop++)
      _lits += data[loop];
  }
  localMemoryAllocation = false;
}

AssignmentStack::~AssignmentStack() {
  if (localMemoryAllocation)
    delete _data;
  else {
    if (_data) {
      int len = size();
      // This line has been changed due to compiler compatibility issues
      // This was not checked, and might cause runtime error!
      //      delete ((unsigned int[l])_data);
      // 2.10.2007 Avi.Y.
      delete (_data);
    }
  }
}

int AssignmentStack::numOfLevels() const {
  if (_data == NULL)
    return -1;
  else
  return _data[0];
}

int AssignmentStack::sizeOfLevel(int level) const {
  if ((_data==NULL) || (level >= _data[0]))
    return -1;
  else
    return _data[level + 1];
}
// total number of literals in all levels.
int AssignmentStack::numOfLits() const {
  return _lits;
}

unsigned int AssignmentStack::getLit_l_i(int level,int index) const {
  if ((_data==NULL) || (level >= _data[0]) || (_data[level+1] < index))
    return 0;
  else {
    int offset = 1;
    for (int loop = 0; loop <= level; loop++)
      offset += _data[loop];
    return _data[offset + index];
  }
}

int AssignmentStack::setLit_l_i(int level,int index,unsigned int lit) {
  if ((_data==NULL) || (level >= _data[0])|| (_data[level+1] < index))
    return -1;
  else {
    int offset = 1;
    for (int loop = 0; loop <= level; loop++)
      offset += _data[loop];
    _data[offset + index] = lit;
  }
  return 0;
}

// returns a pointer to the data array
unsigned int* AssignmentStack::getData() {
  return _data;
}

// makes the stack point to 'data' as the data array.
// The values in the array should be a valid representation
// of an AssignmentStack 
void AssignmentStack::setData(unsigned int* data) {
  int loop;
  _data = data;
  if (data) {
    _lits = 0;
    for (loop = 1; loop <= _data[0]; loop++)
      _lits += data[loop];
  }
  localMemoryAllocation = false;
}

void AssignmentStack::print() const {
  int loop1, loop2;

  for (loop1 = 0; loop1 < numOfLevels(); loop1++) {
    cout << loop1 << ": ";
    for (loop2 = 0; loop2 < sizeOfLevel(loop1); loop2++)
      cout << (getLit_l_i(loop1,loop2)&0x1?"-":"+")
	   << (getLit_l_i(loop1,loop2) >> 1) << " ";
    cout << endl;
  }
}
// returns the size of the buffer in unsigned int, 
// NOT the number of lits.
int AssignmentStack::size() const {
  if (!_data)
    return 0;
  return _lits + _data[0] + 1;
}

////////// Implementation of class Solution  /////////////
// a compact pointing to two Assignments as an interface and body
// includes a pointer to the solution that generated this solution,
// and the number of solutions that were generated from this 
// solution.

// creates a new Solution with the specified fields.
Solution::Solution (Assignment* body, Assignment* interface, Solution* prev) {
  _prevSol = prev;
  _numOfPointings = 0;
  _body = body;
  _interface = interface;
}

// deleted the Assignments but 
// not the previous solution
Solution::~Solution() {
  delete _body;
  delete _interface;
}

// Returns the interface of the solution
// and sets it to be NULL localy.
Assignment* Solution::nullify() {
  Assignment* interface;
  interface = _interface;
  _interface = NULL;
  return interface;
}

// Set the values of the fields
void Solution::setData(Assignment* body,Assignment* interface,
			Solution* prev,	int pointings) {
  _prevSol = prev;
  _numOfPointings = pointings;
  _interface = interface;
 _body = body;
}

void Solution::setPrev(Solution* prev) {
  _prevSol = prev;
}

// increases the numberOfPointings by 'num'
// returns the updated numOfPointings.
int Solution::addPointings(int num) {
  _numOfPointings += num;
  if (_numOfPointings < 0) {
    cerr << "Solution::incPointings - negative number of pointings is not allowed\n";
    exit (-1);
  }
  return _numOfPointings;
}


Solution* Solution::getPrevSolution() const {
    return _prevSol;
}

Assignment* Solution::getBody() const{
  return _body;
}

Assignment* Solution::getInterface() const {
  return _interface;
}

// compares two solutions by their interfaces
// returns true if the interfaces are equal
// false otherwise.
bool Solution::compare(Solution& s2) const {
  return (*_interface).compare(*(s2._interface));
}

