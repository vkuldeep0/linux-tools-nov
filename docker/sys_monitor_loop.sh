#!/bin/bash

mkdir -p /logs

while true; do
	DATE=$(date +%Y-%m-%d_%H-%M-%S)
	LOGIFILE="/logs/syslogs_%DATE.txt"
	
	{
	echo "== SYSTEM STATS ($DATE) =="
	uptime
	echo ""
	free -h
	echp ""
	df -h
	} >> "$LOGFILE"
	echo "LOGGED AT $DATE"
	sleep 60
done
