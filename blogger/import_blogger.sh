#!/usr/bin/env ksh

ruby -rubygems -e 'require "jekyll-import";
      JekyllImport::Importers::Blogger.run({
        "source"                => "'$1'",
        "no-blogger-info"       => false, # not to leave blogger-URL info (id and old URL) in the front matter
        "replace-internal-link" => true,  # replace internal links using the post_url liquid tag.
})'
