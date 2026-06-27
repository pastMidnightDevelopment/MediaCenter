#!/bin/bash

LOG_DIR="$HOME/MediaCenter/Logs"
CONTROLLER_LOG="$LOG_DIR/controllers.log"

mkdir -p "$LOG_DIR"

clear
echo "=============================="
echo "      Controller Status"
echo "=============================="
echo ""

echo "USB/Input Devices:"
echo "------------------"
ls /dev/input/js* 2>/dev/null || echo "No joystick devices found"
echo ""

echo "Detected Controllers:"
echo "---------------------"
cat /proc/bus/input/devices | grep -Ei "playstation|sony|dualshock|xbox|gamepad|controller|keyboard|mouse" || echo "No named controllers detected"
echo ""

echo "Bluetooth Status:"
echo "-----------------"
systemctl is-active bluetooth
echo ""

echo "Checked controller status: $(date)" >> "$CONTROLLER_LOG"

read -p "Press Enter to return..."