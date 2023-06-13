#!/bin/bash
#disable_user
read -p "Enter username to disable: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
	usermod -L "$username" &>/dev/null
	echo "User $username disabled."
else
	echo "User doesn't exist"
fi
