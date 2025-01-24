#!/bin/bash

echo -n "enter a number"

read n

factorial=1

while [ $n -gt 1 ]

do

factorial=$((factorial * n))

n=$((n - 1))

done

echo $factorial
