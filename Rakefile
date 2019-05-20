require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  options = { :assume_extension => true,
              :allow_hash_href => true,
              :file_ignore => [%r"/geocities", %r"/medium/", %r"/rot/"],
              # https://github.com/gjtorikian/html-proofer#configuring-caching
              :cache => { :timeframe => '30d' },
            }
  HTMLProofer.check_directory("./_site", options).run
end
