#!/usr/bin/env bash
# Battery percentage + charge state, from `pmset` (no extra dependency).

source "$CONFIG_DIR/colors.sh"

batt_info="$(pmset -g batt)"
percentage="$(grep -Eo '[0-9]+%' <<<"$batt_info" | head -1 | tr -d '%')"
[[ -z "$percentage" ]] && exit 0

if grep -q "AC Power" <<<"$batt_info" && ! grep -q "discharging" <<<"$batt_info"; then
	icon="$ICON_BOLT"
	color="$GREEN"
elif (( percentage >= 90 )); then
	icon="$ICON_BATTERY_100"; color="$LABEL_COLOR"
elif (( percentage >= 65 )); then
	icon="$ICON_BATTERY_75"; color="$LABEL_COLOR"
elif (( percentage >= 40 )); then
	icon="$ICON_BATTERY_50"; color="$LABEL_COLOR"
elif (( percentage >= 15 )); then
	icon="$ICON_BATTERY_25"; color="$YELLOW"
else
	icon="$ICON_BATTERY_0"; color="$RED"
fi

sketchybar --set battery icon="$icon" icon.color="$color" label="${percentage}%"
