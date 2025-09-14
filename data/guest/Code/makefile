
# This is the name of the C/C++ compiler to use
#
CC = gcc

# flags to pass to the compiler
#
CFLAGS = -c

# flags to pass to the linker
#
LDFLAGS = -lstdc++

# files
#
SOURCES = main.cpp metar.cpp string_utils.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = ../bin/metarx

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *o 