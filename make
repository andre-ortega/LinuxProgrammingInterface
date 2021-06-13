#!/bin/bash

# Run this to format compilation output for slightly easier reading

make | awk '{printf " %-4s %-3s %-24s %-30s %s %s\n", $1, $2, $3, $4, $5, $6}'
