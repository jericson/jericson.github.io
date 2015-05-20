#!/usr/bin/env ksh
set -e # halt script on error

comment=$1

#./build_tags.sh

git add --all
git commit -m "$comment"
git push -u origin master
