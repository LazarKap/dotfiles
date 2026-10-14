# tmux

## What it is

tmux (terminal multiplexer) runs a **server** in the background that owns your shells.
Your terminal window (Ghostty) is just a **client** looking at it. That gives you:

- **Persistence**: close Ghostty, the shells keep running. `tmux attach` brings them back.
  Same for SSH: a dropped connection no longer kills your jobs.
- **Layout**: one terminal window split into panes and tabs, all keyboard-driven.
- **Detach/attach from anywhere**: start a long job at the office, attach to it later.

Hierarchy: **server** → **sessions** (one per project usually) → **windows** (tabs) → **panes** (splits).

Everything is driven by a **prefix** key followed by a command key.
This config uses **Ctrl-d** as the prefix (default is Ctrl-b).
Side effect: Ctrl-d no longer sends EOF to the shell. Use `exit`, or press Ctrl-d twice.

## Sessions (from the shell)

| Command | What |
|---|---|
| `tmux` | new session |
| `tmux new -s name` | new named session |
| `tmux ls` | list sessions |
| `tmux attach` / `tmux a` | attach to last session |
| `tmux a -t name` | attach to a named session |
| `tmux kill-session -t name` | kill one session |
| `tmux kill-server` | kill everything |

Inside tmux: prefix `d` detaches (session keeps running), prefix `s` lists/switches sessions, prefix `$` renames the session.

## Panes (splits) — this config

| Keys | What |
|---|---|
| prefix `v` | split left/right (opens in current dir) |
| prefix `h` | split top/bottom (opens in current dir) |
| **Alt-h/j/k/l** | move between panes, no prefix |
| **Alt-H/J/K/L** | resize pane by 2 cells, no prefix |
| prefix `q` | kill current pane |
| prefix `x` | show pane numbers |
| prefix `z` | zoom pane to full window, again to unzoom |
| prefix `a` | sync typing to all panes in the window (toggle) |
| mouse drag on border | resize |

## Windows (tabs)

| Keys | What |
|---|---|
| prefix `c` | new window (in current dir) |
| prefix `n` / `p` | next / previous window |
| prefix `1`..`9` | jump to window N (numbering starts at 1) |
| prefix `,` | rename window |
| prefix `&` | kill window |
| prefix `w` | pick a window from a list |

## Copy mode (vi keys)

| Keys | What |
|---|---|
| prefix `[` | enter copy mode (scrollback) |
| `h j k l`, `Ctrl-u` / `Ctrl-d`, `g` / `G` | move around |
| `/` text | search down, `n` / `N` next/prev |
| `Space` | start selection |
| `Enter` | copy selection and exit |
| `q` | exit |
| prefix `]` | paste |

Mouse wheel also scrolls (mouse is on).

## Misc

| Keys | What |
|---|---|
| **Alt-a** | popup shell in current dir (Esc/exit closes) |
| prefix `b` | hide/show status bar |
| prefix `R` | reload tmux config |
| prefix `t` | clock |
| prefix `?` | list all key bindings |
| prefix `:` | command prompt, e.g. `:kill-server` |
| Ctrl-s | send prefix to a nested tmux (e.g. tmux inside SSH) |

## Typical flow

```
tmux new -s babel        # one session per project
prefix v                 # editor left, shell right
prefix c                 # new tab for logs
prefix d                 # detach, go home
tmux a -t babel          # tomorrow, everything is still there
```

## Config

`~/.config/tmux/tmux.conf` from github.com/doza-daniel/dotfiles (macbook branch).
Status bar colours come from `ghostty +show-config`, so the theme follows Ghostty's.
