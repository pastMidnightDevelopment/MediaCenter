#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
LOG_DIR="$BASE_DIR/Logs"
PERM_LOG="$LOG_DIR/permissions.log"

mkdir -p "$LOG_DIR"

echo "==============================" | tee -a "$PERM_LOG"
echo " MediaCenter Permission Check" | tee -a "$PERM_LOG"
echo "==============================" | tee -a "$PERM_LOG"

find "$BASE_DIR" -name "*.sh" -exec chmod +x {} \;

echo "All shell scripts are executable." | tee -a "$PERM_LOG"
echo "$(date)" | tee -a "$PERM_LOG"