#!/bin/bash
"$HOME/MediaCenter/Utilities/logger.sh" "YTMusic launched"
chromium-browser \
  --start-maximized \
  --new-window \
  "https://music.youtube.com"