# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a package that gets symlinked into `~` (see `.stowrc`).

## Install

```sh
git clone git@github.com:paolomissagia/dotfiles.git ~/Code/dotfiles
cd ~/Code/dotfiles
stow bash claude ghostty nvim starship tmux
```

Stow won't overwrite existing files, so move any existing `~/.bashrc` out of the way first.

## Remove

```sh
stow -D <package>
```
