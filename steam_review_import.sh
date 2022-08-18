#!/usr/bin/env ksh

#set -x

# curl -s 'https://steamcommunity.com/id/jlericson/recommended?p=[1-5]' | pup '.title > a  attr{href}' | ./steam_review_import.sh


# https://stackoverflow.com/questions/20351261/bash-script-read-pipe-or-argument/23493222#23493222
for f in ${@:-`cat`}; do
         
    echo $f
    review=`curl -s $f`

    title=`echo $review | pup '.profile_small_header_location text{}' | tail -1`

    rating=`echo $review | pup '.ratingSummary text{}'`
    
    # https://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-a-bash-variable
    date=`echo $review | pup '.recommendation_date text{}' \
     | grep Posted | tr -d ' [:space:]'`
    
    #echo $date

    # https://stackoverflow.com/questions/1842634/parse-date-in-bash
    date=`date -jf 'Posted: %b %d, %Y @ %l:%M%p' '+%Y-%m-%d' $date`
    #date=`date -d $date`


    file=`echo "$date-$title.md" | tr '[:upper:]' '[:lower:]' | tr ' ' '_' | tr -d ':?!’' | tr -d "'"`
    #echo $review | pup '#ReviewText'
    
    body=`echo $review | pup '#ReviewText' \
     | perl -MHTML::Entities  -pe 'decode_entities($_);s|<br>|\n|g' \
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

[Originally published on Steam]($f)

$body" > _posts/$file

done
