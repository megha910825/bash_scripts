#!/bin/bash

## This script is written to take user input regarding the serach , install and removal of linux packages and do accordingly as per user input

search()
{
	echo "Enter the package you want to search"
	read package
	apt search $package
}

install()
{
	echo "Enter the package you want to install"
	read package
	apt install $package
}

remove()
{
	echo "Enter the package you want to remove"
	read package
	apt remove $package

}

echo "enter the method you want to perform"
read method
if [[ $method == "search" ]]
then
	 search
elif [[ $method == "install" ]]
then
	 install
elif [[ $method == "remove" ]]
then
	 remove
else
	echo -e "Please select valid method:\nsearch or install"
fi
