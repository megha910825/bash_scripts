#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.

if [[ ${UID} -ne 0 ]]
then
	echo "Please run the script with root user"
	exit 1
fi

# Get the username
read -p "Enter username to be created:" UNAME

# get the comment
read -p "Enter the name of the person or application that will be using this account:" COMMENT

# Get the password
read -p "Please provide password for the user:" PASSWORD

# Create the account.
useradd -c ${COMMENT} -m ${UNAME}


# Check to see if the useradd command succeeded.
# We don't want to tell the user that an account was created when it hasn't been.
if [[ ${?} -ne 0 ]]
then
	echo "User Account cannnot be created  for some reason"
        exit 1
fi

# Set the password
echo ${PASSWORD} | passwd --stdin ${UNAME}
if [[ ${?} -ne 0 ]]
then
	echo "The Password for the account could not be set"
        exit 1
fi
# force password change on first login
passwd -e ${UNAME}
# Display the username, password, and the host where the user was created.
echo
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
exit 0
