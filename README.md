# dotfiles

Ghostty · tmux · Neovim (LazyVim)

| What | Where |
|---|---|
| Ghostty | `.config/ghostty/config` — Catppuccin Mocha, DejaVu Sans Mono, Option = Meta |
| tmux | `.config/tmux/tmux.conf` — prefix `Ctrl-d`, splits `v`/`h`, panes `Alt-hjkl`, colours follow Ghostty |
| Neovim | `.config/nvim` — LazyVim + oil.nvim |
| Cheat sheets | `cheat/tmux.md`, `cheat/ghostty.md`, `cheat/nvim.md` |

Symlinked into place:

```sh
ln -s ~/dotfiles/.config/tmux     ~/.config/tmux
ln -s ~/dotfiles/.config/ghostty  ~/.config/ghostty
ln -s ~/dotfiles/.config/nvim     ~/.config/nvim
```

tmux and Ghostty configs started from [doza-daniel/dotfiles](https://github.com/doza-daniel/dotfiles/tree/macbook).
