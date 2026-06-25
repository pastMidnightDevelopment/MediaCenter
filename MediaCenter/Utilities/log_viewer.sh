#!/bin/bash

LOG_DIR="$HOME/MediaCenter/Logs"

while true; do
  clear
  echo "=============================="
  echo "          Log Viewer"
  echo "=============================="
  echo ""
  echo "1) Dashboard Log"
  echo "2) Streaming Log"
  echo "3) Gaming Log"
  echo "4) Security Log"
  echo "5) System Status Log"
  echo "6) Overlay Log"
  echo "7) Install Log"
  echo "8) Requirements Log"
  echo "9) Update Log"
  echo "0) Back"
  echo ""

  read -p "Choose a log: " choice

  case $choice in
    1) less "$LOG_DIR/dashboard.log" ;;
    2) less "$LOG_DIR/streaming.log" ;;
    3) less "$LOG_DIR/gaming.log" ;;
    4) less "$LOG_DIR/security.log" ;;
    5) less "$LOG_DIR/system_status.log" ;;
    6) less "$LOG_DIR/status_overlay.log" ;;
    7) less "$LOG_DIR/install.log" ;;
    8) less "$LOG_DIR/requirements.log" ;;
    9) less "$LOG_DIR/update.log" ;;
    0) ~/MediaCenter/Utilities/utilities_menu.sh ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done