# dotfiles

Personal configuration files for shell and terminal tooling. The files live here and are wired into the home directory via symlinks, so edits to this repo take effect immediately.

## How it works

Each config file in this repo is symlinked from its expected location in `~`. The actual file lives in the repo; the symlink in `~` is just a pointer to it.

## Setup

Clone the repo and create symlinks for each file:

```sh
git clone https://github.com/<your-username>/dotfiles.git ~/code/dotfiles

ln -s ~/code/dotfiles/.zshrc ~/.zshrc
ln -s ~/code/dotfiles/.tmux.conf ~/.tmux.conf
```

## Symlink map

| Symlink | Target |
|---|---|
| `~/.zshrc` | `~/code/dotfiles/.zshrc` |
| `~/.tmux.conf` | `~/code/dotfiles/.tmux.conf` |

Paths use `~` which resolves to `/home/<username>` on Linux and `/Users/<username>` on macOS.
