#!/usr/bin/env bash
# Wifi connectivity (on/off). SSID is redacted by macOS since Sonoma unless
# sketchybar has Location permission, so this just shows connected vs not.

source "$CONFIG_DIR/colors.sh"

WIFI_IFACE="${WIFI_IFACE:-en0}"

if [[ -n "$(ipconfig getifaddr "$WIFI_IFACE" 2>/dev/null)" ]]; then
	sketchybar --set wifi icon="$ICON_WIFI_ON" icon.color="$LABEL_COLOR"
else
	sketchybar --set wifi icon="$ICON_WIFI_OFF" icon.color="$RED"
fi
