#!/usr/bin/env bash
# RAM used, as "X.XGB / 16GB" (matching Activity Monitor's rough definition
# of used = active + wired + compressed; free/inactive/speculative pages are
# reclaimable and don't count as "used").

source "$CONFIG_DIR/colors.sh"

page_size="$(sysctl -n vm.pagesize)"
total_bytes="$(sysctl -n hw.memsize)"
vmstat="$(vm_stat)"

pages() {
	awk -v key="$1" '$0 ~ key { gsub("[.]", "", $NF); print $NF }' <<<"$vmstat"
}

active="$(pages "Pages active")"
wired="$(pages "Pages wired down")"
compressed="$(pages "Pages occupied by compressor")"

used_gb="$(awk -v a="$active" -v w="$wired" -v c="$compressed" -v ps="$page_size" \
	'BEGIN { printf "%.1f", (a + w + c) * ps / 1073741824 }')"
total_gb="$(awk -v t="$total_bytes" 'BEGIN { printf "%.0f", t / 1073741824 }')"

sketchybar --set ram icon="$ICON_RAM" label="${used_gb} / ${total_gb}GB"
