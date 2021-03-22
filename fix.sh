#!/bin/sh

git filter-branch --env-filter '

OLD_EMAIL="nigel@Nigels-Mac-mini.gateway1.rdns.roxxoncorp.com"
CORRECT_NAME="Nigel Norris"
CORRECT_EMAIL="ryan.norris@uconn.edu"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
