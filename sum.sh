#!/bin/bash

# Define the add function
add() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "$sum"
}

# Test the add function
result=$(add $1 $2)
echo "The sum is: $result"
