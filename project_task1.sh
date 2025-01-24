#!/bin/bash

date_time=`date +'%H'`
echo "Current hour: $date_time"
report_name=/root/$date_time.txt
touch $report_name
ip_addr=`ip addr | grep eth0| grep inet| awk '{print $2}'`
echo "IP Address is : $ip_addr" >> $report_name

utime=`uptime`
echo "Uptime is : $utime" >> $report_name

last_login=`last`
echo "last_login details are: $last_login" >> $report_name

disk_usage=`du -h`
echo "Disk space utilization is: $disk_space" >> $report_name

free_memory=`df -h`
echo "Disk free memory  is: $free_memory" >> $report_name


