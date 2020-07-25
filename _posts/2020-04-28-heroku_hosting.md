---
layout: post
title: Heroku as a hosting option
subtitle: Or how to avoid lock-in
comments: yes
tags: meta
---

This weekend I spent some time trying to fix a conflict I was having
between [Travis
CI](https://travis-ci.org/github/jericson/jericson.github.io/builds)
and [Heroku over
Gemfile.lock](https://stackoverflow.com/q/9605863/1438). Heroku needed
it to be checked in and Travis CI kept failing unless I let it build
the file on it's own. The solution for that problem was to [tell
Travis to install
Bundler](https://github.com/jericson/jericson.github.io/commit/afe6762b3f3433929ad738394fedf0d415ad627e). (This
is
[documented](https://docs.travis-ci.com/user/languages/ruby/#bundler-20),
but I guess that bit is new or I ignored it for some reason. I
certainly saw the next section about [caching Bundler's
output](https://docs.travis-ci.com/user/languages/ruby/#caching-bundler).)

So once I had that sorted out and the build wasn't failing on Heroku
anymore, I opened a tab to [the page for my Heroku
app](https://jlericson.herokuapp.com/) and saw:
!["Jekyll is currently rendering the site. Please try again
shortly.](/images/jekyll_rendering.png)

"Ok," I thought, "It's been awhile since this was working. Maybe
Heroku needs to allocate some resources or something." After
refreshing the page, it looked right so I clicked on a link to one of
my posts. That got me to a page that looked suspiciously familiar:

!["Jekyll is currently rendering the site. Please try again
shortly.](/images/jekyll_rendering.png)

This made less sense. Jekyll builds the entire site as static pages
and caches them in the `_site` directory. Once one page is rendered,
all the others should be rendered too. But maybe there is a layer of
caching somewhere that, I don't know, needs to regenerate the site for
each page? After reloading, the post page looked fine. Then I went
back to the front page and saw . . . well, you can probably guess.

Then I remembered that this was the issue that made me give up on
Heroku in the past. It must not be a very reliable service if it
couldn't serve up a static page. Or, I speculated, it works fine if
you have enough traffic to keep the resources online, but if you don't
have enough traffic, Heroku deprovisions the [Linux
containers](https://devcenter.heroku.com/articles/dynos) that power
the site. Then when the rare user (me) hits a page, the page isn't
cached anymore but needs to be rebuilt. So I just, you know, gave up.

This time, I dug a little deeper and found a reference to [Production
Problems](https://jekyllrb.com/docs/troubleshooting/#production-problems). That
in turn introduced me to the [JEKYLL_ENV environment
variable](https://jekyllrb.com/docs/configuration/environments/). It
turns out GitHub Pages sets that to `production` automatically, which is
why the site works out of the box with their platform. To fix the
problem on Heroku, all I needed was to run a simple command:

```
$ heroku config:set JEKYLL_ENV=production -a jlericson
```

Obviously you'll want to customize the `-a jlericson` bit to point to
whatever your application might be. Another alternative would be to
add the environment variable to [the app's
Procfile](https://github.com/jericson/jericson.github.io/blob/master/Procfile):

```
web: JEKYLL_ENV=production bundle exec puma -t 8:32 -w 3 -p $PORT
```

When I first [set up
Heroku](https://www.ironin.it/blog/deploying-jekyll-website-to-heroku.html)
it was because I wanted to see if it would work for [hosting the
Unicorn Meta Zoo
podcast](https://github.com/unicorn-meta-zoo/unicorn-meta-zoo.github.io). I
wanted to have an alternative to just putting MP3s on GitHub
Pages. Their [usage
limits](https://help.github.com/en/github/working-with-github-pages/about-github-pages#usage-limits)
are generous, but I didn't want to abuse them. And it's always nice to
have a fallback if GitHub no longer works for whatever reason. Even if
I never use Heroku to host the site, making sure the blog works there
means I'm not locked into my existing host.

Of course I'm not really worried about my personal blog. Worse case
scenario, I can run Jekyll locally and copy the static pages to some
other server. That's how I [build my tag
pages](https://github.com/jericson/jericson.github.io/blob/master/build_tags.sh)
and it could work for the entire site too, if needed. Being able to
publish via `git push` is great and all, but it's really not hard to
script FTP transfers or whatnot.

No, I'm more concerned with [my day
job](https://talk.collegeconfidential.com/). We have a [broken site
design](https://jlericson.com/2020/03/25/CC-design.html), but we're
struggling to fix it because of our hosting platform.[^1] It's supposed to work like this:

1. Our development team makes a change and tests it locally.
2. When we are ready, we submit a request to move the changes to our
   QA site, which is hosted by the hosting company.
3. We test the changes on the QA site and, when we are satisfied that
   works, we submit a request to push them to production.
4. The hosting company vets the changes and they go live.

This is _the best case scenario_. The two review steps (#2 and #4)
contractually take 3-5 days for a response.[^2] If something goes
wrong, a change will need to go back to step #1 for more work and the
whole process needs to start from scratch. In theory this could work
as a long pipeline where projects might take a little longer to
deploy. In practice any little misstep yanks developers back to
half-forgotten code. It's not working.

So we're solving this by developing on our own site and asking the
hosting company to redirect to our own pages. For instance, we built
our a [forum index
page](https://talk.categories.collegeconfidential.com/) that looks
like it's on the forum. It's more or less a polished version of [the
index I created for
myself](https://jlericson.com/vanilla-cat/college-confidential.html). As
long as users don't look too carefully at the URL, they will get a
seamless experience. Or at least that's the idea.

But the long term solution is to host the forums on our own. We're
going to start by hosting our own QA environment to cut out that half
of our development process. Using what we learn doing that, we'll be
able to count the cost for canceling the hosting contract
altogether. Even if we decide later not to self-host, the work we are
doing now gives us flexibility to build what we need.

---

Just for fun, I put the various options in
[UptimeRobot](https://stats.uptimerobot.com/6YKMJioVAx) monitors to
see which is most reliable. At the time of publication, Heroku looks
bad because of me testing the `JEKYLL_ENV` setting. I imagine it'll be
more reliable when I stop fiddling with it.

<iframe height="600" src="https://stats.uptimerobot.com/6YKMJioVAx"></iframe>

---

Footnotes:

[^1]: I'm not going to call the company out by name (though it's not
    hard to figure it out, if you know how) because we're still under
    contract with them. Probably they aren't petty enough to make
    things worse because of bad publicity, but you can't be too
    careful.

[^2]: These are _business days_, which take longer than normal
    days. Also . . . let's just say the contract is only as good as
    its enforcement. Sometimes the response time can be measured in
    weeks.
