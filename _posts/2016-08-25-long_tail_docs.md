---
layout: post
title: Long Tail Documentation
comments: yes
tags: review documentation
---

[![A different type of tarbomb.](http://imgs.xkcd.com/comics/tar.png "I don't know what's worse--the fact that after 15 years of using tar I still can't keep the flags straight, or that after 15 years of technological advancement I'm still mucking with tar flags that were 15 years old when I started.")](https://xkcd.com/1168/)

While this [tarbomb](http://www.linfo.org/tarbomb.html) is contrived,
the fundamental problem of digging a command's syntax without leaving
the command line is real. Going to a browser to get help risks
introducing
[human task switching](http://www.joelonsoftware.com/articles/fog0000000022.html). The
traditional answers are:

1. Man pages:

       $ man tar

2. Help options:

       $ tar --help

Neither are bad options, but it takes a longish time to scan through
detailed manpages while the terser help text doesn't include all the
details you might need. So my habit is to type a few words into Google
and click on the Stack Overflow link, which works as long as I can
avoid taking a quick look at Twitter or something.

Apparently I'm not alone in being distracted by browser tabs as there
are (at least) three command line interfaces for Stack Overflow. In
order of GitHub stars:

# [`howdoi`](https://github.com/gleitz/howdoi) (4,540 ★)

Like all of the commands listed here, `howdoi` feeds the provided
search string to a search engine (Google in this case) in order to
find the best Stack Overflow question. It then fetches the page and
uses [pyquery](https://pythonhosted.org/pyquery/) to find the first
chunk of code in the top-voted answer. This normally works well, but it
can be tricked:

    $ howdoi untar multiple files
    $ tar xf a.tar b.tar

In this case, [the answer](http://stackoverflow.com/a/583891/1438)[^1] is
explaining why this command won't work as expected:

    $ tar xf *.tar

Fortunately the `-a` option shows the entire answer. You can also use
the `-n` option to fetch more answers, including
[this one](http://stackoverflow.com/a/25123755/1438) by
[konsolebox](http://stackoverflow.com/users/445221/konsolebox):

    for F in alcatelS*.tar; do
        tar -xvf "$F" 
    done

Still, picking the first codeblock in the top returned answer is the
least possible context switching and probably works well enough for
most situations.

# [`how2`](https://github.com/santinic/how2) (4,393 ★)

Written in [Node.js](https://nodejs.org/en/), `how2` uses the
[Stack Exchange API](https://api.stackexchange.com/) to grab complete
answers. Unlike the other commands listed here, it defaults to
searching
[Unix &amp; Linux&mdash;Stack Exchange](http://unix.stackexchange.com/). However,
you can get answers from Stack Overflow by specifying a tag with
the `-l` option:

    $ how2 -l unix untar multiple files

I find this slightly less useful than simply searching for keywords
since I don't always know (or care) where my answer exists. To
compensate, there is an option to browse more questions and answers
simply by pressing the space bar. It's a great looking option, though
it risks the sort of distraction this tool is designed to avoid.

If you like that sort of thing, the output uses rudimentary syntax
highlighting to show the question title, code blocks and other bits of
Markdown syntax. I find the code blocks a bit too light against the
white background I prefer on terminal window. There are no options to
adjust this behavior.

# [`socli`](https://github.com/gautamkrishnar/socli) (338 ★)

The newest entry is also written in Python and uses
[Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/) to
extract both the top answer and the question from Stack
Overflow. Unlike the other options, it doesn't use Google but Stack
Overflow's
[native search](http://stackoverflow.com/search?q=untar%20multiple%20files)
to find questions. Search is not one of our
[core competencies](http://www.joelonsoftware.com/articles/fog0000000007.html)
so we use [Elasticsearch](https://www.elastic.co/). It's good, but not
Google good.[^2]

The upshot is the results are a bit off. For instance, this command:

    $ socli -q untar multiple files

returns the accepted answer to
[How can I untar multiple tar files over ssh?](http://stackoverflow.com/q/6208918/1438). The
answer works, but includes the needless complication of involving
`ssh`. `socli` also includes the question itself, which does provide
useful context in cases like this.

# Isn't this a novelty?

While writing this post I did try to use the three commands to solve
programming problems. I think with a bit of self-training one of these
commands would be mildly helpful. In particular, `howdoi` wins the
most-potentially-useful prize since it uses Google for (shallow)
natural-language searching and defaults to just showing code.

But I don't think I will use any of these commands just yet. When I've
forgotten to use one, I don't seem to have _that_ much difficultly
getting the answers I need through the browser. Having used Stack
Overflow extensively, I don't find it particularly distracting. My
habit has long been to switch between editor, command line and
browser.

A deeper problem remains: answers to Stack Overflow questions just
aren't broad enough. For years, we've been trying to encourage people
to
[edit questions to be more general](https://blog.stackoverflow.com/2011/01/the-wikipedia-of-long-tail-programming-questions/),
but people are too hung up on post ownership. That's one of the
reasons we're building
[Stack Overflow Documentation](http://stackoverflow.com/tour/documentation)
to encourage collaborative editing. There's clearly a need for quick
access to the dusty corners of programming, so we are banking on Stack
Overflow users stepping up to create long-tail examples the way
they've created long-tail answers. With their help (and a little
luck), programmers everywhere will be spending less time reading
manuals and more time creating amazing software.

---

[^1]: Unfortunately, when I found them these commands didn't to a good
    job of showing where answers came from. Technically that's a
    violation of Stack Overflow's
    [Attribution Required](http://blog.stackoverflow.com/2009/06/attribution-required/)
    policy and practically it means you need to do a redundant search
    if you want to get the answer's URL to
    [paste in your code](http://meta.stackexchange.com/q/272956/1438). As
    of this writing, I've submitted pull requests to address this
    issue:

    * [howdoi](https://github.com/gleitz/howdoi/pull/153)&mdash;Accepted
      on principle, but still working on the right comment-like prefix.
    * [how2](https://github.com/santinic/how2/pull/72)&mdash;No response.
    * [socli](https://github.com/gautamkrishnar/socli/pull/18)&mdash;Accepted
      and
      [improved upon](https://github.com/gautamkrishnar/socli/commit/23bbc839d2fcb6542a60511306ab8ea6efe5c334). (Yay!)

[^2]: One way that native search _could_ be better than Google is if
    it makes use of metadata unique to the site. On Stack Overflow,
    one good choice is votes.It's an
    [easy fix](https://github.com/jericson/socli/commit/cc87c31b686b0044ae48dfa15d326087b6372055),
    but I still think a Google search would be better yet.

<!--  LocalWords:  manpages LocalWords tarbomb GitHub howdoi santinic
 -->
<!--  LocalWords:  github gleitz socli https xkcd pyquery konsolebox
 -->
<!--  LocalWords:  jericson codeblock js  beautifulsoup BeautifulSoup
 -->
<!--  LocalWords:  untar html Elasticsearch
 -->
