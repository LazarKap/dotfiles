# Ghostty

Terminal app. Fast, GPU-rendered, config is one plain text file.
Think of it as the window; tmux (see tmux.md) is what runs inside it.

Rule of thumb: **Cmd = Ghostty**, **Ctrl-d prefix / Alt = tmux**.
For day-to-day work use tmux for splits and tabs (they survive closing the window).
Ghostty's own splits/tabs are fine for throwaway shells.

## Config

| | |
|---|---|
| file | `~/.config/ghostty/config` |
| open config | Cmd-, |
| **reload config** | **Cmd-Shift-,** |
| show resolved config | `ghostty +show-config` |
| list themes | `ghostty +list-themes` |
| list keybinds | `ghostty +list-keybinds` |

Current: theme `catppuccin mocha` (dark), font DejaVu Sans Mono Bold, ligatures off.
Option-h/j/k/l/f/b/d are mapped to Esc+key so tmux Alt bindings and readline word jumps work.

## Tabs and windows

| Keys | What |
|---|---|
| Cmd-T | new tab |
| Cmd-N | new window |
| Cmd-W | close current split/tab |
| Cmd-Shift-W | close window |
| Cmd-Shift-] / Cmd-Shift-[ | next / previous tab |
| Ctrl-Tab / Ctrl-Shift-Tab | next / previous tab |
| Cmd-1..8 | jump to tab, Cmd-9 last tab |
| Cmd-Shift-T | reopen closed tab (undo) |
| Cmd-Q | quit app (Cmd-W alone leaves it running) |

## Splits

| Keys | What |
|---|---|
| Cmd-D | split right |
| Cmd-Shift-D | split down |
| Cmd-Opt-arrows | move between splits |
| Cmd-] / Cmd-[ | next / previous split |
| Cmd-Ctrl-arrows | resize split |
| Cmd-Ctrl-= | equalize splits |
| Cmd-Shift-Enter | zoom split, again to unzoom |

## Text, search, scrollback

| Keys | What |
|---|---|
| Cmd-C / Cmd-V | copy / paste |
| Cmd-A | select all |
| Cmd-F | search, Cmd-G / Cmd-Shift-G next / prev, Esc exits |
| Cmd-E | search selected text |
| Cmd-K | clear screen |
| Cmd-Up / Cmd-Down | jump to previous / next shell prompt |
| Cmd-Home / Cmd-End | scroll to top / bottom |
| Shift-arrows | extend selection |
| Cmd-Left / Cmd-Right | line start / end (readline) |
| Cmd-Backspace | delete to line start |
| Opt-f / Opt-b | word forward / back |

## View

| Keys | What |
|---|---|
| Cmd-+ / Cmd-- / Cmd-0 | font bigger / smaller / reset |
| Cmd-Enter | fullscreen |
| Cmd-Shift-P | command palette (search any action) |
| Cmd-Opt-I | inspector (debug terminal state) |

## Gotchas

- Changing config does nothing until **Cmd-Shift-,** or a full Cmd-Q relaunch.
- Theme names are case-insensitive but need the space: `catppuccin mocha`, not `catppuccin-mocha`.
- `ghostty` CLI is a symlink in `/opt/homebrew/bin` to the app binary; the tmux status bar depends on it.

## Copying

| Where | How |
|---|---|
| plain Ghostty shell | mouse-select, Cmd-C; Cmd-V pastes |
| inside tmux | mouse-select, copied on release (no Cmd-C needed) |
| tmux keyboard | prefix `[`, move, `Space` start, `Enter` copies; `V` selects a whole line |
