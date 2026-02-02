#!/bin/bash

/usr/bin/tmux has-session -t 01 2>/dev/null
if [ $? !=0 ]; then
	/usr/bin/tmux new-session -d -s 01
       	/usr/bin/tmux send-keys -t 01 "sudo bash /usr/local/bin/sysd.sh" C-m
fi
