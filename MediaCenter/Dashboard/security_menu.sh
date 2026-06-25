#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

while true; do
  clear
  echo "=============================="
  echo "        Security Menu"
  echo "=============================="
  echo ""
  echo "1) Ring Doorbell"
  echo "0) Back"
  echo ""

  read -p "Choose an option: " choice

  case $choice in
    1) "$SECURITY_DIR/doorbell.sh" ;;
    0) exit ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done