#!/bin/bash

rsync -rv --delete "/home/" "/root/backup"

if [[ `date +'%H'` -eq 23 ]]
then
echo "Sending Email for Today's File Backup"
TOTAL_FILES=`find /root/backup/ -mtime -1 -type f -print | wc -l`
echo $TOTAL_FILES
#Add your smtp command to send out an email
else
echo "Will Send the Email at 11 PM"
fi
