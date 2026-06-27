#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

while true; do
  clear
  echo "=============================="
  echo "        Streaming Menu"
  echo "=============================="
  echo ""
  echo "1) Netflix"
  echo "2) Hulu"
  echo "3) Max"
  echo "4) Prime Video"
  echo "5) YouTube"
  echo "6) YouTube Music"
  echo "7) Peacock"
  echo "8) Paramount+"
  echo "9) Audible"
  echo "10) Amazon Music"
  echo "11) Let's Make Art"
  echo "0) Back"
  echo ""

  read -p "Choose an option: " choice

  case $choice in
    1) "$STREAMING_DIR/netflix.sh" ;;
    2) "$STREAMING_DIR/hulu.sh" ;;
    3) "$STREAMING_DIR/hbo.sh" ;;
    4) "$STREAMING_DIR/primevideo.sh" ;;
    5) "$STREAMING_DIR/youtube.sh" ;;
    6) "$STREAMING_DIR/youtubemusic.sh" ;;
    7) "$STREAMING_DIR/peacock.sh" ;;
    8) "$STREAMING_DIR/paramount.sh" ;;
    9) "$STREAMING_DIR/audible.sh" ;;
    10) "$STREAMING_DIR/amazonmusic.sh" ;;
    11) "$STREAMING_DIR/letsmakeart.sh" ;;
    0) exit ;;
    *) echo "Invalid option"; sleep 1 ;;
  esac
done