#!/bin/bash
#modify_user
read -p "Enter username to modify: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
	read -p "Enter new comment for user: " comment
	usermod -c "$comment" "$username" &>/dev/null
	echo "User $username modified successfully."
else
	echo "User doesn't exist"
fi
