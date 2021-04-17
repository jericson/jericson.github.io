require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  options = { :assume_extension => true,
              :file_ignore => [%r"/geocities",
                               %r"/medium/"],
              # https://github.com/gjtorikian/html-proofer#configuring-caching
              :cache => { :timeframe => '30d' },
              # Frequent false positives for some reason
              :check_external_hash => false,
              :check_html => true,
              # Suckers bet. I can't fix all the world's broken links.
              :disable_external => true,
              :enforce_https => true,
              :alt_ignore => ['/images/donquixote.gif'],
            }
  HTMLProofer.check_directory("./_site", options).run
end

task "assets:precompile" do
  exec("jekyll build")
end
