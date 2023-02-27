#!/bin/sh

if [ $# -ne 1 ];
then
    exit 1
fi

git status
sleep 2
git commit -m "GitAuto - $1"
git tag -a $1 -m $1
git --no-pager log -n 1 --abbrev-commit
sleep 1
git push --follow-tags
