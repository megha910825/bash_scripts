#!/bin/bash

# This script creates an account on the local system
# You will be prompted for the account anme and password

# Ask for the user name 
read -p 'Enter Username:' USER_NAME
echo $USER_NAME

# Ask for the real name
read -p 'Enter Realname:' REAL_NAME
echo $REAL_NAME

# Ask for the password
read -p 'Enter Password:' PASSWORD
echo $PASSWORD

# Create the user
useradd -c "${REAL_NAME}" -m ${USER_NAME}

# Set the password for the user
echo ${PASSWORD} | passwd  --stdin ${USER_NAME}

# force password change on first login
passwd -e ${PASSWORD}

