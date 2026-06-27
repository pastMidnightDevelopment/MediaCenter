#!/bin/bash

source "$HOME/MediaCenter/Configs/paths.conf"

REQ_LOG="$LOG_DIR/requirements.log"

mkdir -p "$LOG_DIR"

echo "==============================" | tee -a "$REQ_LOG"
echo " MediaCenter Requirements Setup" | tee -a "$REQ_LOG"
echo "==============================" | tee -a "$REQ_LOG"
echo "" | tee -a "$REQ_LOG"

echo "[1/5] Updating package list..." | tee -a "$REQ_LOG"
sudo apt update | tee -a "$REQ_LOG"

echo "[2/5] Installing core tools..." | tee -a "$REQ_LOG"
sudo apt install -y \
  curl \
  wget \
  git \
  nano \
  unzip \
  htop \
  neofetch \
  less \
  | tee -a "$REQ_LOG"

echo "[3/5] Installing streaming and media tools..." | tee -a "$REQ_LOG"
sudo apt install -y \
  chromium-browser \
  vlc \
  | tee -a "$REQ_LOG"

echo "[4/5] Installing controller, Bluetooth, and monitoring tools..." | tee -a "$REQ_LOG"
sudo apt install -y \
  joystick \
  jstest-gtk \
  bluetooth \
  bluez \
  pulseaudio \
  pulseaudio-module-bluetooth \
  conky-all \
  | tee -a "$REQ_LOG"

echo "[5/5] Trying optional gaming installs..." | tee -a "$REQ_LOG"

sudo apt install -y steamlink 2>&1 | tee -a "$REQ_LOG"
sudo apt install -y retroarch 2>&1 | tee -a "$REQ_LOG"
sudo apt install -y moonlight-qt 2>&1 | tee -a "$REQ_LOG"

echo "" | tee -a "$REQ_LOG"
echo "Requirements setup complete." | tee -a "$REQ_LOG"
echo "Some optional packages may fail if unavailable on your Raspberry Pi OS version." | tee -a "$REQ_LOG"