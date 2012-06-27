CFLAGS=-c -ansi -pedantic -Wall -Werror
OFLAGS=-o
LDFLAGS=
CC=g++
SOURCES=main.cpp Arme.cpp Personnage.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=myRpg

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)	
 
