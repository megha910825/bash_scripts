#!/bin/bash
#
# This script creates a new user on the local system.
# You must supply a username as an argument to the script.
# Optionally, you can also provide a comment for the account as an argument.
# A password will be automatically generated for the account.
# The username, password, and host for the account will be displayed.


# Make sure the script is being executed with superuser privileges.

if [[ ${UID} -ne 0 ]]
then
	echo "Please run the script with root user"
	exit 1
fi

# If accountname is not provided, script will be exited
if [[ "${#}" -eq 0 ]]
then
	echo "Please provide at least one argument"
	exit 1
fi

# Create the account.
COMMENTS="${@}"
UNAME="${1}"
useradd  -c "${COMMENTS}" -m "${UNAME}"


# Check to see if the useradd command succeeded.
# We don't want to tell the user that an account was created when it hasn't been.
if [[ ${?} -ne 0 ]]
then
	echo "User Account cannnot be created  for some reason"
        exit 1
fi

# Set the password
PASSWORD=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13`
echo ${PASSWORD} | passwd --stdin $1
# force password change on first login
passwd -e "${1}"
# Display the username, password, and the host where the user was created.
echo
echo 'username:'
echo "${1}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
exit 0
