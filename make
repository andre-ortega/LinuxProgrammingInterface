#!/bin/bash
# Simple makefile output formatter
make | awk '{printf " %-4s %-3s %-24s %-30s\n", $1, $2, $3, $4}'
