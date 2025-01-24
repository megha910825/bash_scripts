#!/bin/bash

## This script is created to take Linux package name from user and search it and print back the result

echo "Enter linux package you want to search"
read package_name
echo "**********************************************"
echo "Seraching for the package:  $package_name"
apt search $package_name
