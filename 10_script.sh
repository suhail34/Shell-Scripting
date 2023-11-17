#!/bin/bash

output=$(awk -F ',' ' $2 > 25 { print $1 $2 }' students.csv)
mapfile -t array <<< $output

echo "Students who can participate in fights"
printf "%s\n" "${array[@]}"
