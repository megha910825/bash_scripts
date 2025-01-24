#!/bin/bash
name=$1
compliment=$2
user=$(whoami)
date=$(date)
whereami=$(pwd)
echo "Good Morning $name!!"
sleep 2
echo "You're looking good today $name!!"
sleep 2
echo "You have the best $2 I've ever seen $name"
sleep 2
echo "You are currently loggedin as user $user and your current directory is $whereami and today date is $date"
