require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  options = { :assume_extension => true,
              :file_ignore => ['./_site/geocities/']
            }
  HTMLProofer.check_directory("./_site", options).run
end
