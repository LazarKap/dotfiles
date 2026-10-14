# Claude Code

Vim mode is on (`editorMode = vim` in `~/.claude/settings.json`), `jk` leaves insert mode.
Custom keys would go in `~/.claude/keybindings.json`, but bare-letter bindings leak into the prompt, so none are set.

## Prompt, vim mode

| Key | What |
|---|---|
| `Esc` / `jk` / `Ctrl-[` | normal mode |
| `i a I A o O` | insert |
| `v` / `V` | visual |
| `h j k l`, `w b e`, `0 ^ $`, `gg G` | move |
| `f{c} F{c} t{c} T{c}`, `;` `,` | jump to char |
| `x`, `r{c}`, `s`, `S` | delete/replace char, substitute |
| `dd D cc C yy Y` | line ops |
| `dw de db cw ce cb yw` | word ops |
| `df{c} dt{c}` | delete to char |
| `ciw di" da( ci{ ...` | text objects: `iw aw iW aW` and `" ' ( [ {` |
| `p P` | paste |
| `>>` `<<` | indent |
| `J` | join |
| `u` | undo |
| `.` | repeat |
| `/` | reverse history search |
| `?` | vim help |

Not supported: counts (`3w`), `%`, `*`, macros, registers, `:` commands.

## Always

| Key | What |
|---|---|
| `Enter` | send |
| `Shift-Enter` | newline |
| `Esc` | cancel / back / dismiss, everywhere |
| `Esc Esc` | edit previous message |
| `Ctrl-C` | interrupt, twice to quit |
| `Ctrl-O` | transcript viewer (`q` closes) |
| `Ctrl-B` | background the running command (twice inside tmux) |
| `Ctrl-X Ctrl-K` | stop background subagents |
| `Ctrl-R` | search prompt history |
| `Ctrl-L` | clear screen |
| `Tab` | accept autocomplete |
| `!cmd` | run a shell command inline |
| `@file` | attach a file |

## Scrolling

Mouse wheel, `PageUp` / `PageDown`, `Ctrl-Home` / `Ctrl-End`. Or `Ctrl-O` for the transcript viewer.

## Sessions and agents

| Command / key | What |
|---|---|
| `claude` | new session in this folder |
| `claude -c` | continue the last session in this folder |
| `claude -r` | pick a session in this folder to resume |
| `claude agents` | agents view: every session on the machine |
| `Left` on empty prompt | detach to agents view |
| `Enter` / `Right` in agents view | attach |
| `Ctrl-F` / `Ctrl-R` / `Ctrl-T` in agents view | find / rename / pin |
| `Ctrl-X` in agents view | stop session |
| `/tasks` | running shells and subagents |
| `/exit` | leave |

## Slash commands worth knowing

`/config`, `/keybindings`, `/model`, `/clear`, `/compact`, `/cost`, `/help`.
