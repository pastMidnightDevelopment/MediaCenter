#!/bin/bash
"$HOME/MediaCenter/Utilities/logger.sh" "Ring Door launched"
RING_URL="https://ring.com/account/dashboard"

chromium-browser \
  --start-maximized \
  --new-window \
  "$RING_URL"