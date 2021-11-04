#!/bin/sh 

source $FISH

if [ (count $argv) -lt 2 ]
	echo "Use this syntax:"
	echo "commit <COMMIT-MESSAGE> <PR-TITLE>"
        exit 1
end

add .
st
set CURRENT_BRANCH (git rev-parse --abbrev-ref HEAD)
cm $argv[1]
push --set-upstream origin $CURRENT_BRANCH
set PR_LINK (gh pr create --title "$argv[2]" --body "" -B "stag/backend")
echo "[PR Open] <$PR_LINK|$argv[2]>"
#slack --text "[PR Open] <$PR_LINK|$argv[2]>" --channel '#folio-all-devs'
