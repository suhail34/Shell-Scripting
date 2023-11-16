#!/bin/bash

while true; do
  echo "Enter 1st number : "
  read -r num1
  echo "Enter 2nd number : "
  read -r num2
  echo "Enter the operation : "
  read -r op
  case "$op" in
    "+") echo "$(($num1+$num2))"
    ;;
  "-") echo "$(($num1-$num2))"
    ;;
  "/") echo "$(($num1/$num2))"
    ;;
  "*") echo "$(($num1*$num2))"
    ;;
    *) echo "Invalid operation"
      continue
    ;;
  esac
  echo "Do you want to continue(y/n) : "
  read -r var
  if [ $var = "n" ]; then
    break 
  fi
done
