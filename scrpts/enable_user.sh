#!/bin/bash
#enable_user
read -p "Enter username to enable: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
	usermod -U "$username" &>/dev/null
	echo "User $username enabled."
else
	echo "User doesn't exist"
fi
