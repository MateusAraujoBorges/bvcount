#CC = CC
CC = g++
cc = gcc
RM = rm -f

FLAGS = -m32 -g -O3 -DNDEBUG

RANLIB = ranlib
AR = ar

.SUFFIXES: .o .cpp .c

LIB_HEADERS = SAT.h asap_base.h asap_clsgen.h asap_common.h asap_dbase.h asap_solver.h dstruct.h InterfaceCSolver.h Timers.h



BATCH_SRCS = batch_solver.cpp 
BATCH_OBJS = $(BATCH_SRCS:.cpp=.o)

LIB_SRCS = dstruct.cpp asap_utils.cpp asap_solver.cpp asap_dbase.cpp asap_c_wrapper.cpp asap_cpp_wrapper.cpp InterfaceCSolver.cpp Timers.cpp utils.cpp
LIB_OBJS = $(LIB_SRCS:.cpp=.o)

TARGET:   $(BATCH_OBJS) libsat.a 
	g++ $(FLAGS) -o batch_all_sat $(BATCH_OBJS) libsat.a

$(LIB_OBJS): $(LIB_HEADERS) makefile

libsat.a:   $(LIB_OBJS)
	@rm -f libsat.a
	$(AR) cr libsat.a $(LIB_OBJS)
	$(RANLIB) libsat.a
.c.o:
	$(cc) $(FLAGS) -c $<
.cpp.o:
	$(CC) $(FLAGS) -c $< 


clean:
	$(RM) *.o core* *~ *.out libsat.a all_sat batch_all_sat *# *.gch


