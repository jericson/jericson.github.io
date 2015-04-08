#!/usr/bin/env ksh
set -e # halt script on error

rm -r tag
bundle exec jekyll build
cp -r _site/tag .
