#!/bin/bash

NAME="Anonymous"

echo "This is my name : $NAME"
echo "This is my script name : $0"
echo "This is my current working directory : $PWD"
echo "This is my positional argument 2 : $2"
echo "This are all of my argument : $@"

arr=("cat" 1 "dog")
echo "The length of the array is : ${#arr[@]}"
echo "The array elements are : ${arr[@]}"
echo "multiply by 2 to 2 element : $((${arr[1]}*5))"
