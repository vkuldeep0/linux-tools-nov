#!/bin/bash

SOURCE="/home/ketix/project_nov"
BACKUP="/home/ketix/backups"
DATE="$(date +%Y-%m-%d_%H-%M-%S)"

mkdir -p "$BACKUP"

tar -czf "$BACKUP/backup_$DATE.tar.gz" "$SOURCE"
echo "Backup Completed at $DATE"
