#!/bin/bash
#list_users
echo "List of all users:"
echo "-----------------------------"
cut -d: -f1 /etc/passwd
echo "-----------------------------"
