#!/bin/bash

s=$1
length=${#1}
numTimes=$2
length=$(($length+3))

i=0
j=0

while [[ $i -le $length ]]
do
    echo -ne \*
    i=$((i+1))
done
echo

i=0
while [[ $i -le numTimes ]]; do
    echo \* $s \*
    i=$((i+1))
done

i=0
while [[ $i -le $length ]]
do
    echo -ne \*
    i=$((i+1))
done
echo