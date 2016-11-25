// Timers.cpp
#include "Timers.h"

Timers::Timers(int n) {
  if (n < 1) {
    cerr << "Timers::Timers(int) - 0 timers are now allowed.\n";
    exit (-1);
  }
  _timers = new time_t[n];
  _numOfTimers = n;
  for (int i = 0; i < n; i++)
    _timers[i] = 0;
  _lastCheckPoint = time((time_t *)NULL);
  _startTime = _lastCheckPoint;
}

Timers::~Timers() {
  delete _timers;
}

void Timers::reset() {
  for (int i = 0; i < _numOfTimers; i++)
    _timers[i] = 0;
}

void Timers::updateTimer(int timer) {
  if ((timer < 0) ||  (timer >= _numOfTimers)) {
    cerr << "Timers::updateTimers - timer " << timer
	 << " does not exist.\n";
    exit (-1);
  }
  
  time_t currentTime = time((time_t *)NULL);
  time_t deltaT = currentTime - _lastCheckPoint;
  _lastCheckPoint = currentTime;
  _timers[timer] += deltaT;
}
time_t Timers::valOfTimer(int timer) {
  if ((timer < 0) ||  (timer >= _numOfTimers)) {
    cerr << "Timers::valOfTimer - timer " << timer
	 << " does not exist.\n";
    exit (-1);
  }
  return _timers[timer];
}


time_t Timers::totalTime() {
  time_t currentTime = time((time_t *)NULL);
  return (currentTime - _startTime);
}




