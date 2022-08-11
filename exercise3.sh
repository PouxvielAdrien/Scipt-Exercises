#!/bin/bash

## COUNT CHARS 2 ##


letter_input=$1
file_input="${2:-/dev/stdin}"



if  [ $# -lt 1 ] || [ $# -gt 2 ]  #check if there are at least 1 argument and at most 2
then
    echo "usage : ./myscript.sh L myfile"
    echo "or : cat myfile | ./myscript.sh L"
    exit 5 #input/output error
fi



if [ ${#letter_input} -ne 1 ] #check if lenght of the argument = 1
then
    echo 'wrong argument'
    exit 7 #argument is too long    
fi


if ! [ -e $2 ] #check if file exists or not
then
    echo "file does not exist"
    exit 2 #no such file or directory
fi
echo "$letter_input is present `grep $letter_input $2 -o | wc -l` times"
exit 0 #succes