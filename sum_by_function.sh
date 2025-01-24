#!/bin/bash

sum()
{
	echo "Enter first number"
	read num1
	echo "Enter second number"
	read num2
	sum_num=$(( num1+num2 ))
	echo "Sum of two numbers are: $sum_num"
}

sum
