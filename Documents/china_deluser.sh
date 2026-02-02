#!/bin/bash

#Script to remove users
for ((i=1; i<=100; i++)); do
	username="john$i"
	if id "username" &>/dev/null; then
		sudo userdel -r "username"
		echo "Deleted user: $username"
	else
		echo "User $username does not exist..."
	fi
done
