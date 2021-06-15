CC=gcc
CFLAGS=-I -Wall
SRC=./source/
BIN=./bin/
OBJ=./obj/
#CPPFLAGS=-Wall

all: ternaryOperator.o isms.o elipsesTest.o doofus.o helloWorld.o moveFiles.o multiArgs.o

doofus.o: $(SRC)doofus.c
	$(CC) -o $(OBJ)doofus.o $(SRC)doofus.c $(CFLAGS)

elipsesTest.o: $(SRC)elipsesTest.c
	$(CC) -o $(OBJ)elipsesTest.o $(SRC)elipsesTest.c $(CFLAGS)

helloWorld.o: $(SRC)helloWorld.c
	$(CC) -o $(OBJ)helloWorld.o $(SRC)helloWorld.c $(CFLAGS)

isms.o: $(SRC)isms.c
	$(CC) -o $(OBJ)isms.o $(SRC)isms.c $(CFLAGS)

moveFiles.o: $(SRC)moveFiles.c
	$(CC) -o $(OBJ)moveFiles.o $(SRC)moveFiles.c $(CFLAGS)

multiArgs.o: $(SRC)multiArgs.c
	$(CC) -o $(OBJ)multiArgs.o $(SRC)multiArgs.c $(CFLAGS)

ternaryOperator.o: $(SRC)ternaryOperator.c
	$(CC) -o $(OBJ)ternaryOperator.o $(SRC)ternaryOperator.c $(CFLAGS)

clean:
	rm -f $(BIN)*
