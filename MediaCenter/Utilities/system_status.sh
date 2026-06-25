#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
LOG_DIR="$BASE_DIR/Logs"
STATUS_LOG="$LOG_DIR/system_status.log"

mkdir -p "$LOG_DIR"

echo "=============================="
echo "      MediaCenter Status"
echo "=============================="
echo ""

echo "Date/Time:"
date
echo ""

echo "CPU Temperature:"
vcgencmd measure_temp 2>/dev/null || echo "CPU temp unavailable"
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Disk Usage:"
df -h /
echo ""

echo "Network:"
if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
  echo "Internet: Connected"
else
  echo "Internet: Not connected"
fi
echo ""

echo "Bluetooth:"
if systemctl is-active --quiet bluetooth; then
  echo "Bluetooth: Running"
else
  echo "Bluetooth: Not running"
fi
echo ""

echo "Status checked: $(date)" >> "$STATUS_LOG"

echo ""
read -p "Press Enter to return..."