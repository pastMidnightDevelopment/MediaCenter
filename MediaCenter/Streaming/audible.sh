#!/bin/bash

# FILE: audible.sh
# VERSION: 0.1.0
# PURPOSE: Launch Audible safely without breaking MediaCenter.

"$HOME/MediaCenter/Utilities/logger.sh" "Audible launched"

chromium-browser \
  --start-maximized \
  --new-window \
  "https://www.audible.com/library/titles" >/dev/null 2>&1 &

if [ $? -ne 0 ]; then
  "$HOME/MediaCenter/Utilities/logger.sh" "ERROR: Audible failed to open"
  echo "Audible failed to open."
  sleep 2
  exit 1
fi

exit 0
