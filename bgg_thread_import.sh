#!/usr/bin/env zsh

#set -x

# https://stackoverflow.com/questions/893585/how-to-parse-xml-in-bash/7052168#7052168
read_dom () {
    local IFS=\>                                      
    read -d \< ENTITY CONTENT         
}                    

title='subject'

curl "https://boardgamegeek.com/xmlapi2/thread?id=$1&count=1" | while read_dom; do
    if [[ $ENTITY = $title ]]; then
        echo "---
layout: post
title: '$2: $CONTENT'
tags: game review
comments: yes
---

[Originally published on Board Game
Geek.](https://boardgamegeek.com/thread/$1)

"
        title='NOTUSEDATALLEVER'
    fi

    if [[ $ENTITY = "body" ]]; then
        echo $CONTENT | perl -MHTML::Entities -pe 'decode_entities($_);s|<br/>|\n|g'
    fi
done
