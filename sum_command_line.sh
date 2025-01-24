#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Please provide second argument"
  exit 1
fi
sum=$(( $1+ $2 ))
echo $sum
