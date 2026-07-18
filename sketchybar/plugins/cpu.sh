#!/usr/bin/env bash
# Total CPU load (user + sys) from `top`. ~300ms per invocation, so this is
# polled on a longer timer than the other widgets rather than event-driven.

source "$CONFIG_DIR/colors.sh"

line="$(top -l 1 -n 0 | grep "CPU usage")"
read -r -a parts <<<"${line//[%,]/}"
# "CPU usage: <user> user <sys> sys <idle> idle" once %/, are stripped.
user="${parts[2]}"
sys="${parts[4]}"
total="$(awk -v u="$user" -v s="$sys" 'BEGIN { printf "%.0f", u + s }')"

sketchybar --set cpu icon="$ICON_CPU" label="${total}%"
