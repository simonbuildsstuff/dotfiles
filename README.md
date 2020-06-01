# My dotfiles for

* zsh

Some of the highlights of my dotfiles setup:
  * The home folder is mapped to be under version control and a special alias (config) is used to add files
  * Therefore, you don't need to use symlinks or anything similar and you can just add new dot files as they appear
  * Zsh is used as shell

## Setup
```bash
git clone --bare git@github.com:smn-dv/dotfiles.git $HOME/.cfg
config checkout # Configure the config alias before, see below
```

## Configuration
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```

## Usage
```bash
config status
config add .gitconfig
config commit -m 'Add gitconfig'
config push
```
## Credits
The git repo setup with the config alias is taken from https://news.ycombinator.com/item?id=11071754

This README.md is shamelessly copied from https://github.com/mpaepper/dotfiles
