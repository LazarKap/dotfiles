```
     _       _    __ _ _
  __| | ___ | |_ / _(_) | ___  ___
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/
```

Ghostty · tmux · Neovim (LazyVim)

| What | Where |
|---|---|
| Ghostty | `.config/ghostty/config` — Catppuccin Mocha, DejaVu Sans Mono, Option = Meta |
| tmux | `.tmux.conf` — prefix `Ctrl-d`, splits `v`/`h`, panes `Alt-hjkl`, colours follow Ghostty |
| Neovim | `.config/nvim` — LazyVim + oil.nvim |
| Cheat sheets | `cheat/tmux.md`, `cheat/ghostty.md` |

## Fresh Mac

```sh
# 1. tools
brew install tmux neovim
brew install --cask ghostty font-dejavu
ln -s /Applications/Ghostty.app/Contents/MacOS/ghostty /opt/homebrew/bin/ghostty  # tmux status bar needs it on PATH

# 2. this repo
git clone git@github.com:LazarKap/dotfiles.git ~/dotfiles

# 3. link configs
ln -s ~/dotfiles/.tmux.conf       ~/.tmux.conf
ln -s ~/dotfiles/.config/ghostty  ~/.config/ghostty
ln -s ~/dotfiles/.config/nvim     ~/.config/nvim

# 4. first run
nvim        # LazyVim installs plugins, wait for it to finish
tmux
```

Edit the files in `~/dotfiles`, commit, push. The symlinks mean the live config is the repo.

tmux and Ghostty configs started from [doza-daniel/dotfiles](https://github.com/doza-daniel/dotfiles/tree/macbook).
