#!/bin/bash

factorial(){
echo "Enter number for factorial"
read number
fact=1
for((i=1;i<=$number;i=i+1))
do
  fact=$(($fact*$i))
done
  echo $fact

}

factorial
