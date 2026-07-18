#!/usr/bin/env bash
# Hover highlight for popup menu rows. Wired as each row's `script`,
# subscribed to mouse.entered/mouse.exited only.
#
# IMPORTANT: never perform an action here - `script` also fires on
# forced/routine updates (e.g. every bar reload), not just on hover. Row
# actions live in aerospace_menu_action.sh, wired to click_script instead.

source "$CONFIG_DIR/colors.sh"

case "$SENDER" in
mouse.entered)
	sketchybar --set "$NAME" background.drawing=on background.color="$ACCENT_COLOR" label.color="$BG_DARK"
	;;
mouse.exited)
	sketchybar --set "$NAME" background.drawing=off label.color="$LABEL_COLOR"
	;;
esac
