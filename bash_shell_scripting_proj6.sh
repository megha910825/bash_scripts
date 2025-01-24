#!/bin/bash

echo "Enter the length of password required"
read num

if [[ $num -gt 32 || $num -lt 8 ]]; then
	echo "The length should be between 8 to 32 digits only"
else
	echo "The new generated password is : `tr -cd "[:digit:]" < /dev/urandom |head -c $num`"
fi
