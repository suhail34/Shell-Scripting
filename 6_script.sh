#!/bin/bash

echo "Enter the number : "
read -r num

while [[ $num -ne 0 ]]; do
  echo "$(($num*2))"
  ((num=$num-1))
done
