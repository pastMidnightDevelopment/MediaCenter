#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

clear
echo "=============================="
echo "       Bluetooth Status"
echo "=============================="
echo ""

echo "Bluetooth Service:"
if systemctl is-active --quiet bluetooth; then
  echo "Bluetooth: Running"
else
  echo "Bluetooth: Not running"
fi
echo ""

echo "Bluetooth Devices:"
bluetoothctl devices 2>/dev/null || echo "Bluetooth device list unavailable"
echo ""

echo "Connected Devices:"
bluetoothctl info 2>/dev/null | grep -E "Name|Connected|Paired|Trusted" || echo "No connected Bluetooth device info"
echo ""

echo "Checked Bluetooth status: $(date)" >> "$LOG_DIR/bluetooth.log"

read -p "Press Enter to return..."