#!/usr/bin/env ksh
post=$1

mv _drafts/$post _posts/`date +%Y-%m-%d`-$post
./htmlproof.sh
