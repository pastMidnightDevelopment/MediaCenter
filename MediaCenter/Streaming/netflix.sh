#!/bin/bash

"$HOME/MediaCenter/Utilities/logger.sh" "Netflix launched"

chromium-browser \
  --start-maximized \
  --new-window \
  "https://www.netflix.com"