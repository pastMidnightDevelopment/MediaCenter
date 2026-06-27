#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

"$UTILITIES_DIR/logger.sh" "Dashboard opened"

while true; do
  clear
  echo "=============================="
  echo "      MediaCenter Dashboard"
  echo "=============================="
  echo ""
  echo "1) Streaming"
  echo "2) Gaming"
  echo "3) Utilities"
  echo "4) Settings"
  echo "5) Security - Coming Later"
  echo "0) Exit"
  echo ""

  read -p "Choose an option: " choice

  case $choice in
    1) bash "$DASHBOARD_DIR/streaming_menu.sh" ;;
    2) bash "$DASHBOARD_DIR/gaming_menu.sh" ;;
    3) bash "$DASHBOARD_DIR/utilities_menu.sh" ;;
    4) bash "$DASHBOARD_DIR/settings_menu.sh" ;;
    5)
      echo "Security module is planned for a later project."
      read -p "Press Enter to continue..."
      ;;
    0)
      "$UTILITIES_DIR/logger.sh" "Dashboard closed"
      exit
      ;;
    *)
      echo "Invalid option"
      sleep 1
      ;;
  esac
done