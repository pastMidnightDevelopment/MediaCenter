#!/bin/bash

clear

echo "=============================="
echo "        Application Status"
echo "=============================="
echo ""

apps=(
  chromium-browser
  vlc
  steamlink
  moonlight
  retroarch
)

for app in "${apps[@]}"
do
    if command -v "$app" >/dev/null 2>&1
    then
        echo "[OK] $app"
    else
        echo "[MISSING] $app"
    fi
done

echo ""
read -p "Press Enter to continue..."