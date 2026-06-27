#!/bin/bash

clear

echo "=============================="
echo "      Storage Manager"
echo "=============================="
echo ""

lsblk

echo ""
echo "Mounted Filesystems"
echo "-------------------"
df -h

echo ""
read -p "Press Enter to return..."