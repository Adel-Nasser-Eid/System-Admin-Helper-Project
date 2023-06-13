#!/bin/bash
#admin_menu
select usrchc; do
	case $usrchc in
		"Add user") source ./scrpts/add_user.sh ;;
		"Modify user") source ./scrpts/modify_user.sh ;;
		"Delete user") source ./scrpts/delete_user.sh ;;
		"Change user password") source ./scrpts/change_password.sh ;;
		"List users") source ./scrpts/list_users.sh ;;
		"Add user to group") source ./scrpts/add_user_to_group.sh ;;
		"Remove user from group") source ./scrpts/remove_user_from_group.sh ;;
		"Add new group") source ./scrpts/add_group.sh ;;
		"Delete group") source ./scrpts/delete_group.sh ;;
		"Modify group") source ./scrpts/modify_group.sh ;;
		"List groups") source ./scrpts/list_groups.sh ;;
		"Disable user") source ./scrpts/disable_user.sh ;;
		"Enable user") source ./scrpts/enable_user.sh ;;
		"Quit") break ;;
		*) echo "Not valid choice!" ;;
	esac
done
echo "Quiting Admin Menu."
