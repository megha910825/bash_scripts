#!/bin/bash

echo "Here are the 10 largest directories under path /var/log"
large_dir=`du -h /var/log | sort -nr|head -n 10`
echo $large_dir
