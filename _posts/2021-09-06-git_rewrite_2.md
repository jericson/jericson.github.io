---
layout: post
title: Rewriting a Git repository
subtitle: How we stopped making everything worse
tags: git documentation discourse
comments: yes
image: /images/ecobee.jpg
---

This is part two of a series:

1. [Unlimited growth (in a bad way)](/2021/08/24/git_rewrite_1.html)
2. [How we stopped making everything worse](/2021/09/06/git_rewrite_2.html)
3. [Dealing with distribution](/2023/09/01/git_rewrite_3.html)

[Last time](/2021/08/24/git_rewrite_1.html) I explained how Git
repositories get larger and larger as people commit changes. Today I'm
going to explain how we stopped adding PDFs willy-nilly. If I weren't
[writing a blog
post](https://mango.pdf.zone/i-give-you-feedback-on-your-blog-post-draft-but-you-dont-send-it-to-me),
I could just write the answer to the implied question:

> We stopped committing PDFs every time we built the EDB documentation.

But since I _am_ writing a blog post and in order to thank you for
clicking on a link to read this post, I'll press on.

# Getting computers to do our work

When I started my first full time job, I ran across [The Joel
Test](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/). It
was a 12-question diagnostic that gave programmers an idea of the
quality of their team. Believe it or not, the first question was
covered in [the first post in this
series](/2021/08/24/git_rewrite_1.html):

> Do you use source control?

If you use Git, the answer is "yes"! So we're 1 for 1. Now let's go on
to the second question:

> Can you make a build in one step?

This takes a little explanation. On the first day of learning to code,
you put your code into a file and use another program (usually either
a compiler or an interpreter) to turn that code into an executable
program. For "Hello World!" programs, that's often the only step. But
when you start to build something more interesting, it's pretty likely
you'll need more files and more steps.

When I first read about the Joel Test, I noticed the project I was
working on had something like three steps that went something like
this:

```
make clean
make libs
make all
```

Now 3 > 1, so we failed this test. The good news is I could toss those
steps in [a shell script](/2021/08/29/shell_prototyping.html), which
got us down to one step.[^1] That one step might take [the better
part of an hour](https://xkcd.com/303/), but it was just one step. So
second test passed!

This was excellent because it allowed us to also pass the third test:

> Do you make daily builds?

Joel wrote [another whole post about daily
builds](https://www.joelonsoftware.com/2001/01/27/daily-builds-are-your-friend/)
that convinced me to set up an automatic process to verify
nothing added in the last 24 hours broke the build. When you have
one-step builds, it's much easier to schedule.[^2] Initially I didn't tell
anyone I was doing this. So when someone else submitted a change that
didn't build, I'd walk over to their cubicle and let them know they'd
screwed up. In retrospect, some of my co-workers might have thought I
was a bit of a jerk.

# You can't stop the computers

The Joel Test is a bit out of date now. Services like GitHub make it
much more likely that a software team uses source control. [Package
mangers](https://en.wikipedia.org/wiki/List_of_software_package_management_systems#Application-level_package_managers)
not only simplify one-step builds, but make sure all the external
dependencies are up-to-date as well. Instead of _daily_ builds, modern
projects often build _whenever new code is added_. 

There are lots of methods to accomplish this, but I'm going to talk
about [GitHub Actions](https://docs.github.com/en/actions), which is
the tool we use. It's part of a larger class of tools called
continuous integration (CI). Sometimes they are called continuous
delivery or continuous deployment (CD). And just to be safe, we can
use the catchall acronym of
[CI/CD](https://en.wikipedia.org/wiki/CI/CD). While these are not
exactly the same idea, they all conceptually work something like my
"smart" thermostat:

[![ecobee thermostat](/images/ecobee.jpg)](https://twitter.com/jlericson/status/958797153295413248)

A regular thermostat monitors the temperature so that it can turn on
the AC when it gets too hot and the heater when it gets too cold. My
thermostat does that too. But it can also play "You Can't Stop the
Beat" from the hit musical _Hairspray_ if you say the magic words:

<iframe width="560" height="315" src="https://www.youtube.com/embed/K54VMAmjNSk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

It requires [a little work to set
up](https://www.amazon.com/gp/help/customer/display.html?nodeId=G2PYLKJN3XVZ55EQ),
but once that's done, a bunch of computers will spring into action
when anyone[^3] says "Alexa, play You Can't Stop the Beat". GitHub Actions
work the same way. To illustrate, let's look at some of the code[^4] that
was causing the problem. We'll start with the trigger:

```
name: Update PDFs on Develop
on:
  push:
    branches:
      - develop
```

GitHub Actions (AKA, "workflows") are defined by [YAML
files](https://yaml.org/) stored in the `.github/workflows/`
directory. But you don't need to know the details to understand what's
going on here. The first line names the process. It's not really used
by anything expect as a label that makes it easier to [find all the
times the workflow was
executed](https://github.com/EnterpriseDB/docs/actions?query=workflow%3A%22Update+PDFs+on+Develop%22). It's
handy to name your workflows something sensible, but there's no
requirement to even name them at all.

The rest of the lines define the triggering event. You can almost just read it by removing the punctuation:

> `on` `push` `branches` `develop`

But this is really terrible grammar that only a computer could love. Let's reword it:

> When there is a  `push` `on`  the `develop` `branch` . . . 

I haven't talked about branches just yet, but this is feature of Git
that allows people to work on different projects using the same code
without stepping on each other's toes. It creates an alternate
timeline that won't interfere with other timelines until someone
decides to merge them. The important thing is that this particular
workflow happens every time someone submits a change to the `develop`
branch.

What happens? Well that's defined in the second half of the file:

```
jobs:
  build-pdfs:
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
        with:
          ref: develop
          ssh-key: ${{ secrets.ADMIN_SECRET_SSH_KEY }}

      - name: Build all pdfs
        run: npm run build-all-pdfs-ci

      - name: Commit pdfs to develop
        run: |
          git config user.name [redacted]
          git config user.email [redacted]
          git add *.pdf
          git commit -m "New PDFs generated by Github Actions"
          git push
```

That's a lot. You can try the ignore-the-punctuation trick, but I'm
not sure it'll clear anything up. Best to dive in line-by-line:

* `jobs` tells the computer we're about to define one or more jobs to
  run in parallel. In this case we're only defining one job, but
  [computers prefer a simpler
  grammar](https://twitter.com/codinghorror/status/1165936105) than
  humans do.
* `build-pdfs:` is the name[^5] of the job we're about to define. 
* `runs-on: ubuntu-20.04` defines what sort of machine we need to do
  all this work. It's like how I can tell Alexa to "play You Can't
  Stop the Beat _in the living room_" so that it knows what speakers I
  want to use. GitHub needs to know what sort of operating system the
  job will be run on, so I define it here.

  I should probably pause here to mention that the biggest thing
  that's changed in computer technology over the last decade or so is
  the prevalence of [OS-level
  virtualization](https://en.wikipedia.org/wiki/OS-level_virtualization). You
  probably have heard of "the cloud". Well that's more of a nebulous
  marketing term for what's really happening. Not too long ago when an
  organization needed more processing power, they'd buy some expensive
  hardware and put it into their data center. These days many
  organizations don't even have a data center, but rather rent
  computers (or, more likely, _virtual_ computers) from some other
  company like Amazon, Microsoft or Google.[^6]
  
  In economics terms, computer power has been commoditized. Ordering
  an `ubuntu-20.04` is not much different than ordering a AA
  battery. Yes quality might vary depending on what brand I order, but
  I know the commands I'm about to send will work every time just as
  any AA battery will work in any device that accepts them.
* `steps` signals that I'm about to describe the individual commands I
  want the job to execute. This job has 3 steps and you can see where they
  are defined by looking for the `-` at the beginning of a line.


# Maybe computers are just _too good_ at their job?

We're starting to lose the plot here. All we've done so far is define
a workflow that runs three commands on a computer (we don't care
where, only what type) whenever someone makes a change to a particular
timeline (branch) of our source code. Once we set this up, computers
will mindlessly do this work _every time_[^7] the trigger happens.

What are those three steps? Well they use three different methods[^8] of
defining steps, but they boil down to:

1. get a local copy of the source code from `develop` branch,
2. build the PDFs from source and
3. check the PDFs back into Git.

The crux of the problem, [as I previously
explained]((/2021/08/24/git_rewrite_1.html)), is that we checked in
PDFs files which caused our repository to grow without limit. So all
we need to do is eliminate step #3 there.

Trouble is we want to keep PDFs indefinitely. So we need to store them
somewhere even if we don't put them in our repository.

# Netlify to the rescue

Now building PDFs isn't our only GitHub action. We also have [an
action](https://github.com/EnterpriseDB/docs/blob/develop/.github/workflows/deploy-main.yml)
on our `main` branch to deploy our production website to [its home on
the internet](https://www.enterprisedb.com/docs/). And we also have [a
workflow](https://github.com/EnterpriseDB/docs/blob/develop/.github/workflows/deploy-develop.yml)
to deploy a copy of the site to [a staging
location](https://edb-docs-staging.netlify.app/). Both of these
locations are [hosted by
Netlify](https://docs.netlify.com/site-deploys/overview/). 

As it happens, [Netlify uses Merkle
trees](https://medium.com/netlify/how-netlifys-deploying-and-routing-infrastructure-works-c90adbde3b8d). Don't
worry&mdash;I had to look it up too. Remember how I wrote [last
time](021/08/24/git_rewrite_1.html):[^9]

> Git uses [hashes] _everywhere_. When you commit changes, Git takes a
> snapshot of the working directory and generates a unique [hash] for
> that commit. Again, this number is (virtually) guaranteed to be
> unique to the exact details of the state of the working
> directory. This is important because it means any change to the
> working tree will result in a different commit.

I was underselling how much Git uses hashes. The "working tree" is
really a Merkle tree in which each branch is a hash pointing to either
a file or a sub-tree, which is itself a Merkle tree. This is
convenient because it means we can access anything from an individual
file to the entire project tree (and everything in between) with a
single number. Netlify can find our content, including all the old
versions of our PDFs, with a quick and efficient lookup.

The observant among you might think, "But wait, Won't that introduce
the same problem that Git had with these binary files?" So first, gold
star. And second, only if you want to clone the entire history of the
project to your local machine. Putting the entire history of Git means
everyone who uses the repository needs to download every version of
every binary file.[^10] But Netlify is only showing people whichever
version of the file they happen to be looking at. As long as the
Netlify people are cool with keeping our history, anyone can access
old PDFs we've published indefinitely.

# What has been generated once can be generated again

Sometimes when working on a problem, it can help to re-orient on the
big picture. Why did we want to keep PDFs indefinitely? Truth is we
only want to keep _some_ of our PDFs for all time. Specifically, we
want customers to have access to the documentation of major releases
of our products forever. Even after a product reaches its end of life,
there are all sorts of legitimate reasons to look at its
documentation. We don't particularly care about saving old PDFs if the
only differences are minor. If we're doing our job correctly, the best
copy of the documentation is the most recent one, so most of the PDFs
we've created have been overtaken by events.

That said, the nifty thing about Git keeping all that history _and_
using commodity compute power is that we can more or less re-generate
any PDF we've ever created in the past. All we need to do is:
1. Log into a computer with the same configuration as the computer we
used to generate PDFs. (In our case, that's one running
`ubuntu-20.04`.)  
2. Then we need to clone the EDB `docs` repository. (Easy: `git clone
git@github.com:EnterpriseDB/docs.git`.)  
3. Next checkout the specific point in time when the PDF was
originally generated. (`git checkout`)  
4. Reproduce the development environment. (`yarn` does the trick for
us.)
5. Build documentation as it was at that point in time. (`yarn build`)
6. Generate the PDFs from that documentation. (`yarn build-all-pdfs-ci`)

The key is to tag the major releases so that we can easily find them
again. We may never need it, but it's nice to know we have this option
too.

# Finally fixing the problem

With not just one, but two ways to get copies of old PDFs, we're ready
to stop checking them in each time we build `develop`. You can see
_exactly_ how I did this by looking at [this
commit](https://github.com/EnterpriseDB/docs/commit/2b50abacdb7980bb538b8e46ab6dab80a6802275#diff-19659e2265896c02c08a327203563ce9a46d9f4966740441f67f0cbdad58e223). All
I did was remove the GitHub Action that created PDFs and move the PDF
generation code into the GitHub Action we use to build to
production. That way the PDFs will be copied to Netlify where we can
access them, if needed.

If you read this far, you probably are looking forward to [next
time](/2023/09/01/git_rewrite_3.html) when I explain how we rewrote our
Git repository.



[^1]: I eventually learned about the [hazzards of recursive
    make](https://stackoverflow.com/questions/559216/what-is-your-experience-with-non-recursive-make)
    and fixed the build system so that I could just run `make`.
    
[^2]: Especially if you are, like I was, on Unix using
    [`cron`](https://en.wikipedia.org/wiki/Cron).

[^3]: Say, my children, who adore "You Can't Stop the Beat".

[^4]: Thanks to Git's insistance on keeping _everything_, you can see
    [the full script on
    GitHub](https://github.com/EnterpriseDB/docs/blob/3b15050881938e6a2f46d2434cf6895eb965f6e7/.github/workflows/update-pdfs-on-develop.yml). I'm
    gonna simplify it a bit to make the explanation easier to read.

[^5]: Technically it's the job id and there's another way to name a
    job. Let's just gloss over that in the main text and keep this
    sort of messy detail in the footnotes, shall we?
    
[^6]: My blog comments are currently [hosted for free by
    Oracle](2021/04/06/oracle_discourse.html). I could use one of a
    dozen other services, if I wanted.

[^7]: Well sometimes jobs can be skipped or cancelled.

[^8]: Namely: 
    1. [reusing a predefined
    action](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idstepsuses),
    2. [running a single-line command](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idstepsrun) and
    3. running a multi-line command.

[^9]: I promise this is the last time I link to that post, which I
    really hope you've read by now.
    
[^10]: At least that's true by default. As [JourneymanGeek pointed out
    in the
    comments](https://discourse.jlericson.com/t/rewriting-a-git-repository-unlimited-growth-in-a-bad-way/70/4?u=jericson):

    > One of the things those in the know do is set a shallow clone - with say --depth 1 (or 10). You can then ‘deepen’ the git 
    > clone at leisure, and not download as much in a single time.
    
    Notice this is more or less the Netlify solution too. Also notice I now have 
    [comments hosted on Discourse](https://discourse.jlericson.com). Yay! Also, also 
    notice I technically didn't link to the previous post. Ha!
    
