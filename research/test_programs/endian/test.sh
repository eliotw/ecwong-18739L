#!/bin/bash

FULLNAME=`ls klee-last/*assert*`
echo $FULLNAME
FIRST=${FULLNAME##*/}
echo $FIRST
echo ${FIRST%%.*}

