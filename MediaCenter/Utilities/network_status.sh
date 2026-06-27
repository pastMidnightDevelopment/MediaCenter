#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

clear
echo "=============================="
echo "        Network Status"
echo "=============================="
echo ""

echo "Hostname:"
hostname
echo ""

echo "IP Addresses:"
hostname -I
echo ""

echo "Wi-Fi Status:"
iwgetid 2>/dev/null || echo "Wi-Fi info unavailable"
echo ""

echo "Internet Test:"
if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
  echo "Internet: Connected"
else
  echo "Internet: Not connected"
fi

echo ""
echo "Checked network status: $(date)" >> "$LOG_DIR/network.log"

read -p "Press Enter to return..."