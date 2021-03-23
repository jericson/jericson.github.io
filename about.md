---
layout: page
title: About
comments: yes
permalink: /about/
---

## Jon Ericson

I'm currently looking for work:

* [Resume](/resume/).
* My [CV](https://stackoverflow.com/cv/jericson), which goes into more detail.
* [What I accomplished at College Confidential.](/2021/03/18/leaving_cc.html)

---

The source of this site can be found on
[GitHub](https://github.com/jericson/jericson.github.io).

[![Build
Status](https://travis-ci.org/jericson/jericson.github.io.svg?branch=master)](https://travis-ci.org/jericson/jericson.github.io)
[![Netlify
Status](https://api.netlify.com/api/v1/badges/cce2e3ae-1f33-434c-b923-4381f215d440/deploy-status)](https://app.netlify.com/sites/jlericson/deploys)

---

My logo is ripped off from [Don Quixote, 1955 by Pablo
Picasso](https://www.pablopicasso.org/don-quixote.jsp). Back when I
was active on Usenet, I wanted to start using an
[X-Face](https://en.wikipedia.org/wiki/X-Face), which is a 48x48 black
and white image format that can be embedded in posts or
emails. Automatically converting images tends to result in something
of a mess:

![X-Face version of my current profile picture](/images/jon_ericson.gif)

I'm using [this online
converter](https://www.dairiki.org/xface/xface.php), but it doesn't
tend to matter. Extreme compression sacrifices quite a lot of
detail. For reference, here's the code needed to render that image:

```
X-Face: DSyNvIaDL&l#a%6<8=5!`92or[/V'U4zr'cmo]+alpAA}<w/1:ZXe5sy0ogc6D%X||C<6jH
 Eiym}|GJA[r@HK/:0sQeTyKB7}!MQ4dmNd8M/Tn7oPK)(L_O+pOSGD`jDo}@Gz0x#N(bR#.+c-wcxH
 CmocEp%Upz9$F;21]~H[rXVrmp)|ou5TrZp{R60dh4+:u~bL,*[}<z.$Sww5S<A0aq7IAyt7G?>/;F
 g+n.;>Ds+9DSsg/<m6^WEWeCEr1eNEjKr{:)+
```

Meanwhile, images that are already low density look pretty amazing
even enlarged 4x so the pixels are more clear:

![X-Face image of the Don Quixote, 1955 by Pablo Picasso. It's highly
pixelated.](https://www.dairiki.org/xface/xface.php?xface=%22Ro%7Di%231h%2ArV%3Atg%2BF.%21%5Dr%2Fy%2CRDL%27%60%2Asc%5B_1LB%27%25%2Aakh%40LHbt%2C%3AgBJ%2F%3A2cS%40%3AhpBLtYO%29o3a%3Bw3Tli%60r%2C.jIZD-zR%29p7%3A%5EV%5E%7D%23Wz%40.%5Cav%3EO%7B%218S.h%3ElnL3eMT1%22%2C%7EEiISLm4rw%2F%2AqVW3xE%23vj4%7D%23Cq%2757%2C%3FHW3K-Hl.B%2B%26%7B%3D%3E%2Be%3BR%3AJ%7E%27tJ%2A%7EfS%2A2n-G_8_5eS%5Bw%3F%23%2AJF%7Etj%23%7E%3Dzglo%2A%5C%26YBS1%26Zr2gP%5D&preview=1&enlarge=4)



---

Remember [Geek Code](https://en.wikipedia.org/wiki/Geek_Code)? Here's a modern version:

<a href="https://stackexchange.com/users/1083/jon-ericson"><img
src="https://stackexchange.com/users/flair/1083.png" width="208"
height="58" alt="profile for Jon Ericson on Stack Exchange, a network
of free, community-driven Q&amp;A sites" title="profile for Jon
Ericson on Stack Exchange, a network of free, community-driven Q&amp;A
sites" /></a>

If you want to send me a secret, I have a
[Keybase account](https://keybase.io/jericson). I also use one of
those GPG keys to
[sign my commits](https://github.com/pstadler/keybase-gpg-github).
 
 <script language="javascript"
 src="https://boardgamegeek.com/jswidget.php?username=Ichthydion&numitems=12&header=1&text=none&images=small&show=random&imagesonly=1&imagepos=left&inline=1&domains%5B%5D=boardgame&domains%5B%5D=videogame"></script>
 
[![Project Euler account](https://projecteuler.net/profile/jericson.png)](https://projecteuler.net/progress=jericson)

[![The Eric Conspiracy](https://www.catb.org/~esr/ecsl/graphics/ecsllogo1.png)](https://www.catb.org/~esr/ecsl/)

---

## Why Jekyll? ##

Over the years, I've used a number of blogging options, including:

* [A handmade blog on Geocities.](https://web.archive.org/web/20091026234407/http://geocities.com/jlericson/)
* [Blogger](https://4of2.blogspot.com/)
* [WordPress.com](https://taking1and1.wordpress.com)
* [Medium](https://medium.com/@jlericson)

Of those, my clunky, manually designed Geocities page was the most
satisfying. I won't go into detail, but each of the other options are
limited in some way or another by the whims of the blog software
developers. With a hand-built page, I just edited some HTML and FTPed
it to the server. If anything looked off, I fixed it.

One of my frustrations with building my own web page was writing
HTML. Having to open and close tags makes authoring in HTML a tedious
pain. I would have preferred to write my blog in
[Pod](https://perldoc.perl.org/perlpod.html) or, better yet,
[LaTeX](https://www.latex-project.org/). While that would solve the
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

Enter [Jekyll](https://jekyllrb.com/), which uses
[Markdown](https://help.github.com/articles/github-flavored-markdown/). The
idea behind Markdown is to formalize conventions of text-only
communication (such as pre-HTML email and news groups) into a robust
markup language. It's reminiscent of a simplified and polished version
of Pod. As a programmer and an author, it's all I could ask for.

Conversion to HTML would still be a problem if it weren't that Jekyll
uses [Liquid templates](https://jekyllrb.com/docs/templates/). I'm
addicted to subtitles, which is not an option provided by the base
theme. No matter. I just added a line to `_layout/page.html`:

{% raw %}
    {% if page.subtitle %}
      <h2 class="post-subtitle">{{ page.subtitle }}</h2>
    {% endif %}
{% endraw %}
    
Then I can add in the
[front matter](https://jekyllrb.com/docs/frontmatter/) of my page:

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

I'm testing out hosting on:
* [GitHub Pages](https://jericson.github.io/)
* [Heroku](https://jlericson.herokuapp.com/)
* [Netlify](https://jlericson.netlify.app/)

<iframe height="600" src="https://stats.uptimerobot.com/6YKMJioVAx"></iframe>

Unexpectedly, Jekyll imports several of my legacy blogs seamlessly. I
no longer need to rely on the
[Wayback Machine](https://archive.org/web/) to serve
[my Geocities pages](/geocities) or
[my Medium posts](https://medium.com/@jlericson). All I had
to do was put them in sub-directories under my source directory and
Jekyll collected them into the site. I have my Blogger and
WordPress.com blogs saved as XML files ready to be
[deployed](https://import.jekyllrb.com/docs/home/) if needed.

{% include comments.html %}

<!--  LocalWords:  Geocities WordPress html LocalWords permalink RCS
 -->
<!--  LocalWords:  Wayback geocities endif
 -->
