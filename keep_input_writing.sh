#!/bin/bash
file_name=output.txt
touch $file_name
echo "Enter something"
while read line;
do
echo $line >> $file_name
echo "Written in file. Press << CTRL+D >> to abort"
done
