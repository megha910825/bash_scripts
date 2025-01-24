#!/bin/bash
fact=1
echo "Enter number"
read num
for(( i=1;i<=num;i++ ))
do
	fact=$(( fact*i ))
done
echo "Factorial is $fact"

