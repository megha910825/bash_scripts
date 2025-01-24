#!/bin/bash
if [ $# -ne 1 ]

then

echo "Please input the number as an argument that you want to reverse"

exit 1

fi
num=$1
len_num=${#num}
rev=""
echo "The length of entered number is: $len_num"
for ((i=$len_num;i>0;i--))
do
   rev=$rev${num:i-1:1}
done 
   echo "$rev with for loop"
reverse=0
b=0
echo "The length of entered number is: $len_num"
while [ $num -gt 0 ]
do
	b=`expr $num%10`
	reverse=`expr $reverse\*10 +$b`
	num=
   
   reverse=$reverse${num:j-1:1}
   ((j--))
done
   echo "$reverse with while loop"

