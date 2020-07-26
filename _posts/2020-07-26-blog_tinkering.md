---
layout: post
title: Tinkering with my blog as proctrastination
tags: design
comments: yes
---

I have a pile of things to write about so . . . I'm going to tinker
with my blog instead. There are just a lot of little things that have
been bugging me for awhile, so let's see what I can take care rather
than write what I really want to write about.

## Fix slow images

I don't use a lot of images on my blog, but when I do use them, I
haven't bothered to optimize them. As a result, pages like [the
sourdough analogy](/2020/03/30/sourdough.html) took far [too long to
load](https://developers.google.com/speed/pagespeed/insights/?url=https%3A%2F%2Fjlericson.com%2F2020%2F03%2F30%2Fsourdough.html&tab=mobile). After
making this change, the PageSpeed increased from 87 to 98 on
mobile. More importantly, I no longer need to watch these images load
now that they are small enough to pop in nearly instantly. You know,
like on my machine.

Since my blog [runs on Jekyll](/about), I searched for `jekyll image
compression`. That led me to [an answer on Stack
Overflow](https://stackoverflow.com/q/55923556/1438) and [a Jekyll
plugin](https://github.com/envygeeks/jekyll-assets). Trouble with the
plugin is that [GitHub Pages doesn't run it on their
service](https://github.com/github/pages-gem/issues/189). I _could_ do
[the trick I used to get
tagging](https://github.com/jericson/jericson.github.io#layout-additions),
but the plugin also required some configuration to resize my
images. And I needed to change all my posts to use the special `asset`
Liquid tags. This was pretty quickly getting beyond my scope.

Like the prodigal son, I came to my senses. All I need to do is run an
[ImageMagick](https://imagemagick.org/index.php) command on all my
images. A few more searches brought me to [this article about resizing
images](https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/)
which helped me write a [`resize_images.ksh`
script](https://github.com/jericson/jericson.github.io/blob/master/resize_images.ksh):

```
#!/usr/bin/env ksh

mkdir -p images

# https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/

smartresize() {
    mogrify -path $3 \
            -filter Triangle \
            -define filter:support=2 \
            -thumbnail $2\> \
            -unsharp 0.25x0.08+8.3+0.045 \
            -dither None -posterize 136 \
            -quality 82 \
            -define jpeg:fancy-upsampling=off \
            -define png:compression-filter=5 \
            -define png:compression-level=9 \
            -define png:compression-strategy=1 \
            -define png:exclude-chunk=all \
            -interlace none \
            -colorspace sRGB $1
}

for f in images_raw/*; do
    t=`echo $f | sed -e 's/images_raw/images/g'`
    if  [ ! -f $t ]; then
        cp $f $t
        smartresize $t 740 images/
    fi
done
```

This copies images from `images_raw` to `images` and transforms them
so that they are no bigger then 740 pixels wide. I made a slight
change to [Dave
Newton](https://www.smashingmagazine.com/author/david-newton/)'s
script. He designed it to resize images for [responsive
design](https://en.wikipedia.org/wiki/Responsive_web_design) which
might mean making the image a bit bigger. But I mostly care about
making it fit into the width of my textblock, so I added the
greater-than symbol to `-thumbnail $2\>`, which instructs ImageMagick
to only size the image down.

For my blog, which an audience of hundreds, this isn't strictly
necessary. My readers tend to be patient enough to wait a second or
two for an image to load. Plus the text loads immediately so people
can get to the words. But it's the sort of thing that really kills a
site like [College
Confidential](https://talk.collegeconfidential.com/). [Our PageSpeed
on mobil is
5](https://developers.google.com/speed/pagespeed/insights/?url=https%3A%2F%2Ftalk.collegeconfidential.com). Out
of 100. That's "remember modems?" speed. Now our problem is not mostly
images. We're working to fix the problem because it really makes using
the site, especially on your phone, unpleasant.

## Use HTTPS links

This one is easier. When I started my blog, many sites didn't support
HTTPS protocol. So I copied links that began `http://` rather than
`https://`. Since my pages are served via HTTPS, that creates [a
potential security
problem](https://developers.google.com/web/fundamentals/security/prevent-mixed-content/what-is-mixed-content). Also
[Netlify](/2020/05/06/netlify_hosting.html) sends me an email every
time I publish a new page.

Every page Jekyll builds has this problem because of a line in [my
_config.yml
file](https://github.com/jericson/jericson.github.io/blob/master/_config.yml):

```
author_url: http://meta.stackexchange.com/users/1438/jon-ericson
```

When I added that line, Stack Exchange had not yet [moved to
HTTPS](https://meta.stackexchange.com/q/292058/1438). Since my URL is
in the footer of every page and the byline of every post, I have a lot
of mixed content problems. But I also have a lot of links in my posts
that are HTTP. Thankfully, it's fairly safe to fix them with a regex:

```
$ find _posts -name \*.md -exec perl -pi.bak -e 's|http://|https://|g' {} \;
```

A couple of caveats: I can't use that script on _this post_ because it
doesn't actually make sure the string that is being changed is a
link. Using it now would mess up this post. Second, `.bak` created a
bunch of backup files that aren't really necessary since I've saved a
copy of the previous version in Git. Cleaning them requires another
`find` command:

```
$ find _posts -name \*.bak | xargs rm
```

Note I used `xargs` instead of the `-exec` parameter. It's been a long
time since I used the command line for this sort of work and I'd
forgotten how flexible `xargs` is. I hadn't forgotten to [escape my
wildcards](https://stackoverflow.com/q/18836/1438) though.

Finally, so I wouldn't have this problem in the future, I added the
`enforce_https` test to [my
Rakefile](https://github.com/jericson/jericson.github.io/blob/master/Rakefile).

## Accessibility concerns

I happen to know my blog has one regular reader who experiences
problems when websites have poor contrast text. I've known my blog has
this problem too, but I hadn't gotten around to fixing it. Yes, my
blog doesn't have a large readership, but that means I lose a higher
percentage of my audience if they can't read my posts. (Not that
that's an excuse for [Stack Overflow ignoring the problem](It's not
like I'm [Stack Overflow), of course.)

One easy test is to [run a page through
WAVE](https://wave.webaim.org/report#/https://jlericson.com/2020/03/30/sourdough.html),
the [WebAIM](https://webaim.org/) web accessibility evaluation tool. I
don't have as many problems as I'd been afraid I would:

* 2 errors
* 20 contrast errors
* 1 alert


### Document language missing

My blog is in English because that's the language I'm comfortable
writing in. That's a pretty good default if the language isn't
specified. So my blog probably works fine for my readers. That said,
this is one of these US-centric things that drives people in other
countries mad. It's also a single line change to [my default
layout](https://github.com/jericson/jericson.github.io/blob/master/_layouts/default.html):

```
<html lang="en-US">
```

### Empty link

The [Jekyll theme I chose](https://github.com/jekyll/minima) included
a menu across the top of each page. The menu includes the following
link:

```
<a href="#" class="menu-icon">
```

Since I borrowed that code, someone has [removed the empty link
target](https://github.com/jekyll/minima/commit/242313af5fe0cbf3f0e4daa933e130b1a635d2f9#diff-822e9cf54ee310f9a7ebd0d16c9ae066). So
I copied that change and removed the line in my Rakefile that allowed
bare hashes in `href` attributes. That way I won't make this mistake
again. Subsequent testing reminded me I needed to rebuild my tag pages
for this change to go into effect everywhere.

### Contrast errors

I had two basic problems illustrated in this image:

![Contrast errors because of my small text and link color](/images/contrast_errors.png)

First, there are problems with the level of grey my theme used. The
contrast ratio is 3.77:1, which is less than the 4.5:1 recommended for
small text. Thankfully the WAVE tool has a Contrast tab that lets me
move a slider to find a dark enough text color. 

Second, my link color was low contrast as well. The trick with links
is the color must contrast with both the background and the main
text. Ideally, the color when a link is followed _also_ has sufficient
contrast with surrounding text. 

### Redundant alternative text

This alert pointed out that the `alt` text for my site icon was just
the site title, which isn't actually that informative. So I changed it
to:

```
<img src="{{ site.icon }}" alt="">
```

The icon itself carries no particular meaning. I suppose I could use
the alt text to explain that it's [Pablo Picasso's Don Quixote
sketch](https://www.pablopicasso.org/don-quixote.jsp). That would
explain the title, I suppose. But is it worth time when the rest of
the post is about something completely different? Is the joke itself
worth it for people who can see the image?

To prevent [HTMLProofer](https://github.com/gjtorikian/html-proofer)
from flagging this empty alt text, I added an exception:

```
:alt_ignore => ['/images/donquixote.gif'],
```

## Why bother?

So much of the world is imperfect and beyond the control of any one
person. Building you own website creates a space you can own. No it
won't be perfect, but it won't be constrained by the sort of things
that limit other sites. With a proliferation of [free and inexpensive
hosting options](/2020/05/06/netlify_hosting.html), there's no reason
not to claim a bit of territory on the internet. And if you have your
own site, you might as well do what you can to perfect it.

<!--  LocalWords:  centric
 -->
