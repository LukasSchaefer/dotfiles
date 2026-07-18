#!/usr/bin/env bash
# Opens the real macOS Control Center (wifi/bluetooth/focus/etc.) via UI
# scripting, since there's no public API for it. First run will prompt for
# an Automation permission ("... wants to control System Events") - approve
# it once and it won't ask again.

osascript -e 'tell application "System Events" to tell process "ControlCenter" to click (first menu bar item of menu bar 1 whose description is "Control Center")'
