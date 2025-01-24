#!/bin/bash

echo "Command finder with Arguments"
if [[ $# -ne 1 ]];
  then
    echo "Please enter only one argument"
    exit 1
fi

if [[ $(command -v $1) ]]; then

    echo "Yes , $1 found on local system"

else

    echo "No , $1 not found on local system"

fi
