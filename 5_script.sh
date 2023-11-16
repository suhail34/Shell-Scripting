#!/bin/bash

# list of all files in the current directory with .sh at the end
files_array=(*.sh)

for item in ${files_array[@]}; do
  if [[ -x $item ]]; then
    echo "$item is executable"
  else
    echo "$item is not executable"
  fi
done
