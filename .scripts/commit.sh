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
check dev1/front
merge $CURRENT_BRANCH
push
check $CURRENT_BRANCH
set PR_LINK (gh pr create --title "$argv[2]" --body "" -B "stag/front")
set SLACK_MESSAGE "[PR Open] $argv[2]  $PR_LINK"
echo $SLACK_MESSAGE
#slack --text "$SLACK_MESSAGE" --channel '#folio-all-devs'
