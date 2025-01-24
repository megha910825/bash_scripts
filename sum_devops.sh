#!/bin/bash
awk '{ sum += $1 } END { print sum }' devops.txt

file="devops.txt"

# for line in $(cat $1)
while read line
do
sum=$(($sum + $line ))
done < $file
echo $sum
