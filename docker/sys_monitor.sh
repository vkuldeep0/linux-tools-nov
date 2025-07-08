#!/bin/bash

DATE="$(date +%Y-%m-%d_%H-%M-%S)"

#OUTFILE
LOGFILE="/logs/syslog_$DATE.txt"

mkdir -p /logs

#collect system info
echo "===System Stats for $DATE ===" >> $LOGFILE

echo "CPU LOAD:" >> $LOGFILE
uptime >> $LOGFILE

#memory selection
echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE

#disk space section
echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

#Top 5 process
echo "Top 5 Processes:" >> $LOGFILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=%mem | head -6 >> $LOGFILE

echo "Log Written to $LOGFILE"
