#!/bin/bash

read -r -p "Are you sure want to install Raspberry PI OS 64 Bi script [y/N] " input
case "$input" in
	[yY][eE][sS]|[yY] | "")
		;;
	*)
		# "No" should be the default case
		exit
		;;
esac
sudo apt update
sudo apt upgrade
sudo apt install libreoffice
sudo apt-get install libwidevinecdm0
sudo apt-get install trash-cli