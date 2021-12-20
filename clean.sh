#!/bin/bash

read -r -p "Are you sure want to clean everything on this Raspberry PI? [y/N] " input
case "$input" in
	[yY][eE][sS]|[yY] | "")
		;;
	*)
		# "No" should be the default case
		exit
		;;
esac
sudo apt-get autoremove
sudo apt-get clean
trash-empty
