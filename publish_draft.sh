#!/usr/bin/env ksh
draft=$1
echo $draft | sed -e "s|_drafts/|_posts/`date +%Y-%m-%d`-|" | read post

mv $draft $post 
#./htmlproof.sh
