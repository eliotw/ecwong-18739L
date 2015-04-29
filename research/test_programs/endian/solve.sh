#!/bin/bash

echo "The first argument: $1"

echo "Running program through CIL"
ciltutcc --save-temps --enable-tut0 -o program $1

# Include <klee/klee.h> to new file
echo "here"
sed -i.old '1s;^;#include <klee/klee.h>;' $1il.c
llvm-gcc -fno-stack-protector -I ~/klee/include/ --emit-llvm -c $1il.c

klee --optimize $1il.o

# Get results
FULLNAME=`ls klee-last/*assert*`
FIRST=${FULLNAME##*/}
ktest-tool klee-last/${FIRST%%.*}.ktest

