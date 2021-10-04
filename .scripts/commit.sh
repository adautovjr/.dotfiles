#!/bin/sh 

source $FISH

if [ (count $argv) -eq 0 ]
        exit 1
end

add .
st
set CURRENT_BRANCH (git rev-parse --abbrev-ref HEAD)
cm $argv[1]
push --set-upstream origin $CURRENT_BRANCH
