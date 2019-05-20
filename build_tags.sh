#!/usr/bin/env ksh

rm -r tag
bundle exec jekyll build $@
mv _site/tag .
