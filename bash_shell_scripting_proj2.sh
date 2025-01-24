#!/bin/bash

### This script is Bash Project 2 designed to get all the .txt files from dir_name folder which are older than 60 mniutes , write them in log files and the delete all 60 minutes old files

dir_name=/root/Users_Login_Data/
log_file=/root/delete.log
find $dir_name*.txt -type f -cmin +10 -print >> $log_file
find $dir_name*.txt -type f -cmin +10 -print -delete
echo "written in log file $log_file"

## Another method to delete the file
#while read LINE
#do
#	echo "Deleting file $LINE"
#	rm $LINE
# done < $log_file
