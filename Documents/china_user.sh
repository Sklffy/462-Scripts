#!/bin/bash

#100 Users Script
for ((i=1; i<=100; i++)); do
	username="John$i"
	sudo useradd "$username"
	echo "Created user: $username"
done
