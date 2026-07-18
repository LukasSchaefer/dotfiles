#!/usr/bin/env bash
# Shared palette, sourced by sketchybarrc and plugins.

# Nord palette (https://www.nordtheme.com/docs/colors-and-palettes).
export BAR_COLOR=0xff2e3440        # nord0  - bar background (Polar Night)
export ITEM_BG_COLOR=0xff3b4252    # nord1  - item pill background (Polar Night)
export ACCENT_COLOR=0xff88c0d0     # nord8  - focused workspace / highlights (Frost)
export LABEL_COLOR=0xffd8dee9      # nord4  - default text/icon color (Snow Storm)
export BG_DARK=0xff2e3440          # nord0  - text/icon color on top of the accent pill
export WHITE=0xffeceff4            # nord6  - high-contrast separators (Snow Storm)
export RED=0xffbf616a              # nord11 - low battery / disconnected (Aurora)
export YELLOW=0xffebcb8b           # nord13 - battery warning (Aurora)
export GREEN=0xffa3be8c            # nord14 - charging (Aurora)

# Icon glyphs (Nerd Font Private Use Area codepoints), as raw UTF-8 \x byte
# escapes so they work under macOS's stock bash 3.2, which lacks \u/\U
# support in $'...'. Looked up against ryanoasis/nerd-fonts glyphnames.json:
# fa-battery_full/three_quarters/half/quarter/empty, fa-bolt, md-wifi(_off),
# fa-clock_o, fa-microchip, fa-memory, fa-sliders, fa-keyboard.
export ICON_BATTERY_100=$'\xef\x89\x80'
export ICON_BATTERY_75=$'\xef\x89\x81'
export ICON_BATTERY_50=$'\xef\x89\x82'
export ICON_BATTERY_25=$'\xef\x89\x83'
export ICON_BATTERY_0=$'\xef\x89\x84'
export ICON_BOLT=$'\xef\x83\xa7'
export ICON_WIFI_ON=$'\xf3\xb0\x96\xa9'
export ICON_WIFI_OFF=$'\xf3\xb0\x96\xaa'
export ICON_CLOCK=$'\xef\x80\x97'
export ICON_CPU=$'\xef\x8b\x9b'
export ICON_RAM=$'\xee\xbf\x85'
export ICON_SYSMENU=$'\xef\x87\x9e'
export ICON_KEYBOARD=$'\xef\x84\x9c'
