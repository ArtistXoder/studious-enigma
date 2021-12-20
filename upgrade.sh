#!/bin/bash

read -r -p "Are you sure want to Upgrade everything on this Raspberry PI? [y/N] " input
case "$input" in
	[yY][eE][sS]|[yY] | "")
		;;
	*)
		# "No" should be the default case
		exit
		;;
esac
sudo apt-get update
sudo apt-get upgrade
sudo rpi-eeprom-update 