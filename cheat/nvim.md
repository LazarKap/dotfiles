# Neovim motions

Grammar: **[count] operator [count] motion**. `d2w` deletes two words, `3j` moves down three.
Learn motions once, every operator gets them for free.

## Modes

| Key | What |
|---|---|
| `Esc` or `jk` | back to normal mode (custom: `jk`) |
| `i` / `a` | insert before / after cursor |
| `I` / `A` | insert at line start / end |
| `o` / `O` | new line below / above |
| `v` / `V` / `Ctrl-v` | select chars / lines / block |
| `:` | command line |

## Moving

| Key | What |
|---|---|
| `h j k l` | left down up right |
| `w` / `b` / `e` | next word start / previous word start / word end |
| `W` / `B` / `E` | same, but only whitespace splits words |
| `0` / `^` / `$` | line start / first non-blank / line end |
| `f{c}` / `F{c}` | jump to next / previous char `c` on the line |
| `t{c}` / `T{c}` | jump to just before it |
| `;` / `,` | repeat last `f`/`t` forward / back |
| `gg` / `G` | top / bottom of file |
| `{n}G` or `:{n}` | go to line n |
| `{` / `}` | previous / next blank line (paragraph) |
| `%` | matching bracket |
| `Ctrl-d` / `Ctrl-u` | half page down / up |
| `Ctrl-o` / `Ctrl-i` | jump back / forward in history |
| `*` / `#` | search word under cursor forward / back |
| `/text` then `n` / `N` | search, next / previous |

Relative line numbers are on: the number beside a line is what to type with `j`/`k` (`7j`).

## Operators

| Key | What |
|---|---|
| `d` | delete (cut) |
| `y` | yank (copy) |
| `c` | change (delete then insert) |
| `>` / `<` | indent / dedent |
| `=` | auto-indent |
| `gu` / `gU` | lowercase / uppercase |

Doubled = whole line: `dd`, `yy`, `cc`, `>>`.
Capital = to end of line: `D`, `C`, `Y`.

## Text objects (use after an operator or in visual mode)

`i` = inside, `a` = around (includes delimiters/space).

| Key | What |
|---|---|
| `iw` / `aw` | word |
| `is` / `as` | sentence |
| `ip` / `ap` | paragraph |
| `i"` `i'` `` i` `` | inside quotes |
| `i(` `i[` `i{` `i<` | inside brackets (`ib` = `i(`, `iB` = `i{`) |
| `it` / `at` | inside / around an HTML/XML tag |
| `if` / `af` | function (treesitter, LazyVim) |
| `ic` / `ac` | class (treesitter) |

Examples: `ciw` change word, `di"` delete inside quotes, `yap` copy paragraph, `vi{` select block body, `daf` delete whole function.

## Editing

| Key | What |
|---|---|
| `x` / `X` | delete char under / before cursor |
| `r{c}` | replace one char |
| `s` | delete char and insert |
| `p` / `P` | paste after / before |
| `u` / `Ctrl-r` | undo / redo |
| `.` | repeat last change |
| `J` | join line below onto this one |
| `~` | toggle case |
| `Ctrl-a` / `Ctrl-x` | increment / decrement number |
| `>` in visual | indent selection |
| `"+y` / `"+p` | yank to / paste from system clipboard |

## Visual mode

| Key | What |
|---|---|
| `v` then motion | select |
| `o` | jump to other end of selection |
| `gv` | reselect last selection |
| `d` `y` `c` `>` | act on selection |
| `Ctrl-v` then `I`, type, `Esc` | insert on every selected line |

## Search and replace

```
:%s/old/new/g        whole file
:s/old/new/g         current line
:'<,'>s/old/new/g    visual selection (auto-filled)
:%s/old/new/gc       with confirm
```

## Macros

`qa` start recording into `a`, do stuff, `q` stop. `@a` replay, `@@` repeat last, `5@a` five times.

## Windows and buffers (LazyVim + custom)

| Key | What |
|---|---|
| `Tab` / `Shift-Tab` | next / previous buffer (custom) |
| `<leader>bd` or `:wq` | close buffer (custom: `:wq` closes buffer, not nvim) |
| `Ctrl-h/j/k/l` | move between splits |
| `<leader>-` / `<leader>\|` | split below / right |
| `<leader>ff` / `<leader>fg` | find file / grep |
| `<leader>e` or `-` | oil file explorer |
| `<leader>;` | dashboard |
| `<leader>cp` / `<leader>cP` | copy relative / absolute path |
| `<leader>` then wait | which-key shows everything |

## Learn order

1. `hjkl`, `w b e`, `0 $`, `i a o`, `Esc`/`jk`, `u`, `:w`
2. `dd yy p`, `x`, `.`, `f{c}`, `/`, `n`
3. operators + text objects: `ciw`, `di(`, `yap`
4. counts, `Ctrl-o`, `%`, `*`, `gv`, macros
