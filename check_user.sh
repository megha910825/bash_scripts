#!/bin/bash
current_user=$(whoami)
echo "You are logged in as: $current_user"
if [[ $current_user == "root" ]]; then
	echo "You are logged in as user root"
else
       echo "You are logged in as: $current_user"
fi


