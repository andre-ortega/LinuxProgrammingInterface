# Makefile #

CC=gcc
CFLAGS=-I -Wall -g
SRC=./src
BIN=./bin
OBJ=./obj

MODULES=ternaryOperator isms elipsesTest doofus \
	helloWorld moveFiles multiArgs

COMPILER_OBJS=$(MODULES:%=$(OBJ)/%.o)
TARGETS=$(MODULES:%=$(BIN)/%)

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) -c -o $@ $<

$(BIN)/%: $(OBJ)/%.o
	$(CC) $(CFLAGS) -o $@ $<

all: $(TARGETS)

clean:
	rm -f $(BIN)/*
	rm -f $(OBJ)/*
	rm -f ./src/ternaryOperator

#save
