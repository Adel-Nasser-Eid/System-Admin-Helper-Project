#!/bin/bash
#list_groups
echo "List of all groups:"
echo "-----------------------------"
cut -d: -f1 /etc/group
echo "-----------------------------"
