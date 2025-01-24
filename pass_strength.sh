#!/bin/bash
echo "Enter Password"
read pass
len=${#pass}
if [[ $len -ge  10 ]]; then
	if echo "$pass" |grep -q [A-Z] && echo "$pass" |grep -q [a-z]
	then
		echo "Password ok"
        else
		echo "Password must contain atleast one Uppercase & lowercase character"
	fi
else
	echo "Password must have atleast 10 characters"
fi
