#!/bin/bash

mkdir odd even

for((i=1;i<=20;i++))
do
	if [[ $i%2 -eq 0 ]]
	then
		echo "$i is even"
		touch even/$i.txt
        else
		echo "$i is odd"
		touch odd/$i.txt
	fi
done

