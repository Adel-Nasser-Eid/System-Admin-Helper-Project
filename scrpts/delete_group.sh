#!/bin/bash
#delete_group
read -p "Enter group name: " group_name
grep ^$group_name: /etc/group
if [ $? -eq 0 ]; then
	groupdel "$group_name" &>/dev/null
	echo "Group $group_name deleted successfully."
else
	echo "Group doesn't exist."
fi
