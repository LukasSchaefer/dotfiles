#!/usr/bin/env bash
# Focused app's name, via sketchybar's built-in front_app_switched event
# (fires $INFO = app name; no polling needed). On the initial "forced" render
# at startup/reload there's no real switch yet, so $INFO is empty - fall back
# to a one-time lookup (lsappinfo, ~10ms) so the label isn't blank until the
# user's first app switch.

name="$INFO"
if [[ -z "$name" ]]; then
	name="$(lsappinfo info -only name "$(lsappinfo front)" 2>/dev/null | sed -E 's/.*="(.*)"/\1/')"
fi

sketchybar --set front_app label="$name"
