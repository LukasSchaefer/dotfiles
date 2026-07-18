#!/usr/bin/env bash
# Left click: switch to this workspace (previous behavior). Right click:
# toggle this workspace's AeroSpace action menu (reload config / restart /
# quit), added as popup children in sketchybarrc.

sid="$1"

if [[ "$BUTTON" == "right" ]]; then
	sketchybar --set "space.$sid" popup.drawing=toggle
else
	aerospace workspace "$sid"
fi
