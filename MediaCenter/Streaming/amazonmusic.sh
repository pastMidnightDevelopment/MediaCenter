#!/bin/bash

# FILE: amazonmusic.sh
# VERSION: 0.1.0
# PURPOSE: Launch Amazon Music safely without breaking MediaCenter.

"$HOME/MediaCenter/Utilities/logger.sh" "Amazon Music launched"

chromium-browser \
  --start-maximized \
  --new-window \
  "https://music.amazon.com" >/dev/null 2>&1 &

if [ $? -ne 0 ]; then
  "$HOME/MediaCenter/Utilities/logger.sh" "ERROR: Amazon Music failed to open"
  echo "Amazon Music failed to open."
  sleep 2
  exit 1
fi

exit 0
