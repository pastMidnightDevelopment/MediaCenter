#!/bin/bash
"$HOME/MediaCenter/Utilities/logger.sh" "HBO launched"
chromium-browser \
  --start-maximized \
  --new-window \
  "https://play.max.com"