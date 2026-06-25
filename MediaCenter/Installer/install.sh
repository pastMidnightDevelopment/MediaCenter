#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
LOG_DIR="$BASE_DIR/Logs"
INSTALL_LOG="$LOG_DIR/install.log"

mkdir -p "$LOG_DIR"

echo "==============================" | tee -a "$INSTALL_LOG"
echo " MediaCenter Install Started" | tee -a "$INSTALL_LOG"
echo "==============================" | tee -a "$INSTALL_LOG"
echo "" | tee -a "$INSTALL_LOG"

echo "[1/7] Creating folders..." | tee -a "$INSTALL_LOG"

mkdir -p "$BASE_DIR/Streaming"
mkdir -p "$BASE_DIR/Gaming"
mkdir -p "$BASE_DIR/Security"
mkdir -p "$BASE_DIR/HomeAutomation"
mkdir -p "$BASE_DIR/Photos"
mkdir -p "$BASE_DIR/Utilities"
mkdir -p "$BASE_DIR/Settings"
mkdir -p "$BASE_DIR/Configs"
mkdir -p "$BASE_DIR/Configs/Controllers"
mkdir -p "$BASE_DIR/Installer"
mkdir -p "$BASE_DIR/Logs"
mkdir -p "$BASE_DIR/Docs"
mkdir -p "$BASE_DIR/Disabled"

echo "[2/7] Creating configuration files..." | tee -a "$INSTALL_LOG"

touch "$BASE_DIR/Configs/paths.conf"

touch "$BASE_DIR/Configs/Controllers/remote.conf"
touch "$BASE_DIR/Configs/Controllers/ps4.conf"
touch "$BASE_DIR/Configs/Controllers/ps3.conf"
touch "$BASE_DIR/Configs/Controllers/retro.conf"
touch "$BASE_DIR/Configs/Controllers/keyboard.conf"

echo "[3/7] Creating log files..." | tee -a "$INSTALL_LOG"

touch "$LOG_DIR/dashboard.log"
touch "$LOG_DIR/streaming.log"
touch "$LOG_DIR/gaming.log"
touch "$LOG_DIR/security.log"
touch "$LOG_DIR/controllers.log"
touch "$LOG_DIR/system_status.log"
touch "$LOG_DIR/status_overlay.log"
touch "$LOG_DIR/network.log"
touch "$LOG_DIR/bluetooth.log"
touch "$LOG_DIR/requirements.log"
touch "$LOG_DIR/update.log"
touch "$LOG_DIR/install.log"

echo "[4/7] Setting script permissions..." | tee -a "$INSTALL_LOG"

find "$BASE_DIR" -name "*.sh" -exec chmod +x {} \;

echo "[5/7] Creating desktop launcher..." | tee -a "$INSTALL_LOG"

if [ -f "$BASE_DIR/Installer/desktop_launcher.sh" ]; then
"$BASE_DIR/Installer/desktop_launcher.sh"
fi

echo "[6/7] Verifying installation..." | tee -a "$INSTALL_LOG"

echo "Dashboard: $DASHBOARD_SCRIPT" | tee -a "$INSTALL_LOG"
echo "Utilities: $BASE_DIR/Utilities" | tee -a "$INSTALL_LOG"
echo "Settings: $BASE_DIR/Settings" | tee -a "$INSTALL_LOG"

echo "[7/7] Install complete." | tee -a "$INSTALL_LOG"

echo "" | tee -a "$INSTALL_LOG"
echo "MediaCenter installation completed successfully." | tee -a "$INSTALL_LOG"
echo "Launch from the desktop MediaCenter icon." | tee -a "$INSTALL_LOG"
