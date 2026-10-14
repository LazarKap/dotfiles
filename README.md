# dotfiles

Ghostty · tmux · Neovim (LazyVim)

| What | Where |
|---|---|
| Ghostty | `.config/ghostty/config` — Catppuccin Mocha, DejaVu Sans Mono, Option = Meta |
| tmux | `.config/tmux/tmux.conf` — prefix `Ctrl-d`, splits `v`/`h`, panes `Alt-hjkl`, colours follow Ghostty |
| Neovim | `.config/nvim` — LazyVim + oil.nvim |
| Cheat sheets | `cheat/tmux.md`, `cheat/ghostty.md`, `cheat/nvim.md` |

## Install

```sh
brew install tmux neovim
brew install --cask ghostty font-dejavu
ln -s /Applications/Ghostty.app/Contents/MacOS/ghostty /opt/homebrew/bin/ghostty  # tmux status bar reads its colours

git clone git@github.com:LazarKap/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.config/tmux     ~/.config/tmux
ln -s ~/dotfiles/.config/ghostty  ~/.config/ghostty
ln -s ~/dotfiles/.config/nvim     ~/.config/nvim

nvim   # let LazyVim install plugins
```

Edit the files in `~/dotfiles`, commit, push. The symlinks mean the live config is the repo.

tmux and Ghostty configs started from [doza-daniel/dotfiles](https://github.com/doza-daniel/dotfiles/tree/macbook).
