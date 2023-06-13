#!/bin/bash
#add_user_to_group
read -p "Enter username: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
	read -p "Enter group name: " group_name
	grep ^$group_name: /etc/group
	if [ $? -eq 0 ]; then
		gpasswd "$group_name" -a "$username" &>/dev/null
		echo "User $username added to group $group_name successfully."
	else
		echo "Group doesn't exist."
	fi
else
	echo "User doesn't exist"
fi
