#!/usr/bin/env bash
# Runs one AeroSpace lifecycle action from a workspace's right-click menu,
# then closes that workspace's popup. AeroSpace has no CLI quit/restart
# subcommand, so restart/quit go through the actual process.

sid="$1"
action="$2"

case "$action" in
reload)
	aerospace reload-config
	;;
restart)
	killall AeroSpace 2>/dev/null
	sleep 0.5
	open -a AeroSpace
	;;
quit)
	killall AeroSpace 2>/dev/null
	;;
esac

sketchybar --set "space.$sid" popup.drawing=off
