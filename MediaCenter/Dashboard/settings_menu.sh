#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

while true; do
  clear
  echo "=============================="
  echo "        Settings Menu"
  echo "=============================="
  echo ""
  echo "1) View Applications Config"
  echo "2) View Remote Buttons Config"
  echo "3) View Startup Config"
  echo "4) View Paths Config"
  echo "5) View Log"
  echo "0) Back"
  echo ""

  read -p "Choose an option: " choice

  case $choice in
    1) cat "$CONFIG_DIR/applications.conf"; read -p "Press Enter..." ;;
    2) cat "$CONFIG_DIR/remote_buttons.conf"; read -p "Press Enter..." ;;
    3) cat "$CONFIG_DIR/startup.conf"; read -p "Press Enter..." ;;
    4) cat "$CONFIG_DIR/paths.conf"; read -p "Press Enter..." ;;
    5) cat "$LOG_DIR/mediacenter.log"; read -p "Press Enter..." ;;
    0) exit ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done