#!/bin/bash

for x in {1..100}
do
  if [[ $x%2 -eq 1 ]]; then
	  echo "number $x is odd"
  fi
done

for x in {1..100}
do
  if [[ $x%2 -eq 0 ]]; then
	  echo "number $x is even"
  fi
done
