#!/usr/bin/env ksh
set -e # halt script on error

rm -r tag
bundle exec jekyll build
mv _site/tag .
