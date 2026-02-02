#!/bin/bash

#Variables for Making a new user
username="user"
password="password"
pubkey="ssh key"

#Create User
useradd -m -s /bin/bash "$username"
echo "$username:$password" | chpasswd

#Setup SSH Access with Key
mkdir -p /home/$username/.ssh
echo "$pubkey" > /home/$username/.ssh/authorized_keys
chmod 700 /home/$username/.ssh
chmod 600 /home/$username/.ssh/authorized_keys
chown -R $username:$username /home/$username/.ssh

#Add to sudo group
#If Rocky, CentOS, or Manjaro
usermod -aG wheel "$username"
#If Devian based (Kali, Ubuntu)
#usermod -aG sudo "$username"

#Self Delete and message that it works
echo "Odemashi!"
#rm -- "$0"
