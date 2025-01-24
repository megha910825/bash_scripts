#!/bin/bash

echo "What is your name?"
read name
echo "How old are you?"
read age
echo "Hello $name, you are $age years old."
sleep 2
echo "Calculating"
echo ".........1"
echo "Calculating"
echo ".........2"
echo "Calculating"
echo ".........3"
echo "Calculating"
echo ".........4"
getrich=$((( $RANDOM % 15 ) + $age ))
echo "$name , you will become a millionare when you are $getrich years old"
