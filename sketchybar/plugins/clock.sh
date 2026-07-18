#!/usr/bin/env bash
# Day, date, time (24h). Polled on a timer, no events needed.

source "$CONFIG_DIR/colors.sh"

sketchybar --set clock icon="$ICON_CLOCK" label="$(date '+%a %d %b  %H:%M')"
