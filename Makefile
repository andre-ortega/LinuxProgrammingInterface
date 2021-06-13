CC=gcc
CFLAGS=-I -Wall
SRC=./source/
BIN=./bin/
#CPPFLAGS=-Wall

all: ternaryOperator isms elipsesTest doofus helloWorld multiArgs

doofus: $(SRC)doofus.c
	$(CC) -o $(BIN)doofus $(SRC)doofus.c $(CFLAGS)

elipsesTest: $(SRC)elipsesTest.c
	$(CC) -o $(BIN)elipsesTest $(SRC)elipsesTest.c $(CFLAGS)

helloWorld: $(SRC)helloWorld.c
	$(CC) -o $(BIN)helloWorld $(SRC)helloWorld.c $(CFLAGS)

isms: $(SRC)isms.c
	$(CC) -o $(BIN)isms $(SRC)isms.c $(CFLAGS)

multiArgs: $(SRC)multiArgs.c
	$(CC) -o $(BIN)multiArgs $(SRC)multiArgs.c $(CFLAGS)

ternaryOperator: $(SRC)ternaryOperator.c
	$(CC) -o $(BIN)ternaryOperator $(SRC)ternaryOperator.c $(CFLAGS)

clean:
	rm -f $(BIN)*
