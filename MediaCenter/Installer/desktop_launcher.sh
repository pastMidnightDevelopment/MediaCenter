#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

LAUNCHER_LOG="$LOG_DIR/desktop_launcher.log"

mkdir -p "$LOG_DIR"
mkdir -p "$HOME/Desktop"

cat > "$HOME/Desktop/MediaCenter.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=MediaCenter
Comment=Launch MediaCenter Dashboard
Exec=lxterminal -e bash -c "$DASHBOARD_SCRIPT; exec bash"
Icon=utilities-terminal
Terminal=false
Categories=Utility;
EOF

chmod +x "$HOME/Desktop/MediaCenter.desktop"

echo "Desktop launcher created: $(date)" >> "$LAUNCHER_LOG"
echo "MediaCenter desktop launcher created."