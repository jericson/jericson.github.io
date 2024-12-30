#!/usr/bin/env -S ruby -W1
# encoding: UTF-8

require 'net/http'
require 'uri'
require 'open-uri'



def localize_images(file)
  doc = File.read(file)

  doc.scan(/(https:\/\/[\S]+\/)([0-9.\-A-Za-z]+.png)/) do |match|
    uri="#{$1}#{$2}"                     
    puts uri
    IO.copy_stream(URI.open(uri), "images_raw/#{$2}")
  end

  doc.gsub!(/(https:\/\/[\S]+\/)(\p{Alnum}*.png)/, '/images/\2')

  File.rename(file, file+".bak")
  File.write(file, doc)
  
  return doc
end

require 'optparse'

options = {
}

optparse = OptionParser.new do |opts|
  opts.banner = "Usage: #{$0} file ..."

  opts.on( '-h', '--help', 'Display this screen' ) do
    puts opts
    exit
  end
end

optparse.parse!

if ARGV.length == 0
  abort(optparse.help)
end

ARGV.each do | file |

  localize_images(file)
end
