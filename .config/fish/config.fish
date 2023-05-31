set -x fish_greeting ''
source ~/.profile
source ~/.alias

starship init fish | source

thefuck --alias | source
