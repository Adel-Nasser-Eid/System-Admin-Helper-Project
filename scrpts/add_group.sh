#!/bin/bash
#add_group
read -p "Enter group name: " group_name
grep ^$group_name: /etc/group
if [ $? -eq 0 ]; then
	echo "Group already exist."
else
	groupadd "$group_name" &>/dev/null
	echo "Group $group_name added successfully."
fi
