#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
LOG_DIR="$BASE_DIR/Logs"
AUTO_LOG="$LOG_DIR/autostart.log"

mkdir -p "$LOG_DIR"

echo "==============================" | tee -a "$AUTO_LOG"
echo " MediaCenter Autostart Setup" | tee -a "$AUTO_LOG"
echo "==============================" | tee -a "$AUTO_LOG"

mkdir -p "$HOME/.config/autostart"

cat > "$HOME/.config/autostart/mediacenter.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=MediaCenter
Comment=Start MediaCenter Dashboard on login
Exec=lxterminal -e bash -c "$BASE_DIR/dashboard.sh; exec bash"
Terminal=false
X-GNOME-Autostart-enabled=true
EOF

echo "Autostart file created:" | tee -a "$AUTO_LOG"
echo "$HOME/.config/autostart/mediacenter.desktop" | tee -a "$AUTO_LOG"
echo "" | tee -a "$AUTO_LOG"
echo "MediaCenter will start automatically after desktop login." | tee -a "$AUTO_LOG"