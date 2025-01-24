#!/bin/bash

echo "Select one of the three colors:"
echo "1 - Blue"

echo "2 - Yellow"

echo "3 - Cyan"

echo "4 - Orange"

read color
case $color in
   1)
	   echo "You have chosen Blue color"
	   ;;
   2)
	   echo "You have chosen Yellow color"
	   ;;
   3)
	   echo "You have chosen Cyan color"
	   ;;
   4)
	   echo "You have chosen Orange color"
	   ;;
   *)
	   echo "There is no such option"
	   ;;
esac




