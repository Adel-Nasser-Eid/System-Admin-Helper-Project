#!/bin/bash
#add_user
read -p "Enter username: " username
id $username &>/dev/null
if [ $? -eq 0 ]; then
echo "User already exist"
else
read -p "Enter password: " password
read -p "Enter a comment for user: " comment
useradd -c "$comment" "$username" &>/dev/null
echo $password | passwd "$username" --stdin &>/dev/null
echo "User $username added successfully."
fi
