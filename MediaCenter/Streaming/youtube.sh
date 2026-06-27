#!/bin/bash
"$HOME/MediaCenter/Utilities/logger.sh" "Youtube launched"
chromium-browser \
  --start-maximized \
  --new-window \
  "https://www.youtube.com"