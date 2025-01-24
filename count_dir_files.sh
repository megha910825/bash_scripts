#!/bin/bash
echo "Enter the directory path"
read dir_path
count_files=`ls -la $dir_path|wc -l`
echo "No of files in path $dir_path: $count_files"
