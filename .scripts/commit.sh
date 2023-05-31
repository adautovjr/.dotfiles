#!/bin/sh 

source ~/.alias

if [ $# -lt 5 ]; then
	echo "Use this syntax:"
	echo "commit-hp <PR-ID> <PR-TITLE> <FLOW-TYPE> <BRANCH-NAME> <COMMIT-MESSAGE>"
  exit 1
fi

stash
pull
git flow $3 start $1/$4
stash pop
add .
cm "$5"
git flow $3 publish $1/$4
echo "$1 :: $2"
