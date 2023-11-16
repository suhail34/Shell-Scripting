#!/bin/bash

factorial ()
{
  local ans=1
  local factorialOf=$1
  for((num=$factorialOf; num>0; num--)); do
    ((ans*=num))
  done
  echo "$ans"
}

result1=$(factorial 5)
result2=$(factorial 6)

echo "Factorial of 5 is $result1"
echo "Factorial of 6 is $result2"
