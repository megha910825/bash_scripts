#!/bin/bash
# Bash Project 1: designed to create dir name $dir_name and print user and system info in the created directory in file name $dir_name_$user_$datetime.txt

dir_name=/root/Users_Login_Data/
mkdir -m 777 -p $dir_name
echo "New dir $dir_name is created"

username=$(users)
#login=$(id| awk '{print $1}'|awk -F= '{print $2}')
login=$(whoami)
datetime=$(date +%m-%e-%G-%_H-%M)
ip_address=$(hostname -I|awk '{print $1}')

ls -lad $dir_name

touch $dir_name$users_$datetime.txt


echo "Username is : $username" >>  $dir_name$users_$datetime.txt
echo "Login is : $login" >>  $dir_name$users_$datetime.txt
echo "datetime is : $datetime" >>  $dir_name$users_$datetime.txt
echo "IPAddress is : $ip_address" >>  $dir_name$users_$datetime.txt
