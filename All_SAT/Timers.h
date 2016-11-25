// Timers.h
#ifndef _TIMERS_H_
#define _TIMERS_H_
#include <time.h>
#include <iostream>
#include <unistd.h>
#include <stdlib.h>

using namespace std;


class Timers {
 protected:
  int _numOfTimers;
  time_t* _timers;
  time_t _lastCheckPoint;
  time_t _startTime;
  
 public:
  Timers(int numOfTimers);
  ~Timers();
  void reset();
  void updateTimer(int timer);
  time_t valOfTimer(int timer);
  time_t totalTime();
};
  
#endif
