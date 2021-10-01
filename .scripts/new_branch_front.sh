#!/bin/sh

source $HOME/.config/fish/config.fish

folio
check dev1/front
fetch
pull
merge origin/stag/front
push
