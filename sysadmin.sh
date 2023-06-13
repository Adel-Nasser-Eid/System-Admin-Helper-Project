#!/bin/bash
# Main menu loop

if [ "$EUID" -eq 0 ]; then
choices=("Add user" "Modify user" "Delete user" "Change user password" "List users" "Add user to group" "Remove user from group" "Add new group" "Delete group" "Modify group" "List groups" "Disable user" "Enable user" "Quit")

	echo -e "Welcome to Adel's SysAdmin Helper \nType the number of your choice"
	PS3="(Press enter to see choices) Choice: "

	select startchc in Start About Exit; do
		case $startchc in
			Start) source ./scrpts/admin_menu.sh "${choices[@]}" ;;
			About) source ./scrpts/about_script.sh ;;
			Exit) break ;;
			*) echo "Not valid choice!" ;;
		esac
	done
else
	echo "Please run the script as root!"
fi
echo "Exiting Adel's SysAdmin Helper ..."
