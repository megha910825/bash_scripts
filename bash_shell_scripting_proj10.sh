#!/bin/bash
trap 'echo "Control-C cannot terminate this script."' INT

trap 'echo "Control-Z cannot terminate this script."' TSTP



echo "Enter a string (type 'EXIT' to exit)"
while true
do
	echo "Running..."
	read input
	if [[ "$input"	= "EXIT" ]] 
	then
		break
	fi
done
echo "Exiting as string matches"
