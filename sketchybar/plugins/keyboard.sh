#!/usr/bin/env bash
# Renders a compact block - one keyboard icon plus "US | DE | DK"-style
# labels (kbd.1..kbd.4, sharing one background via the kbd_bracket component)
# - coloring whichever source is currently active.
#
# The list comes from Carbon's Text Input Sources (TIS) API rather than from
# `defaults read com.apple.HIToolbox`: that preference is not a reliable
# picture of what is enabled. Removing an input method in System Settings can
# leave its "Input Mode" record behind in AppleEnabledInputSources (Chinese
# did exactly that here), so a defaults-based reading keeps showing sources
# that no longer exist. TIS is what the system's own input menu reads, and
# it also reports the active source directly, so no cross-referencing of
# AppleSelectedInputSources is needed.
#
# Polled on a timer: macOS doesn't reliably fire a distributed notification
# on input-source switch, and one TIS query is cheap (~50ms including python
# startup).

source "$CONFIG_DIR/colors.sh"

sources="$(
	python3 - <<'PY'
import ctypes, ctypes.util
from ctypes import c_bool, c_char_p, c_long, c_uint32, c_void_p

# --- Display mapping ---------------------------------------------------
# Label shown in the bar for each input source, resolved in this order:
#   1. SOURCE_CODES, keyed by the exact input source ID (use this to
#      disambiguate layouts that share a language, e.g. British vs U.S.)
#   2. LANG_CODES, keyed by the source's primary language tag
#   3. the language tag itself, uppercased (so "da" would render as "DA")
# ORDER pins the left-to-right display order; codes not listed there are
# appended after, in the order macOS reports them.
SOURCE_CODES = {
	"com.apple.keylayout.British": "GB",
	"com.apple.keylayout.Swiss": "CH",
	"com.apple.keylayout.SwissGerman": "CH",
	"com.apple.keylayout.SwissFrench": "CH",
}

LANG_CODES = {
	"en": "US",
	"de": "DE",
	"da": "DK",
	"sv": "SE",
	"nb": "NO",
	"zh-Hans": "ZH",
	"zh-Hant": "ZH",
	"ja": "JA",
	"ko": "KO",
}

ORDER = ["US", "DE", "DK"]
# -----------------------------------------------------------------------

cf = ctypes.cdll.LoadLibrary(ctypes.util.find_library("CoreFoundation"))
hi = ctypes.cdll.LoadLibrary("/System/Library/Frameworks/Carbon.framework/Carbon")

cf.CFArrayGetCount.restype = c_long
cf.CFArrayGetCount.argtypes = [c_void_p]
cf.CFArrayGetValueAtIndex.restype = c_void_p
cf.CFArrayGetValueAtIndex.argtypes = [c_void_p, c_long]
cf.CFStringGetCString.restype = c_bool
cf.CFStringGetCString.argtypes = [c_void_p, c_char_p, c_long, c_uint32]
cf.CFBooleanGetValue.restype = c_bool
cf.CFBooleanGetValue.argtypes = [c_void_p]
hi.TISCreateInputSourceList.restype = c_void_p
hi.TISCreateInputSourceList.argtypes = [c_void_p, c_bool]
hi.TISCopyCurrentKeyboardInputSource.restype = c_void_p
hi.TISGetInputSourceProperty.restype = c_void_p
hi.TISGetInputSourceProperty.argtypes = [c_void_p, c_void_p]

UTF8 = 0x08000100

def prop(src, key):
	return hi.TISGetInputSourceProperty(src, c_void_p.in_dll(hi, key))

def text(ref):
	if not ref:
		return None
	buf = ctypes.create_string_buffer(512)
	if cf.CFStringGetCString(ref, buf, 512, UTF8):
		return buf.value.decode()
	return None

def flag(ref):
	return bool(ref) and cf.CFBooleanGetValue(ref)

def language(src):
	langs = prop(src, "kTISPropertyInputSourceLanguages")
	if langs and cf.CFArrayGetCount(langs) > 0:
		return text(cf.CFArrayGetValueAtIndex(langs, 0))
	return None

def code_for(source_id, lang):
	if source_id in SOURCE_CODES:
		return SOURCE_CODES[source_id]
	if lang in LANG_CODES:
		return LANG_CODES[lang]
	if lang:
		return lang.split("-", 1)[0].upper()
	return (source_id or "??").rsplit(".", 1)[-1][:2].upper()

# TISCreateInputSourceList(NULL, false) returns the enabled sources. Keep
# only selectable keyboard ones: that drops palettes (Emoji & Symbols,
# PressAndHold) and, for input methods that expose modes, the non-selectable
# parent entry that would otherwise duplicate its mode.
KEYBOARD = "TISCategoryKeyboardInputSource"

current = hi.TISCopyCurrentKeyboardInputSource()
active_id = text(prop(current, "kTISPropertyInputSourceID")) if current else None

rows = []
seen = {}
lst = hi.TISCreateInputSourceList(None, False)
for i in range(cf.CFArrayGetCount(lst)):
	src = cf.CFArrayGetValueAtIndex(lst, i)
	category = text(prop(src, "kTISPropertyInputSourceCategory")) or ""
	if not category.endswith(KEYBOARD):
		continue
	if not flag(prop(src, "kTISPropertyInputSourceIsSelectCapable")):
		continue
	source_id = text(prop(src, "kTISPropertyInputSourceID")) or ""
	code = code_for(source_id, language(src))
	is_active = 1 if source_id == active_id else 0
	# Several sources can share a code (a Chinese input method's modes, say).
	# Show one label, lit if any of them is the active source.
	if code in seen:
		rows[seen[code]][2] |= is_active
		continue
	rank = ORDER.index(code) if code in ORDER else len(ORDER) + i
	seen[code] = len(rows)
	rows.append([rank, code, is_active])

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
