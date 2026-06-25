#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

while true; do
  clear
  echo "=============================="
  echo "        Utilities Menu"
  echo "=============================="
  echo ""
  echo "1) System Status"
  echo "2) Toggle Status Overlay"
  echo "3) View Logs"
  echo "4) Controller Status"
  echo "5) Application Status"
  echo "6) Network Status"
  echo "7) Bluetooth Status"
  echo "8) Device Manager"
  echo "9) Storage Manager"
  echo "10) Update System"
  echo "11) Reboot"
  echo "12) Shutdown"
  echo "13) About MediaCenter"
  echo "0) Back"
  echo ""

  read -p "Choose an option: " choice

  case $choice in
    1) "$UTILITIES_DIR/system_status.sh" ;;
    2) "$UTILITIES_DIR/status_overlay.sh" ;;
    3) "$UTILITIES_DIR/log_viewer.sh" ;;
    4) "$UTILITIES_DIR/controller_status.sh" ;;
    5) "$UTILITIES_DIR/app_status.sh" ;;
    6) "$UTILITIES_DIR/network_status.sh" ;;
    7) "$UTILITIES_DIR/bluetooth_status.sh" ;;
    8) "$UTILITIES_DIR/device_manager.sh" ;;
    9) "$UTILITIES_DIR/storage_manager.sh" ;;
    10) "$UTILITIES_DIR/update_system.sh"; read -p "Press Enter to continue..." ;;
    11) "$UTILITIES_DIR/reboot.sh" ;;
    12) "$UTILITIES_DIR/shutdown.sh" ;;
    13) "$UTILITIES_DIR/about.sh" ;;
    0) exit ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done