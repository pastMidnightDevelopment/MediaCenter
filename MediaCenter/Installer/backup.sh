#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
BACKUP_DIR="$HOME/MediaCenter_Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf \
"$BACKUP_DIR/MediaCenter_$TIMESTAMP.tar.gz" \
"$BASE_DIR"

echo "Backup created:"
echo "$BACKUP_DIR/MediaCenter_$TIMESTAMP.tar.gz"