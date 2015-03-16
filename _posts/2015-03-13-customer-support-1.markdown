---
layout: post
title:  Building a Customer Support System
subtitle: Part 1
comments: yes
tags: support
---

Before I was
[hired by Stack Exchange](http://blog.stackoverflow.com/2013/08/please-welcome-jon-ericson-community-manager/),
I wrote in an email:

> The variety of work, especially new features, sounds like a welcome
change of pace for me.  I like the "user support" stuff too.

I typically mix answering meta posts, responding to moderator chat
pings, and handling user emails and flags between work on bigger
projects like
[new features](http://meta.stackexchange.com/q/234259/1438) and
[events](http://blog.stackoverflow.com/2014/12/winter-bash-2014/), so
there is certainly plenty of variety. Moving from one task to the next
provides me feeling productivity that I didn't have with previous
jobs. Since I'm generally able to solve people's problems on the
sites, user support turns out to be satisfying as well. There's
nothing like knowing you left the world a little bit better at the end
of the day.

However, our job also requires each of us to regularly respond to
requests sent to
`team@`. [Unfortunately, as you probably already know, people](https://twitter.com/horse_ebooks/status/228032106859749377)
need a lot of things and we can't always help them. Even a little
futility, as it turns out, drains me of all energy very quickly. In my
first evaluation with
[Jay](http://stackexchange.com/about/management), I told him, "I love
the job, but I dread my `team@` days. Something has to change."

This is part one in a series describing how we managed to reduce the
misery factor of customer support even as our contact rate doubled:

![Sent "contact us" forms by month across all sites.](http://i.stack.imgur.com/6cqVn.png)

# Prehistory

On August 8, 2008, [Jeff Atwood](http://blog.codinghorror.com/) began
answering questions sent to `team@`.[^1] Presumably the other members
of the team had access to the email account, but most of the early
replies are either unsigned or signed by
Jeff. [Jarrod](http://blog.stackoverflow.com/2009/01/welcome-stack-overflow-valued-associate-00002/)
and
[Geoff](http://blog.stackoverflow.com/2009/05/welcome-stack-overflow-valued-associate-00003/)
were probably too busy fixing bugs and building new features to answer
support email. As the site grew and as new sites were added,
[the team got bigger](http://blog.stackoverflow.com/2010/04/welcome-stack-overflow-valued-associate-00005/),
but support was still just a shared email account.

From what I gather, the way it worked was:

1. At the start of each person's day, they logged into the shared
   Gmail account via an incognito window[^2] and added their name as a
   a label to all tickets that came in over night. As new tickets came
   in, they'd need to be labeled as well. 

2. Emails were answered one at a time with the help of an array of
   canned responses. Unfortunately, canned responses have a habit of
   [disappearing](https://groups.google.com/forum/#!topic/gmail-users/UhgkztNU9uI).

Just before I was hired in July of 2013, the team handled over a
thousand tickets a month with the equivalent of one full-time employee
(spread across 5 actual employees). Assuming nobody worked more than a
40 hour week (ha!), that's  over 6 tickets an hour. Tickets
take a variable amount of time and effort to clear. Some cost a minute
or two to triage and send the appropriate canned response. Others take
several hours of investigation and a carefully composed reply.

# Enter Zendesk

So the shared email account had been pushed to the limits by the time
I arrived and
[Tim Post](http://blog.stackoverflow.com/2013/05/welcome-tim-post-our-latest-community-manager/)
evaluated several options and settled on
[Zendesk](https://www.zendesk.com/) to replace it. Unlike Gmail:

1. Each user (or "Agent") has their own login credentials so there's
   no need to manually label your tickets. Tickets carry status with
   them so you can filter just unsolved tickets that require your
   attention. They can also be sorted by last update or by subject
   line. Once you have a list of tickets, you can "Play" the list so
   that the next in line is automatically loaded as you submit
   changes. If you have specialists (such as our
   [Portuguese-](http://blog.stackoverflow.com/2013/08/introducing-gabe-the-smiling-community-manager/)
   and
   [Japanese-](http://blog.stackoverflow.com/2014/07/please-welcome-jmac-community-manager-of-the-rising-sun/)speaking
   Community Managers), they can set up triggers to have specific
   types of tickets assigned the them. In terms of workflow, Zendesk
   improves on Gmail exponentially.

2. Instead of canned responses, Zendesk offers macros that not only
   send a reply to the user, but also automate ticket handling tasks
   such as categorizing response type. We have a simple templating
   system so that we can insert site-specific URLs into our
   responses. In addition,
   [Shog9](http://blog.stackoverflow.com/2011/03/welcome-valued-associate-josh-heyer/)
   has written a suite of scripts to help us find the information we
   need to diagnose problems quickly. His work with the
   [developer tools](https://developer.zendesk.com/) has probably
   saved us thousands of clicks so far.

This isn't a full review of Zendesk and we only use a small fraction
of the available features. One feature we liked was the ability to
pass messages through our existing `team@` email system. This can be
helpful when we need to forward a message to another Stack Exchange
team (such as
[Stack Overflow Careers](http://careers.stackoverflow.com/)) without
losing the original email headers. As a bonus, we aren't
[locked into](http://www.joelonsoftware.com/articles/fog0000000032.html)
their service, though after a year and a half that's probably a moot
point.

**Next time:** scaling by hiring.

---

Footnotes:

[^1]:

    I seem to recall an email I sent around then complaining about an
offensive avatar on Stack Overflow.  After getting a reply from Jeff
that the image had been changed, I sent a followup email wondering why
I was still seeing that avatar. The answer, of course:
[caching](http://meta.stackexchange.com/a/221414/1438). Unfortunately,
I can't find a copy of that particular email either in my personal
email or the `team@` archives.

[^2]:

    The purpose of incognito is to avoid mixing support work with
other Gmail accounts you might have. Loading `team@` in another
browser could work too. These days there's enough support for multiple
Google addresses that might not be necessary.

<!-- LocalWords: Zendesk LocalWords login Shog heyer http html
joelonsoftware -->
