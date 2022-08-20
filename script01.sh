#!/bin/bash
#Description: Template for Shell script and enable executable permission
#Author: Tharun Reddy <tharunreddy029@gmail.com>
#Date Created:
#Date Modified:
#Version:
echo    "==========Welcome to user account creation interactive application=========="
read -p "Please enter your full name: " full_name
read -p "Please enter your desired user name for account  (a-z , 0-9): " user_name
read -p "Please enter your designation: " user_desg
read -p "Please enter your shell type from the options  1) /bin/sh   2) /bin/bash: " user_shell
sudo useradd -s $user_shell -m -d /home/$user_name -c $user_desg $user_name &>> logs.txt
if [[ $? -eq 0 ]]
then
	echo "congratulations $full_name, you have successfully created a User account"

else

	echo "Unable to create user account, Please contact system admin"
fi

