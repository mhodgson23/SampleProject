# 
# Make file for sample wind turbine project
# @Author: Michael Hodgson
# @LastModifiedDate: 06.14.2020
# @Version: 0.0.1
#

# Using MinGW-32 g++ compiler
CC=g++
# Turn on all warnings and debug information
CFLAGS=-Wall -g
# Include files
INC=
# Include Libraries
LIB=

# Create target for "make all"
all: main

main: main.o consumption.o geographic_random.o io.o phenomena.o turbines.o wind.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIB)
	
main.o: main.hpp consumption.hpp geographic_random.hpp io.hpp phenomena.hpp turbines.hpp wind.hpp

consumption.o: consumption.hpp

geographic_random.o: geographic_random.hpp

io.o: io.hpp

phenomena.o: phenomena.hpp

turbines.o: turbines.hpp

wind.o: wind.hpp

# Make Doxygen documentation
documentation:
	doxygen doxygenConfig
	
# Make clean clears out all object files for the "main" target
clean:
	del /f *.o