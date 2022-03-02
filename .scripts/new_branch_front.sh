#!/bin/sh

source $HOME/.config/fish/config.fish

folio
check dev1/front
fetch
pull
merge origin/stag/front
push
check stag/front
pull
if [ (count $argv) -gt 0 ] 
	check -b $argv[1]
end
