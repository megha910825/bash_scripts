#!/bin/bash

## Display UID of the user and username of the user executing the script
## display if the user is vagrant user or not

# Display the UID

echo "${UID}"
# Only display if the UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne ${UID_TO_TEST_FOR} ]]
then
	echo "Your UID does not match with ${UID_TO_TEST_FOR}"
	exit 1
else
	echo "${UID}"
fi

# Display the username
USER_NAME=$(id -un)

## test if the command succeded.
if [[ "${?}" -ne 0 ]]
then
 echo "The id command did not execute successfully"
 exit 1
fi
echo "Your username is ${USER_NAME}"

# You can use a string test conditional
USER_NAME_TO_TEST_FOR='megha'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "The username matches to ${USER_NAME_TO_TEST_FOR}"
fi

# Test for != (not equal) for the string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "The username does matches to ${USER_NAME_TO_TEST_FOR}"
	exit 1
fi

exit 0


