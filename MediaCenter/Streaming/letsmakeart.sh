#!/bin/bash

# FILE: letsmakeart.sh
# VERSION: 0.1.0
# PURPOSE: Launch Let's Make Art safely without breaking MediaCenter.

"$HOME/MediaCenter/Utilities/logger.sh" "Let's Make Art launched"

chromium-browser \
  --start-maximized \
  --new-window \
  "https://www.letsmakeart.com" >/dev/null 2>&1 &

if [ $? -ne 0 ]; then
  "$HOME/MediaCenter/Utilities/logger.sh" "ERROR: Let's Make Art failed to open"
  echo "Let's Make Art failed to open."
  sleep 2
  exit 1
fi

exit 0
