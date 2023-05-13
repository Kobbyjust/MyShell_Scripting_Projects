#!/bin/bash

## class_1
echo "Hello World"
echo " "


## Class 2
# Working with variables in Bash
myname="KobbyJust"
myage="50"
echo "Hello, my name is $myname."
echo "I am $myage years old"

# Working with subshells
files=$(pwd)
echo $files


now=$(date)
echo "The system time and date is $now"
