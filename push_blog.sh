#!/usr/local/bin/ksh
comment=$1

git add --all
git commit -m "$comment"
git push -u origin master
