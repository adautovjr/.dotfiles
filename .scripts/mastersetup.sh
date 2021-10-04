#!/bin/sh

export FISH="$HOME/.config/fish/config.fish"

git clone --bare git@github.com:adautovjr/.dotfiles.git $HOME/.dotfiles
git --git-dir=$DOTFILES_DIR --work-tree=$HOME checkout
git --git-dir=$DOTFILES_DIR --work-tree=$HOME config --local status.showUntrackedFiles no

