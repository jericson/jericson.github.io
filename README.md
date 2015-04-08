# [jericson.github.io](http://jericson.github.io/)

## Layout additions

So far my layout is pretty basic. But I have added the following:

* Posts and pages may now have a `subtitle` attribute for alternate or
  extended titles. One of the sneaky benefits of my setup is that you
  can create a page that doesn't show up in the top bar menu by
  including a subtitle and leaving the title blank. (See my hidden
  page about [comments](http://jericson.github.io/comment.html).

* Comments (powered by [Poole](http://pooleapp.com/)) can be turned on
  by adding `comments: yes` to the front matter of posts and
  pages. For more information, see
  <http://jericson.github.io/comment.html>.

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


<!--  LocalWords:  css sa LocalWords html jekyll GitHub
 -->
