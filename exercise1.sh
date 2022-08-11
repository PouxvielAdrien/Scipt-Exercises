#!/bin/bash

## COUNT CHARS ##

letter_input=$1
file_input=$2

## Show input arguments
# echo $1 
# echo $2

## Show the exit status code
# echo $?


if [ $# -ne 2 ] #check if there are 2 arguments
then
    echo "usage : ./myscript.sh L myfile"
    exit 5 #input/output error
fi

if ! [ -e $file_input ] #check if file exists
then
    echo "file does not exist"
    exit 2 #no such file or directory
fi

if [ ${#letter_input} -ne 1 ] #check if lenght of the argument = 1
then
    echo 'wrong argument'
    exit 5 #input/output error   
fi

echo "$letter_input is present `grep $letter_input $file_input -o | wc -l` times in the file : $file_input"
exit 0 #succes
