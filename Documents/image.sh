#!/bin/bash

#Config

URL="http://10.162.6.107:8000/bird.png"
DEST="/tmp/bird.png"

#Main loop
while true; do
	curl -s "$URL" -o "$DEST"

	if [ -f "$DEST" ]; then
		pkill -f "$DEST"
		xdg-open "$DEST" >/dev/null 2>&1
	fi
	sleep 30
done
