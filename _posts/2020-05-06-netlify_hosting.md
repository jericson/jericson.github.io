---
layout: post
title: Netlify as a hosting option
comments: yes
tags: meta
---

I wrote about [hosting this site on
Heroku](/2020/04/28/heroku_hosting.html) last week. While I was at it,
I set up [a monitor](https://stats.uptimerobot.com/6YKMJioVAx) to see what sort of uptime the various options
had. I have no idea what happened, but over the weekend Heroku had
problems serving my site:

![Heroku Hosting up 96% of the time over 4
days](/images/heroku_uptime.png)

That's a 4 day stretch of 96% uptime, which isn't great. I did unset `JEKYLL_ENV`:

```
heroku config:unset JEKYLL_ENV -a jlericson
```

But since I'm setting the variable correctly in the
[Procfile](https://github.com/jericson/jericson.github.io/blob/master/Procfile)
and it had several days with no downtime, I don't think that's the
problem. Maybe I'm _still_ doing something wrong. But maybe Heroku
isn't the most reliable option.

As it happens, I [recently
learned](https://twitter.com/juliasilge/status/1257531141218635776)
about [Netlify](https://www.netlify.com/), which claims:

> Deploy a site in 30 seconds.

Now that is a bit over stated, but it did take me about 10 minutes to
get [my site set up](https://jlericson.netlify.app/). The process
involved pointing Netlify at my GitHub repository and changing the
random name it assigned to the name I want to use. I didn't even need
to set `JEKYLL_ENV`.

Hosting [Unicorn Meta Zoo on
Netlify](https://unicorn-meta-zoo.netlify.app/) took a few extra
steps. GitHub rather helpfully serves the README.md file as a site
index out of the box. All I needed to do was enable GitHub Pages in
the repository's settings. I also had picked the [Leap day
theme](https://github.com/pages-themes/leap-day) to make the page look
a little better.

In order to host it locally or on some other service, I needed to set
up the repository with:

```
$ bundle exec jekyll new . --force
```

The `--force` option is because I'd already set up some of the
necessary files, which needed to be overwritten. After [checking in
the
changes](https://github.com/unicorn-meta-zoo/unicorn-meta-zoo.github.io/commit/b419807fd41a656a9945215c444db0d5a0fd9f9b),
the site [worked on Heroku](https://unicorn-meta-zoo.herokuapp.com/)
again. But [the build failed on
Netlify](https://app.netlify.com/sites/unicorn-meta-zoo/deploys/5eb39f37b1d6e0000789ed81). As
far as I can tell, the problem is the repository is part of an
organization rather than under my name. So I added a line in
`_config.yml`:

```
repository: unicorn-meta-zoo/unicorn-meta-zoo.github.io
```

This can also be fixed by setting the `PAGES_REPO_NWO` environment
variable to the repository.

Finally, I wanted to make README.md my site's index. That was easily
accomplished with the [Jekyll Readme Index
plugin](https://github.com/benbalter/jekyll-readme-index).

We'll see how Netlify's uptime looks in a few weeks, but I feel better
about having a backup hosting option if I ever decide to move off of
GitHub Pages.

<iframe height="600" src="https://stats.uptimerobot.com/6YKMJioVAx"></iframe>
