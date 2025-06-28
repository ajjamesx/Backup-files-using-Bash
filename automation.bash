#!/bin/bash

# Simple backup script

SOURCE="$HOME/Documents/my_project"
DEST="$HOME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
LOGFILE="$DEST/backup_log.txt"

mkdir -p "$DEST"

TARFILE="$DEST/backup_$DATE.tar.gz"

echo "[$(date)] Backing up $SOURCE to $TARFILE" >> "$LOGFILE"
tar -czf "$TARFILE" "$SOURCE" && echo "Backup successful" >> "$LOGFILE" || echo "Backup failed" >> "$LOGFILE"
