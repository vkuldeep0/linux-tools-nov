#!/bin/bash

LOG_DIR="$HOME/logs"
LOG_FILE="$LOG_DIR/daily_log.txt"
MAX_SIZE=1000000 # 1MB in bytes

mkdir -p "$LOG_DIR"
if [ -f "$LOG_FILE" ] && $(stat -c%s "$LOG_FILE") -ge $MAX_SIZE ]; then
	mv "$LOG_FILE" "$LOG_DIR/daily_log_$(date +%Y-%m-%d_%H-%M-%S).txt"
	echo "LOG ROTATED"
fi

# append system info
{
	echo "========================================"
	echo "Log Time: $(date)"
	echo "Uptime:"
	uptime
	echo "Memory:"
	free -h
	echo "Disk:"
	df -h
	echo "========================================"
	echo ""
} >> "$LOG_FILE"

echo "Log Updated: $LOG_FILE"
