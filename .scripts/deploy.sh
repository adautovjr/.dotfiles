#!/bin/sh 

source ~/.alias

if [ $# -lt 2 ]; then
	echo "Use this syntax:"
	echo "deploy-hp <major|minor|patch> <VERSION>"
  exit 1
fi

check develop
pull
check -B release/$2
push --set-upstream origin release/$2
releasy $1 --stable
echo "Created branch for a $1 update with this new version: $2"
