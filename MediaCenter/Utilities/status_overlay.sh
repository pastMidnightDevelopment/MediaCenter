#!/bin/bash

BASE_DIR="$HOME/MediaCenter"
LOG_DIR="$BASE_DIR/Logs"
OVERLAY_LOG="$LOG_DIR/status_overlay.log"
CONKY_CONFIG="$BASE_DIR/Configs/status_overlay.conf"

mkdir -p "$LOG_DIR"
mkdir -p "$BASE_DIR/Configs"

if pgrep -x conky >/dev/null; then
  pkill conky
  echo "Status overlay turned OFF - $(date)" >> "$OVERLAY_LOG"
  echo "Status overlay OFF"
else
  cat > "$CONKY_CONFIG" <<'EOF'
conky.config = {
    alignment = 'top_right',
    gap_x = 20,
    gap_y = 20,
    minimum_width = 260,
    background = true,
    double_buffer = true,
    own_window = true,
    own_window_type = 'override',
    own_window_transparent = true,
    own_window_argb_visual = true,
    use_xft = true,
    font = 'DejaVu Sans Mono:size=10',
    update_interval = 1.0,
};

conky.text = [[
MediaCenter Status
${hr}
CPU: ${cpu}%
RAM: ${memperc}%
Disk: ${fs_used_perc /}%
Temp: ${execi 5 vcgencmd measure_temp 2>/dev/null | cut -d= -f2}
Net: ${if_existing /sys/class/net/wlan0/operstate up}WiFi Connected${else}WiFi Check${endif}
Up: ${uptime}
]];
EOF

  conky -c "$CONKY_CONFIG" >/dev/null 2>&1 &
  echo "Status overlay turned ON - $(date)" >> "$OVERLAY_LOG"
  echo "Status overlay ON"
fi

sleep 1