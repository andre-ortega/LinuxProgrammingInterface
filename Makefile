CC=gcc
CFLAGS=-I -Wall
SRC=./source/
BIN=./bin/
#CPPFLAGS=-Wall

all: ternaryOperator isms elipsesTest doofus helloWorld multiArgs

doofus: $(SRC)doofus.c
	$(CC) -o $(BIN)doofus $(SRC)doofus.c

elipsesTest: $(SRC)elipsesTest.c
	$(CC) -o $(BIN)elipsesTest $(SRC)elipsesTest.c

helloWorld: $(SRC)helloWorld.c
	$(CC) -o $(BIN)helloWorld $(SRC)helloWorld.c

isms: $(SRC)isms.c
	$(CC) -o $(BIN)isms $(SRC)isms.c

multiArgs: $(SRC)multiArgs.c
	$(CC) -o $(BIN)multiArgs $(SRC)multiArgs.c

ternaryOperator: $(SRC)ternaryOperator.c
	$(CC) -o $(BIN)ternaryOperator $(SRC)ternaryOperator.c

clean:
	rm -f $(BIN)*
