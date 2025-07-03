#!/bin/bash

while true; do
	clear
	echo "====================================="
	echo "		SYSTEM INFO TOOL"
	echo "====================================="
	echo "1. Show CPU Load"
	echo "2. Show Memory Usage"
	echo "3. Dis Usage"
	echo "4. Top 5 Processors"
	echo "5. Exist"
	echo "======================================"
	read -p "Enter your choice [1-5]" choice

	case $choice in
		1)
			echo -e "\n>> CPU LOAD:"
			uptime
			;;
		2)
			echo -e "\n>> MEMORY USAGE:"
			free -h
			;;
		3)
			echo -e "\n>> DISK USAGE:"
			df -h
			;;
		4)
			echo -e "\n>> TOP 5 PROCESSORS:"
			ps -eo pid,ppid,cmd,%mem,%cpu --sort=%cpu | head -6
			;;
		5)
			echo "BYE!"
			exit 0
			;;
		*)
			echo "INVALID CHOCIE!"
			;;
	esac

	echo -e "\nPress any key to return to menu.."
	read -n 1 -s
done
