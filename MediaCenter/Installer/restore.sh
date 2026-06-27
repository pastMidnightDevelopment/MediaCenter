#!/bin/bash

echo "Available backups:"
ls -1 ~/MediaCenter_Backups

echo ""
read -p "Enter backup filename: " BACKUP

rm -rf ~/MediaCenter

tar -xzf \
"$HOME/MediaCenter_Backups/$BACKUP" \
-C "$HOME"

echo "Restore complete."