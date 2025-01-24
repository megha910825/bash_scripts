#!/bin/bash

echo "Enter directory path"
read path
count_files= ls -l $dir| wc -l
echo "No of files: $count_files"

