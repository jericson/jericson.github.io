#!/usr/bin/env ksh

ruby -rubygems -e 'require "jekyll-import";
      JekyllImport::Importers::WordpressDotCom.run({
        "source"                => "'$1'",
        "no_fetch_images"       => false,
        "assets_folder"         => "assets"
})'
