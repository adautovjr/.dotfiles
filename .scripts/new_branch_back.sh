#!/bin/sh

source $HOME/.config/fish/config.fish

folio_back
check dev1/backend
fetch
pull
merge origin/stag/backend
push
