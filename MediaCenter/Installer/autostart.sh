#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

AUTO_LOG="$LOG_DIR/autostart.log"

mkdir -p "$LOG_DIR"
mkdir -p "$HOME/.config/autostart"

cat > "$HOME/.config/autostart/mediacenter.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=MediaCenter
Comment=Start MediaCenter Dashboard on login
Exec=lxterminal -e bash -c "$DASHBOARD_SCRIPT; exec bash"
Terminal=false
X-GNOME-Autostart-enabled=true
EOF

echo "Autostart enabled: $(date)" >> "$AUTO_LOG"
echo "MediaCenter autostart enabled."