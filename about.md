---
layout: page
title: About
comments: yes
permalink: /about/
---

Remember [Geek Code](https://en.wikipedia.org/wiki/Geek_Code)? Here's a modern version:

<a href="http://stackexchange.com/users/1083/jon-ericson"><img
src="http://stackexchange.com/users/flair/1083.png" width="208"
height="58" alt="profile for Jon Ericson on Stack Exchange, a network
of free, community-driven Q&amp;A sites" title="profile for Jon
Ericson on Stack Exchange, a network of free, community-driven Q&amp;A
sites" /></a>

If you want to send me a secret, I have a
[Keybase account](https://keybase.io/jericson).

[![Project Euler account](https://projecteuler.net/profile/jericson.png)](https://projecteuler.net/progress=jericson)

[![No Comment](http://www.catb.org/~esr/ecsl/graphics/ecsllogo1.png)](http://www.catb.org/~esr/ecsl/)

---

## Why Jekyll? ##

Over the years, I've used a number of blogging options, including:

* [A handmade blog on Geocities.](https://web.archive.org/web/20091026234407/http://geocities.com/jlericson/)
* [Blogger](http://4of2.blogspot.com/)
* [WordPress.com](http://taking1and1.wordpress.com)
* [Medium](https://medium.com/@jlericson)

Of those, my clunky, manually designed Geocities page was the most
satisfying. I won't go into detail, but each of the other options are
limited in some way or another by the whims of the blog software
developers. With a hand-built page, I just edited some HTML and FTPed
it to the server. If anything looked off, I fixed it.

One of my frustrations with building my own web page was writing
HTML. Having to open and close tags makes authoring in HTML a tedious
pain. I would have preferred to write my blog in
[Pod](http://perldoc.perl.org/perlpod.html) or, better yet,
[LaTeX](http://www.latex-project.org/). While that would solve the
authoring problem, it also requires complicated and error prone
`*2html` scripts. In 2001, I wrote my resume in Pod. It started with
this section:

    =begin latex

    \documentclass{article}

    \begin{document}

    \pagestyle{empty}

    \enlargethispage*{1 in}

    =end latex

So, that's LaTeX embedded into a Pod file that I used to generate a
PDF. At the time, I'd hoped to use that same source to generate
HTML. But none of the options (including creating my own script)
worked the way I liked. So I resigned myself to authoring HTML
manually.

Enter [Jekyll](http://jekyllrb.com/), which uses
[Markdown](https://help.github.com/articles/github-flavored-markdown/). The
idea behind Markdown is to formalize conventions of text-only
communication (such as pre-HTML email and news groups) into a robust
markup language. It's reminiscent of a simplified and polished version
of Pod. As a programmer and an author, it's all I could ask for.

Conversion to HTML would still be a problem if it weren't that Jekyll
uses [Liquid templates](http://jekyllrb.com/docs/templates/). I'm
addicted to subtitles, which is not an option provided by the base
theme. No matter. I just added a line to `_layout/page.html`:

{% raw %}
    {% if page.subtitle %}
      <h2 class="post-subtitle">{{ page.subtitle }}</h2>
    {% endif %}
{% endraw %}
    
Then I can add in the
[front matter](http://jekyllrb.com/docs/frontmatter/) of my page:

    subtitle: In which the author spoils his own punchline.

Finally, when I save those changes in my editor and if I have Jekyll
running as a local server, I can check my work by refreshing a browser
tab. That reduces the edit-compile-run-debug cycle to (almost) the
bare minimum. The one tweak I'd like to make is for the page to be
reloaded automatically when I make a change.

On the hosting side, [GitHub Pages](https://pages.github.com/) are
served by a GitHub repository. Instead of FTPing the output, I just
push the source from my local machine. If GitHub stops hosting pages,
I'd have all my content and the tools I need to generate it under my
control. I get the best of both cloud and local storage with automatic
version control built right in. (My Geocities setup was backed by RCS,
but that was considerably less convenient.) If you are a programmer
who likes to write, there's no reason not to try it out.

Unexpectedly, Jekyll imports several of my legacy blogs seamlessly. I
no longer need to rely on the
[Wayback Machine](https://archive.org/web/) to serve
[my Geocities pages](/geocities) or
[my Medium post](/medium/A-readthrough-of-Roe-v--Wade.html). All I had
to do was put them in sub-directories under my source directory and
Jekyll collected them into the site. I have my Blogger and
WordPress.com blogs saved as XML files ready to be
[deployed](http://import.jekyllrb.com/docs/home/) if needed.

{% include comments.html %}

<!--  LocalWords:  Geocities WordPress html LocalWords permalink RCS
 -->
<!--  LocalWords:  Wayback geocities endif
 -->
