#!/bin/sh

cd

git clone --bare git@github.com:adautovjr/.dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle install

sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'

chsh -s /opt/homebrew/bin/fish $USER

# xcode-select --install
