#!/bin/bash

## FIBONACCI ##




number_input=$1

if [ $# -ne 1 ] #check if there is 1 argument
then
    echo "usage : ./exercise2-v1.sh 3"
    exit 5 #input/output error
fi

if ! [[ $number_input =~ ^[0-9]+$ ]] # Check if argument is an integer
then
  echo "usage : ./exercise2-v1.sh 3"
  exit 5 #input/output error
fi

a=0
b=1
i=2
echo "Fibonacci series is"
echo "$a"
echo "$b"
while [ $i -lt $number_input ] #check if i is lower than number_input
do
  i=`expr $i + 1 `
  c=`expr $a + $b `
  echo "$c"
  a=$b
  b=$c
done