#!/bin/bash
#change_password
read -p "Enter username to change it's password: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
	read -p "Enter new password: " password
	echo $password | passwd "$username" --stdin &>/dev/null
	echo "Password for user $username changed."
else
	echo "User doesn't exist"
fi
