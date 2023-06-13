#!/bin/bash
#delete_user
read -p "Enter username to delete: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
	userdel -r "$username" &>/dev/null
	echo "User $username deleted successfully."
else
	echo "User doesn't exist"
fi
