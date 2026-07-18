#!/usr/bin/env bash
# Renders a compact block - one keyboard icon plus "US | DE | ZH"-style
# labels (kbd.1..kbd.4, sharing one background via the kbd_bracket component)
# - coloring whichever source is currently active. macOS represents these
# very differently in
# `defaults`: plain layouts (US, German, ...) are "Keyboard Layout" entries
# keyed by name, but input methods (e.g. Chinese Pinyin) are "Input Mode"
# entries keyed by bundle id - both need handling. Uses `plutil` to turn the
# ASCII-plist `defaults read` output into JSON so parsing doesn't rely on
# fragile text scraping. Polled on a timer: macOS doesn't reliably fire a
# distributed notification on input-source switch, and this is cheap enough
# to just poll.

source "$CONFIG_DIR/colors.sh"

sources="$(
	enabled="$(defaults read com.apple.HIToolbox AppleEnabledInputSources | plutil -convert json -o - -)"
	selected="$(defaults read com.apple.HIToolbox AppleSelectedInputSources | plutil -convert json -o - -)"
	python3 - "$enabled" "$selected" <<'PY'
import json, sys

def layout_code(name):
	if name == "U.S.":
		return "US"
	if name.startswith("German") or name == "Austrian":
		return "DE"
	if name.startswith("Swiss"):
		return "CH"
	if name == "British":
		return "GB"
	return name[:2].upper()

# Bundle id -> short code, for input methods (not plain keyboard layouts).
MODE_CODES = {
	"com.apple.inputmethod.SCIM": "ZH",  # Chinese (Simplified)
	"com.apple.inputmethod.TCIM": "ZH",  # Chinese (Traditional)
	"com.apple.inputmethod.Kotoeri": "JA",
	"com.apple.inputmethod.Korean": "KO",
}

def mode_code(bundle_id, mode):
	if bundle_id in MODE_CODES:
		return MODE_CODES[bundle_id]
	return (mode or bundle_id or "??").rsplit(".", 1)[-1][:2].upper()

def discriminator(entry):
	kind = entry.get("InputSourceKind")
	if kind == "Keyboard Layout":
		return ("layout", entry.get("KeyboardLayout Name"))
	if kind == "Input Mode":
		return ("mode", entry.get("Input Mode"))
	return None

def code_for(entry):
	kind = entry.get("InputSourceKind")
	if kind == "Keyboard Layout":
		return layout_code(entry.get("KeyboardLayout Name", ""))
	if kind == "Input Mode":
		return mode_code(entry.get("Bundle ID", ""), entry.get("Input Mode", ""))
	return None

enabled = json.loads(sys.argv[1])
selected = json.loads(sys.argv[2])

active = None
for entry in selected:
	d = discriminator(entry)
	if d is not None:
		active = d
		break

# Fixed display order (US, DE, Chinese, ...) regardless of the order macOS
# happens to report - that order tracks add-order in System Settings, not
# any preference of ours. Unrecognized codes keep their enabled-list order,
# appended after the pinned ones.
ORDER = ["US", "DE", "ZH"]

rows = []
for i, entry in enumerate(enabled):
	d = discriminator(entry)
	if d is None:
		continue
	code = code_for(entry)
	rank = ORDER.index(code) if code in ORDER else len(ORDER) + i
	rows.append((rank, code, 1 if d == active else 0))

# kbd.1..kbd.4 are right-aligned items, which sketchybar stacks in reverse
# add order (kbd.1 ends up rightmost, the last populated slot ends up
# leftmost) - so slot assignment must be reversed to get the left-to-right
# reading order above.
for _, code, is_active in sorted(rows, key=lambda r: r[0], reverse=True):
	print(f"{code}\t{is_active}")
PY
)"

args=()
max_slots=4
i=0
while IFS=$'\t' read -r code is_active; do
	[[ -z "$code" ]] && continue
	i=$((i + 1))
	(( i > max_slots )) && break
	if [[ "$is_active" == "1" ]]; then
		args+=(--set "kbd.$i" drawing=on label="$code" label.color="$ACCENT_COLOR")
	else
		args+=(--set "kbd.$i" drawing=on label="$code" label.color="$LABEL_COLOR")
	fi
done <<<"$sources"

for ((j = i + 1; j <= max_slots; j++)); do
	args+=(--set "kbd.$j" drawing=off)
done

# Separators sit between populated slots only: kbd.sepN is visible iff both
# kbd.N and kbd.(N+1) are populated (N < the populated count).
for ((n = 1; n <= max_slots - 1; n++)); do
	if (( n < i )); then
		args+=(--set "kbd.sep$n" drawing=on)
	else
		args+=(--set "kbd.sep$n" drawing=off)
	fi
done

sketchybar "${args[@]}"
