# Security Module

## Ring Doorbell Launcher

File:

doorbell.sh

Purpose:

Launch Ring dashboard quickly for live doorbell view.

Future install requirements:

- chromium-browser
- xbindkeys
- x11-utils

Future setup:

1. Make doorbell.sh executable.
2. Use xev to identify the remote button key.
3. Add that key to ~/.xbindkeysrc.
4. Start xbindkeys on boot.