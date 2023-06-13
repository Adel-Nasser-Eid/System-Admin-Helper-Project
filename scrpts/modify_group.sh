#!/bin/bash
#modify_group
read -p "Enter group name to modify: " group_name
grep ^$group_name: /etc/group
if [ $? -eq 0 ]; then
	read -p "Enter new group name: " new_group_name
	groupmod -n "$new_group_name" "$group_name" &>/dev/null
	echo "Group modified, new name is $new_group_name."
else
	echo "Group doesn't exist."
fi
