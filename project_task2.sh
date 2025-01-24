#!/bin/bash

log_files=`ls -l /var/log/*.log| awk '{print $9}'`
#to=`date --date='now' '+%b %d %H:%M'`
to=`date --date='now'`
echo $to
#rom=`date --date='now-60 minutes' '+%b %d %H:%M'`
from=`date --date='now-60 minutes'`
echo $from

for item in $log_files
do
    error_exists=`grep -r "error" $item`
    if [[ $error_exists ]]
    then
	   echo "error exists in $item" 
           awk '$0>=from && $0<=to' from="$from" to="$to" $item | grep "error" 
     fi
done

#!/bin/bash

error_finder() {
echo "Starting the error Finder"
bak_files=($(find /root/Project/LogDiff/ -type f -name "*.log"))
for item in ${bak_files[*]}
do
  FILE_NAME=`echo $item | awk -F'/' '{print $NF}'`
  echo "Finding Errors in File : $FILE_NAME"
  if [ -s /root/Project/LogDiff/$FILE_NAME ]
  then
     grep -i "error" /root/Project/LogDiff/$FILE_NAME > /root/Project/LogDiff/errors.txt
     if [ -s /root/Project/LogDiff/errors.txt ]
     then
        while read -r line
        do
          echo $FILE_NAME >> /root/Project/LogDiff/final_output.txt
          echo "$line"
          grep -n "$line" /var/log/$FILE_NAME >> /root/Project/LogDiff/final_output.txt
        done < /root/Project/LogDiff/errors.txt
     fi
  fi
done
#Take the latest log backup to run the comparison in next hour
cp -p /var/log/*.log /root/Project/LogBackup
}


log_compare() {
echo "Generating Diff between last hour logs and latest logs"
files=($(find /root/Project/LogBackup/ -type f -name "*.log"))
for item in ${files[*]}
do
  echo "Working on Log File : $item"
  LOG_FILE_NAME=`echo $item | awk -F'/' '{print $NF}'`
  diff /var/log/$LOG_FILE_NAME /root/Project/LogBackup/$LOG_FILE_NAME | grep "<" | awk '{$1=""}1' | sed 's/^ *//' > /root/Project/LogDiff/$LOG_FILE_NAME
done
error_finder
}





#BackUp Logs Files for the First Time from /var/log to LogBackup Directory
mkdir -p /root/Project/LogBackup
mkdir -p /root/Project/LogDiff
rm -f /root/Project/LogDiff/final_output.txt

if [ -z "$(ls -A /root/Project/LogBackup)" ]
then
cp -p /var/log/*.log /root/Project/LogBackup
echo "Script will compare the logs with the next scheduled run"
else
echo "Directory is not Empty, So skipping Log Backup"
log_compare
fi
