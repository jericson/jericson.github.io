#!/usr/bin/env zsh

#set -x

# curl -s https://steamcommunity.com/id/jlericson/recommended?p=[1-5]' | pup '.title > a  attr{href}' | xargs -n 1 ./steam_review_import.sh

echo $1
review=`curl -s $1`

title=`echo $review | pup '.profile_small_header_location text{}' | tail -1`

rating=`echo $review | pup '.ratingSummary text{}'`

# https://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-a-bash-variable
#date=`echo $review | pup '.recommendation_date text{}' | tr -d '[:space:]'`

#date=`echo $review | pup '.recommendation_date text{}' \
#     | perl -ne '/(Posted: \w{3} \d?\d, \d{4} @ \d?\d:\d?\d\w{2})/; print $1'`

date=`echo $review | pup '.recommendation_date text{}' \
     | grep Posted | tr -d '[:space:]'`

#echo $date

# https://stackoverflow.com/questions/1842634/parse-date-in-bash
date=`date -jf 'Posted: %b %d, %Y @ %l:%M%p' '+%Y-%m-%d' $date`
#date=`date -d $date`


file=`echo "$date-$title.md" | tr '[:upper:]' '[:lower:]' | tr ' ' '_' | tr -d ':?!’' | tr -d "'"`

body=`echo $review | pup '#ReviewText' \
     | perl -MHTML::Entities -pe 'decode_entities($_);s|<br>|\n|g' \
     | sed -e 's|^ <span class="bb_spoiler">$|<details><summary>Spoiler</summary>|g' \
     | sed -e 's|^ </span>|</details><br/>|g' \
     | sed -e 's|<div id="ReviewText">||g' \
     | sed -e 's|</div>||g' \
     | sed -e 's|https://steamcommunity.com/linkfilter/?url=||g'`


echo "---
layout: post
title: '$title&mdash;$rating'
tags: game review steam
---

[Originally published on Steam]($1)

$body" > _posts/$file
