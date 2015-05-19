require 'net/http'
require 'json'
require 'htmlentities'

abort('Usage: ' << $0 << ' site id') unless ARGV.length == 2

site = ARGV[0]
id = ARGV[1]

uri = URI('http://api.stackexchange.com/2.2/posts/' << id)
params = { :site => site, :filter => '!5RBETbnAw8nEKsL7K5-Jnwzw*' }
uri.query = URI.encode_www_form(params)

res = Net::HTTP.get_response(uri)

items = JSON.parse(res.body)['items']

items.each do | post |
  owner = post['owner']

  body = HTMLEntities.new.decode post['body_markdown']
  
  puts <<MD
---
layout: post
title: #{ post['title'] }
tags: meta-post 
license: http://creativecommons.org/licenses/by-sa/3.0/
author: <a alt="#{ owner['display_name'] }" href="#{ owner['link'] }">#{ owner['display_name'] }</a>
comments: no
---

(Originally published on [Stack Exchange](#{ post['share_link'] }/#{ owner['user_id'] }).)

#{ body  })

MD
end
