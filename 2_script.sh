#!/bin/bash

FIRST_NAME=$1
LAST_NAME=$2
(( eval=`wc -c << $FIRST_NAME`%3 ))

echo $eval
