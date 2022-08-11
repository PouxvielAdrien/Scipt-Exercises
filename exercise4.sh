#!/bin/bash

## GET 2 THINGS ##

if [ $# -gt 0 ]  #check if there is 0 argument
then
    echo "usage : ./myscript.sh"
    exit 5 #input/output error
fi

echo "What is your favorite color ?"
    read color 
echo "And what is your favorite animal ?"
    read animal

if [ $color = 'pink' ] || [ $animal = 'elephant' ]
then
    echo "You win"
else
    echo "$color and $animal are great but don't win this time"
fi