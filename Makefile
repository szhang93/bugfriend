CC=gcc
CXX := g++
CXXFLAGS := -Wall -g

SRCS=main.cpp bug.cpp body.cpp
OBJS=$(subst .cc,.o,$(SRCS))

all: main

main: $(OBJS)
	$(CXX) $(CXXFLAGS) -o main $(OBJS) $(LDLIBS)

main.o: main.cpp support.h

bug.o: bug.h bug.cpp

body.o: body.h body.cpp

clean:
	$(RM) $(OBJS)
