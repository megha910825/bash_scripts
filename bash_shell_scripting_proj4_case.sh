#!/bin/bash

## This script is to ask for user choices and do the necessary action such as serach install and removal of linux packages as per user input with use of case statement

echo "Please enter the method you want to use:
1 - Search
2 - Install
3 - Remove"

read choice

case $choice in
	1) echo "You have selected for search"
           echo "Enter the name of linux package you want to search?"
	   read package
	   apt search $package
	;;
	2) echo "You have selected for Install"
           echo "Enter the name of linux package you want to install?"
	   read package
	   apt install $package
	;;
	3) echo "You have selected for Remove"
           echo "Enter the name of linux package you want to remove?"
	   read package
	   apt remove $package
	;;
esac
