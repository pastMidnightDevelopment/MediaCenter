#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

while true; do
  clear
  echo "=============================="
  echo "         Gaming Menu"
  echo "=============================="
  echo ""
  echo "1) Moonlight"
  echo "2) Steam Link"
  echo "3) RetroArch"
  echo "0) Back"
  echo ""

  read -p "Choose an option: " choice

  case $choice in
    1) "$GAMING_DIR/moonlight.sh" ;;
    2) "$GAMING_DIR/steamlink.sh" ;;
    3) "$GAMING_DIR/retroarch.sh" ;;
    0) exit ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done