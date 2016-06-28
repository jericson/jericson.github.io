# [jericson.github.io](http://jericson.github.io/)

## Layout additions

So far my layout is pretty basic. But I have added the following:

* Posts and pages may now have a `subtitle` attribute for alternate or
  extended titles. One of the sneaky benefits of my setup is that you
  can create a page that doesn't show up in the top bar menu by
  including a subtitle and leaving the title blank. (See my hidden
  page about [comments](http://jericson.github.io/comment.html).)

* Comments can be turned on by adding `comments: yes` to the front
  matter of posts and pages. Once someone has opened an issue for a
  post, I'll try to remember to add `issue: ##` to link the (now)
  canonical comment thread instead of prompting the user to create a
  new one. For more information, see
  <http://jericson.github.io/comment.html> and the
  [comment.html include file](https://github.com/jericson/jericson.github.io/blob/master/_includes/comments.html).

* Tag pages are built with the
  [jekyll-tagging plugin](https://github.com/pattex/jekyll-tagging). Since
  GitHub Pages are generated in safe mode, the process is a bit
  convoluted:

    1. Build `_site/tag` with `jekyll build` on my local machine.
    2. Copy `_site/tag` to `tag` and push changes to GitHub.
    3. GitHub copies `tag` back to `_site/tag` so that they are served
       on the site.

  It's important to remove the `tag` directory before running Jekyll
  or you will end up copying an old version of the tag pages back to
  `_site/tag`. So that I don't have to remember all of this, I
  scripted it in `build_tags.sh`. It's also important to not build the
  tag pages with drafts that you haven't published. Therefore, when I
  run a Jekyll server on my local machine, I always use safe mode to
  avoid rebuilding tag pages:

      bundle exec jekyll serve --watch --draft --safe

* I'm playing around with importing meta posts with `get_se_post.rb`
  which uses the
  [Stack Exchange API](http://api.stackexchange.com/docs). It takes
  two parameters: a site and a post identifier. The output goes to
  `stdout`, so you'll have to save it with something like:

      ruby get_se_post.rb Meta.Puzzling 3020 > _drafts/site_evaluations.md 

## Licence clarification

Any code I write is currently licenced under the Artistic
License. (But that's not set in stone. If you'd like me to release
under a different license for some reason, just ask.)

I retain copyright on my own content (essentially everything not under
`_includes`, `_layouts`, `_sass`, or `css`) with the exception of
posts that were originally published on Stack Exchange. Those are
licensed under
[CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/). For
simplicity's sake, I will probably settle on putting everything under
Creative Commons at some point. But not today.


<!--  LocalWords:  css sa LocalWords html jekyll GitHub se rb stdout
 -->
<!--  LocalWords:  md
 -->
