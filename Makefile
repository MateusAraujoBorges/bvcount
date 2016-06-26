CC=g++
CUDD_DIR=cudd-3.0.0
CFLAGS=-Wall -Wextra -std=c++11 -O -g -o bddExploration 

INCLUDE=-L $(CUDD_DIR)/cplusplus/.libs/ -L $(CUDD_DIR)/cudd/.libs/ -I $(CUDD_DIR)/cplusplus/ -I $(CUDD_DIR)/cudd/ -lcudd 

all:
	$(CC) $(CFLAGS) bdd.cpp $(INCLUDE) 
