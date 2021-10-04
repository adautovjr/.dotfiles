#!/bin/sh 

source $FISH

#add .
st
set CURRENT_BRANCH (git rev-parse --abbrev-ref HEAD)
echo $CURRENT_BRANCH
#cm $1
push --set-upstream origin $CURRENT_BRANCH
