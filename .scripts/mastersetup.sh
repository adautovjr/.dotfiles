#!/bin/sh

cd

export FISH="$HOME/.config/fish/config.fish"

curl -O https://raw.githubusercontent.com/rockymadden/slack-cli/master/src/slack
chmod +x slack

git clone --bare git@github.com:adautovjr/.dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

