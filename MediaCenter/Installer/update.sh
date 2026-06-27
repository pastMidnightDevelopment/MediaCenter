#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
LOG_DIR="$BASE_DIR/Logs"
UPDATE_LOG="$LOG_DIR/update.log"

mkdir -p "$LOG_DIR"

echo "==============================" | tee -a "$UPDATE_LOG"
echo " MediaCenter Update Started"
echo "==============================" | tee -a "$UPDATE_LOG"
echo "" | tee -a "$UPDATE_LOG"

echo "[1/4] Updating package list..." | tee -a "$UPDATE_LOG"
sudo apt update | tee -a "$UPDATE_LOG"

echo "[2/4] Upgrading installed packages..." | tee -a "$UPDATE_LOG"
sudo apt upgrade -y | tee -a "$UPDATE_LOG"

echo "[3/4] Reapplying MediaCenter permissions..." | tee -a "$UPDATE_LOG"
chmod +x "$BASE_DIR/dashboard.sh" 2>/dev/null
chmod +x "$BASE_DIR/Streaming/"*.sh 2>/dev/null
chmod +x "$BASE_DIR/Gaming/"*.sh 2>/dev/null
#chmod +x "$BASE_DIR/Security/"*.sh 2>/dev/null
#chmod +x "$BASE_DIR/HomeAutomation/"*.sh 2>/dev/null
chmod +x "$BASE_DIR/Music/"*.sh 2>/dev/null
#chmod +x "$BASE_DIR/Photos/"*.sh 2>/dev/null
chmod +x "$BASE_DIR/Utilities/"*.sh 2>/dev/null
chmod +x "$BASE_DIR/Installer/"*.sh 2>/dev/null

echo "[4/4] Update complete." | tee -a "$UPDATE_LOG"