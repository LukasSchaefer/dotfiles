#!/usr/bin/env bash
# Renders workspace items space.1..10: highlights the focused workspace and
# labels each with the app icons (sketchybar-app-font glyphs) of its windows.
# Triggered by aerospace's exec-on-workspace-change (see aerospace.toml) and
# by space_windows_change so icons update as windows open/close/move.

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/plugins/icon_map.sh"

focused="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused)}"

windows="$(aerospace list-windows --all --format '%{workspace}|%{app-name}' 2>/dev/null)"

# workspace -> display index (matches sketchybar's display= property), so
# each screen's bar only shows the workspaces currently on that screen.
monitor_map="$(aerospace list-workspaces --monitor all --format '%{workspace}|%{monitor-appkit-nsscreen-screens-id}' 2>/dev/null)"
workspace_display() {
	awk -F'|' -v ws="$1" '$1 == ws { print $2; exit }' <<<"$monitor_map"
}

app_icons() {
	local sid="$1" app out=""
	while IFS= read -r app; do
		[[ -z "$app" ]] && continue
		icon_result=":default:"
		__icon_map "$app"
		out+="$icon_result "
	done < <(awk -F'|' -v ws="$sid" '$1 == ws { print substr($0, index($0, "|") + 1) }' <<<"$windows")
	printf '%s' "${out% }"
}

args=()
for sid in $(seq 1 10); do
	icons="$(app_icons "$sid")"
	display="$(workspace_display "$sid")"
	display_args=(display="${display:-0}")

	# Only show workspaces with open windows, plus whichever one is focused
	# (so you can always see where you are, even on an empty workspace).
	if [[ -z "$icons" && "$sid" != "$focused" ]]; then
		args+=(--set "space.$sid" drawing=off "${display_args[@]}")
		continue
	fi

	if [[ -n "$icons" ]]; then
		label_args=(label="$icons" label.drawing=on)
	else
		label_args=(label.drawing=off)
	fi
	if [[ "$sid" == "$focused" ]]; then
		args+=(--set "space.$sid" drawing=on background.color="$ACCENT_COLOR" icon.color="$BG_DARK" label.color="$BG_DARK" "${display_args[@]}" "${label_args[@]}")
	else
		args+=(--set "space.$sid" drawing=on background.color="$ITEM_BG_COLOR" icon.color="$LABEL_COLOR" label.color="$LABEL_COLOR" "${display_args[@]}" "${label_args[@]}")
	fi
done

sketchybar "${args[@]}"
