#!/bin/bash

clear

echo "=============================="
echo "       Device Manager"
echo "=============================="
echo ""

echo "USB Devices"
echo "-----------"
lsusb

echo ""
echo "Input Devices"
echo "-------------"
ls /dev/input 2>/dev/null

echo ""
echo "Audio Devices"
echo "-------------"
aplay -l 2>/dev/null || echo "No audio devices found"

echo ""
read -p "Press Enter to return..."