#!/bin/bash

mkdir -p /logs

while true; do
  DATE=$(date +%Y-%m-%d_%H-%M-%S)
  LOGFILE="/logs/syslog_$DATE.txt"

  echo "== System Stats ($DATE) ==" >> "$LOGFILE"
  uptime >> "$LOGFILE"
  echo "" >> "$LOGFILE"
  free -h >> "$LOGFILE"
  echo "" >> "$LOGFILE"
  df -h >> "$LOGFILE"

  echo "✅ Logged at $DATE"
  sleep 60
done
