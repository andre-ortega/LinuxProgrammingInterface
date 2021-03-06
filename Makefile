# Makefile #

MODULES=ternaryOperator isms elipsesTest doofus \
	helloWorld multiArgs

CC=gcc
CFLAGS=-I -Wall -g
SRC=./src
BIN=./bin
OBJ=./obj

TARGETS=$(MODULES:%=$(BIN)/%)

COMPILER_OBJS=$(MODULES:%=$(OBJ)/%.o)
.PRECIOUS: $(COMPILER_OBJS)

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) -o $@ $< -c

$(BIN)/%: $(OBJ)/%.o
	$(CC) -o $@ $< $(CFLAGS) 

all: $(TARGETS)

clean:
	rm -f $(BIN)/*
	rm -f $(OBJ)/*
