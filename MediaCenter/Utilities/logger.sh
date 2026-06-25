#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

LOG_FILE="$LOG_DIR/mediacenter.log"

mkdir -p "$(dirname "$LOG_FILE")"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"