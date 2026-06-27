#!/bin/bash
"$HOME/MediaCenter/Utilities/logger.sh" "Hulu launched"
chromium-browser \
  --start-maximized \
  --new-window \
  "https://www.hulu.com"