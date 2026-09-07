# SketchyBar

Custom [SketchyBar](https://github.com/FelixKratz/SketchyBar) config, integrated with
[AeroSpace](../aerospace/aerospace.toml). Started minimal and grew widget by widget -
this doc describes the setup as it stands, not the history of how it got there.

Inspired by [Kiyoon Kim's dotfiles](https://github.com/kiyoon/dotfiles).

**Left:** AeroSpace workspaces (only non-empty + the focused one are shown, each labeled
with the app icons of its windows) · front app name, offset with a margin so its
variable width doesn't shove the workspace items around.
**Right:** CPU · RAM · keyboard layout (US | DE | DK, active one highlighted) · battery
· system menu (opens Control Center) · clock.

Multi-monitor aware: SketchyBar draws a bar on every connected display, but each
display's bar only shows the AeroSpace workspaces currently on that screen - see
[Multi-monitor](#multi-monitor) below.

## 1. Install prerequisites

```bash
# SketchyBar itself
brew install felixkratz/formulae/sketchybar

# Window manager it integrates with
brew install --cask nikitabobko/tap/aerospace

# Glyphs for the per-app workspace icons (icon_map.sh maps app name -> glyph)
brew install --cask font-sketchybar-app-font
```

You also need a Nerd Font for the bar's own text/icons (battery, wifi, clock, ...) -
`sketchybarrc` currently points `FONT` at `MesloLGS Nerd Font`. If you use a different
Nerd Font, update that one line. To check what's actually installed and avoid the
"tofu box" glyphs this repo hit once already:

```bash
system_profiler SPFontsDataType | grep -i "family.*nerd"
```

## 2. Symlink and start

```bash
ln -sfn ~/dotfiles/sketchybar ~/.config/sketchybar
brew services start sketchybar
```

`brew services` runs it as a launchd agent, so it survives reboots/logins. After
editing any file under here, `sketchybar --reload` picks up the changes (no need to
restart the service).

AeroSpace also needs to know to notify SketchyBar on workspace changes - that hook
lives in `../aerospace/aerospace.toml`'s `exec-on-workspace-change`, already wired up.
Run `aerospace reload-config` once after symlinking that file too.

## 3. Grant permissions

| Permission | Grant to | Why |
|---|---|---|
| **Accessibility** | `sketchybar` | The system-menu button opens Control Center via UI scripting (`tell application "System Events" to click ...`); without this the click silently fails with error `-1719`. System Settings -> Privacy & Security -> Accessibility. |

Nothing else needs a permission grant. The wifi widget deliberately stays
connectivity-only (no SSID) to avoid the Location Services + third-party
`wifi-unredactor` helper that macOS otherwise requires since Sonoma - see the comment
above the (commented-out) wifi item in `sketchybarrc` if you want to revisit that.

## Multi-monitor

SketchyBar mirrors a bar onto every connected display by default. Two things make that
work correctly rather than just look like it does:

- **Window gap on external displays**: the real macOS menu bar is hidden system-wide
  (`_HIHideMenuBar`), so macOS doesn't reserve any top space on its own - AeroSpace's
  `outer.top` gap is the only thing clearing the bar. The built-in display's notch
  safe-area happens to cover that automatically, but external monitors need it set
  explicitly. See the per-monitor `gaps.outer.top` override in
  [`../aerospace/aerospace.toml`](../aerospace/aerospace.toml) - bump the fallback value
  there if you change SketchyBar's `height`.
- **Workspace items are pinned to their current display**: `aerospace_workspaces.sh`
  queries `aerospace list-workspaces --monitor all` on every refresh and sets each
  `space.N` item's `display=` property to match, so a screen only shows the workspace
  numbers that are actually on it. `move-workspace-to-monitor` (`alt-shift-tab`) doesn't
  change the focused workspace, so it wouldn't otherwise trigger a refresh - the
  binding in `aerospace.toml` explicitly re-fires the sketchybar event after moving.

**Known gotcha**: if the system-menu button (Control Center) stops responding on a
display that was connected *after* login/boot, restarting `SystemUIServer`/
`ControlCenter` and even toggling "Displays have separate Spaces" off/on may not fix
it - that status item's window can end up bound to whichever display was active at
boot and not rebind on its own. A full logout or reboot resolved it when this came up;
no lighter fix found.

## File layout

```
sketchybar/
├── sketchybarrc              # bar + item declarations (the entry point)
├── colors.sh                 # Nord palette + Nerd Font icon glyph constants
└── plugins/
    ├── front_app.sh           # focused app name (front_app_switched event, lsappinfo fallback on reload)
    ├── aerospace_workspaces.sh # workspace highlight + per-window app icons (icon_map.sh)
    ├── workspace_click.sh      # left-click = switch workspace, right-click = open action menu
    ├── aerospace_menu_action.sh # the menu's reload/restart/quit actions
    ├── popup_hover.sh          # hover highlight shared by all popup menu rows
    ├── cpu.sh / ram.sh         # `top` / `vm_stat` + `sysctl`, polled every 5s
    ├── keyboard.sh             # `defaults`+`plutil` -> JSON, handles both keyboard
    │                           #   layouts and input methods (e.g. Chinese Pinyin)
    ├── battery.sh              # `pmset`
    ├── wifi.sh                 # `ipconfig`, connectivity only (item currently commented out)
    ├── clock.sh                # `date`
    ├── open_control_center.sh  # AppleScript UI-scripting click handler
    └── icon_map.sh             # app name -> sketchybar-app-font glyph (from the
                                 # sketchybar-app-font project's own GitHub release,
                                 # not hand-written)
```

## Design notes / gotchas

- **macOS ships bash 3.2** (`/bin/bash`), which lacks `\u`/`\U` escapes and `mapfile`.
  Icon glyphs in `colors.sh` are therefore raw UTF-8 `\x` byte escapes (looked up
  against `ryanoasis/nerd-fonts`' `glyphnames.json`), and array-building uses a
  `while read` loop instead of `mapfile`.
- **Right-aligned items stack in reverse add-order**: each new `--add item X right`
  ends up to the *left* of previously-added right items. The on-screen order in
  `sketchybarrc` is therefore the reverse of the visual left-to-right order - see the
  comment above the right-side section before reordering anything there.
- **Keyboard layout is read from the Text Input Sources (TIS) API**, not from
  `defaults read com.apple.HIToolbox`. That preference lies: removing an input method
  in System Settings can leave its `Input Mode` record behind in
  `AppleEnabledInputSources`, so a defaults-based reading keeps showing sources that
  are gone (Chinese did exactly that). TIS is what the system's own input menu reads.
- **Layout labels and order are mapped explicitly** at the top of `keyboard.sh`:
  `SOURCE_CODES` (by input source ID) and `LANG_CODES` (by language tag) decide the
  two-letter label - that's where Danish becomes `DK` rather than `DA` - and `ORDER`
  pins the display order, since macOS reports sources in the order they were added in
  System Settings. Unmapped sources fall back to their uppercased language tag and are
  appended after the pinned ones.
- **CPU polls every 5s, not more often**: `top -l 1 -n 0` costs ~300ms per call;
  everything else here is single-digit milliseconds and polls faster (keyboard every
  1s, RAM every 5s).
- **Workspace icon vertical alignment**: some `sketchybar-app-font` glyphs (e.g. Spark,
  Todoist) are drawn larger within their own glyph cell than others (e.g. Brave,
  iTerm), so they can look vertically off next to the workspace number. That's a
  glyph-proportion inconsistency in the font itself, not a padding/alignment bug here -
  confirmed by comparing workspaces with different apps under identical item settings.
