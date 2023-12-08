---
layout: post
title: Why I recommend Discourse
tags: discourse platform
comments: true
---

Currently there are 2½ viable desktop operating systems (OS) for
personal computers:

1. MacOS which is tied to Apple hardware.
2. Windows which works on nearly every PC, including some Macs.
3. Linux which also works on most hardware, but hasn't gained much market share.

For years I used Windows on a PC I build from parts I bought at
Fry's. The first thing I'd install was the functional equivalent of [a
Linux distribution for Windows](https://www.cygwin.com/).[^1] At
[Stack
Overflow](/2013/08/09/please-welcome-jon-ericson-community-manager.html)
I discovered Macs make good developer machines. If you [open a
terminal
window](https://support.apple.com/guide/terminal/what-is-terminal-trmld4c92d55/2.14/mac/14.0)
you'll find the OS is built on [a Linux-like
kernel](https://en.wikipedia.org/wiki/XNU). Virtually every server
I've worked with, including this very blog, run on Linux. I use Linux
every day, but always through a Mac or Windows OS.

Why don't I use Linux for my regular OS? Well, it suffers that fate of
"programmer design". Here's the process:
1. A programmer creates an interface that works.
2. Better not to mess with a good thing.

That's not entirely fair. Sometimes programmers [degrade to newer (and
worse) design
paradigms](https://medium.com/@probonopd/make-it-simple-linux-desktop-usability-part-1-5fa0fb369b42).[^2]

In actual fairness, programmers usually concern themselves with
interfaces between systems. Beginning with nothing more than
switches[^3] programmers devised software that, well, makes our
digital existence possible. Programmers can afford to use [terrible
interfaces](/2016/08/25/long_tail_docs.html) because we can write
[scripts](/2021/08/29/shell_prototyping.html). It's only when people
interact with software that the system breaks down. Making a great OS
requires untold hours of work to do things like [watch actual users
fail to understand your
design](/2016/06/30/usability_tests.html). Apple and Microsoft can
afford this, but open-source projects don't have those
resources. Linux is great for programmers managing software systems
but not so great for human interactions.

![Some bit of a San Francisco cable car.](/images/cable_car_part.jpg)

When it comes to forum software there are many more
options. [Wikipedia's
list](https://en.wikipedia.org/wiki/Comparison_of_Internet_forum_software)
isn't close to complete and if you expand to all sorts of community
software, the list is nearly endless. How do you chose?

Of the 17 forum software systems listed on Wikipedia, 5 are no longer
actively developed, so you can eliminate those. There's also a feature
grid, so you can eliminate software that's missing something critical
to your business such as single sign-on (SSO). The trouble with a
feature matrix, though, is you can never tell _how good_ the feature
is. Does SSO require twiddling a few settings and it works? Or is it
more of a "sacrifice a goat at midnight" sorta deal?

Free trials can be a good solution for most software purchasers, but
how does that work with _community_ software? In my experience you
start seeing the error of your ways months after people started using
the platform and you've already spent your budget for the year. Talk
about
[lock-in](https://www.joelonsoftware.com/2000/06/03/strategy-letter-iii-let-me-go-back/)!

So there's an unfortunate dynamic where community software platforms
fill in as much of the feature matrix as they can, set up beautiful
demo sites and don't quite get around to polishing the admin
tools. Not that these tools don't work. They just . . . aren't as
useful as they could/should be. Meanwhile the people who run the
community don't want to admit they screwed up picking the software and
become Stockholm syndrome advocates.

When I joined College Confidential, it was hosted on Vanilla
Forums. I'm pretty sure they considered us problem customers. We had a
[custom theme](/2020/03/25/CC-design.html) and every time Vanilla had
a new release, our site broke. To be completely clear, this was 99%
our fault. So we decided to move to self-hosting in order to test new
updates and fix any problems before they went to our production
system. Vanilla Forum software is [open
source](https://github.com/vanilla), so it seemed relatively
doable. Only we depended on a few plugins that _weren't_ open source,
including SSO. We asked Vanilla if we could license their SSO plugin
and they refused. That feature is core to their business, so it's
understandable. But that's when we first seriously considered
switching to Discourse.[^6]

This isn't to say we didn't have problems before that. Besides the
broken theme (again, our fault) Vanilla had an [unhelpful ignore
feature](/2020/09/24/ignoring_others.html) and moderators had to use
their person calendars to simulate a [temporary
ban](https://open.vanillaforums.com/discussion/25106/temporary-ban-plugin). So
many of [the features Vanilla
advertises](https://vanilla.higherlogic.com/vanilla/platform-overview/)
are shallow. The technically do the job. But they don't make it easy.

## Discourse understands communities

I've been reading a lot of reviews comparing Discourse to other forum
software. Inevitably the reviewer will mention [the Trust Level
system](https://blog.discourse.org/2018/06/understanding-discourse-trust-levels/). A
[typical
example](https://www.zendesk.com/service/help-center/best-forum-software/):

> Discourse aims to meet the needs of modern communities with features
> like a trust system that grants tiered access to users based on
> their ongoing community contributions. This feature helps brands
> regulate the behavior of new and existing users and reduces spammers
> from negatively affecting their online community.

Sure. Sounds useful, I suppose. It's just this blurb papers over the
nuance of Trust Levels. In order to earn basic rights such as sending
private messages (PMs) or post links on their profiles, new users must
[spend a few minutes reading posts on the
site](https://blog.discourse.org/2018/06/understanding-discourse-trust-levels/#trust-level-1-basic). That
does a lot to prevent spam because spending ten minutes on a site just
isn't worth the effort for people who don't care about the community.

But Discourse didn't stop there. When a new user joins, fills out
their profile and doesn't read anything on the site, the system
automatically flags the user for moderator attention. With a push of a
button, a moderator can delete the account _and block their IP
address_. While handling flags on College Confidential, I never saw a
false positive from this automation. The people who design Discourse
understand how spammers behave and set up [defense in
depth](https://acoup.blog/2019/05/17/collections-the-siege-of-gondor-part-ii-these-beacons-are-liiiiiiit/#:~:text=Let%E2%80%99s%20start%20by,into%20an%20ally.)
to stymie them.

Discourse could have used [a number-of-posts
threshold](https://www.phpbb.com/community/viewtopic.php?t=2378746) to
identify new users and checked off that feature box. What separates
_adequate_ from _excellent_ community software is the degree to which
it [guides community members to good
decisions](https://meta.codidact.com/posts/290389). Joining a site and
posting before reading is a sure sign you aren't interested in being a
part of the community. So if you want to send a PM, you need to spend
a bit of time understanding the community first.

By the way, Vanilla has a similar-seeming system called
[Ranks](https://success.vanillaforums.com/kb/articles/21-ranks).[^7]
While we were on Vanilla frequent question from new users was "How do
I get to send private message?" With Discourse, people who want to
send PMs get the privilege just by doing normal things on the site
such as reading. Discourse eliminated that one bit of friction for our
community and most people won't notice it's missing.

Discourse isn't perfect, of course. Vanilla did a better job
organizing hundreds of categories, for instance. But unlike what I
experienced using Vanilla, the company that develops Discourse
continues to improve the product. I have every reason to believe that
will continue since [the company uses Discourse
themselves](https://blog.discourse.org/2018/03/how-does-team-discourse-use-discourse/). To
steal [a line from Warren
Buffet](https://www.berkshirehathaway.com/letters/1983.html#:~:text=We%20eat%20our%20own%20cooking.),
they eat their own cooking.

It's a real plus that Discourse has [an active
community](https://meta.discourse.org/) who happily assist people who
run into difficulties using Discourse. Most questions get answered
within a few hours. It's also a good place to find people who can
provide more extensive advice for a fee. To plug [my own
services](https://buildcivitas.com/services/), I've been monitoring
the [marketplace category on Meta
Discourse](https://meta.discourse.org/c/marketplace/14) to look for
leads. I might not be able to help you myself, but there are other
experts hanging around who can.


---

[^1]: When [I use Windows these days](/2021/05/14/install_pg.html), I
    install [Windows Subsystem for Linux
    (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install#simplified-installation-for-windows-insiders),
    which allows me to install an _actual_ Linux distribution.

[^2]: Without straying too far from the topic, I'm considering trying
    out [helloSystem](https://github.com/helloSystem/hello). 

[^3]: Ones and zeros, not the hybrid gaming console.


[^5]: It's not really true anyway since [I started a consulting
    business](/2023/11/14/building_civitas.html). One of my leads has
    a Facebook group, which is a community platform that's not much in
    vogue these days. In some ways my services are most useful for
    people who aren't on a community platform such as Discourse.

[^6]: Even before I was hired I asked if College Confidential might
    swithc to Discourse and the answer was "not a chance". At that
    point I was mostly reacting the custom theme, which was just
    unworkable, and I saw Discourse as a nicer looking product. Not
    all Vanilla forums have poorly designed themes.

[^7]: Relegating the snide remark about how this name was choicen
    because the feature stinks to a footnote.
