#!/bin/sh 

source ~/.alias

if [ $# -lt 3 ]; then
	echo "Use this syntax:"
	echo "new_branch <FLOW-TYPE> <JIRA-ID> <SLUGGED-DESCRIPTION>"
  exit 1
fi

fetch
checkout main
pull
BRANCH_NAME="ajguedes/$1/$2/$3"
checkout -b $BRANCH_NAME
echo "created $BRANCH_NAME"
