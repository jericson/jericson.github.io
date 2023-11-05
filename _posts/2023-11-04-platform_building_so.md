---
layout: post
title: Building a community platform
subtitle: Stack Overflow
tags: community 
comments: true
---

Before we got married, my wife and I visited
[Teotihuacan](https://en.wikipedia.org/wiki/Teotihuacan) near Mexico
City. We climbed the massive [Pyramid of the
Moon](https://en.wikipedia.org/wiki/Pyramid_of_the_Moon) and had our
picture taken with the even larger [Pyramid of the
Sun](https://en.wikipedia.org/wiki/Pyramid_of_the_Sun) behind us. The
enormous complex was built over hundreds of years by a civilization
that preceded the Aztecs. Archaeological and historical evidence tell
us the place where we stood was previously used for animal and human
sacrifices. It's now a tourist destination.

![My (now) wife and I on the Pyramid of the
Moon](/images/usonthemoon.jpg)

Pyramids have been built around the world by many different
cultures. Edifices constructed at great expense in order to glorify a
king or deity remain impressive hundreds and even thousands of years
later. In a twist of fate, however, the identity of whatever or
whoever they were built to honor becomes a bit of trivia shared by
tour guides. And that's assuming the knowledge has survived. Lacking a
complete understanding of the cultures that produced the pyramids,
we're naturally left with awe and mystery.

When founders pass a community onto the next generation, the new
owners sometimes fail to understand what they are receiving. Obviously
there's revenue in the form of advertising or services provided. But
how a community functions and [why people
participate](/2016/07/13/QA_economics.html) seems shrouded by a cloud
of confusion. Too often people assume that since the company _owns_ a
community platform, they must enjoy the right to _change_ the
community to suit their needs. This is the source of frustration for
all involved.

I cribbed many of my ideas about community platforms from Alex
Komoroske's concept of [platforms as
gardens](komoroske.com/gardening-platforms).[^1] Communities can
function like software platforms and, with a little care, they can be
the foundation of a great business. This particular post is a
case-study of Stack Overflow, which largely failed to match its
promise as a community platform. Future articles will cover more
successful platforms and my hopes for College Confidential.

Communities always form around a purpose. People (including volunteers
from the community) built Stack Overflow so that there would be
canonical answers to all the boring questions people kept asking on
programming forums. To accomplish that goal, Stack Overflow's
developers designed custom-built software that eschewed the trappings
of a forum in order to encourage disciplined questions and answers.

Some founders chose [to stay focused](/2019/12/11/founders.html) on a
niche community. Stack Overflow, however, expanded into other subjects
where canonical answers to questions could be useful, which is pretty
much any subject at all. It renamed itself Stack Exchange and spun up
hundreds of communities covering everything from
[writing](https://writing.stackexchange.com/) to [database
management](https://dba.stackexchange.com/). Around the time it
[accepted funding from Andreessen
Horowitz](https://web.archive.org/web/20190212075510/https://stackoverflow.blog/2015/01/20/andreessen-horowitz-invests-in-stack-exchange/)
(and not coincidentally) the company began to lose interest those
topics and narrowed its mission to software developers. It fits with
an investment story of "software eating the world".

That turned out to be a pretty good investment since the company sold
for $1.8 billion a few years later. But it's been a slow-rolling
disaster for the Stack Exchange platform and community. Stack Exchange
[had a good track record of
expansion](/2021/08/19/community_startup.html), but leadership decided
"Nah. We like being in the technology niche." Specialization also made
Stack Overflow [extremely vulnerable](/2023/05/17/so_business.html) to
[technological disruptions](/2023/06/02/strike_comentary.html). It
might not maximize profit margins and growth, but **healthy community
platforms search for a wider audience**.

I was the community liaison for the [Documentation
project](https://meta.stackoverflow.com/questions/303865/warlords-of-documentation-a-proposed-expansion-of-stack-overflow)
and I thought it might be useful for sites other the Stack
Overflow. When I pitched the idea internally, the response was tepid
at best. The goal was to expand _Stack Overflow_. Work on other sites
on the network, including technical sites like [Server
Fault](https://serverfault.com/) and
[Unix](https://unix.stackexchange.com/), would not accomplish that
goal. I'm not sure the [outcome would have been
different](https://meta.stackoverflow.com/questions/354217/sunsetting-documentation),
but I wonder what would have happened if the project had been tested
on a smaller community than Stack Overflow.

It was the same story with [Jobs](https://stackoverflow.com/jobs/),
Stack Overflow's career service. While it was possible to find job
listings outside of the narrow "developer" focus, it always felt like
an oversight. For instance, the line between developer and data
scientist can be fuzzy, so sometimes a [data scientist job
listing](https://web.archive.org/web/20180828232025/https://stackoverflow.com/jobs/155241/data-scientist-national-security-agency)
would slip in. There was no consideration given to integrating the job
board with [Cross Validated](https://stats.stackexchange.com/), Stack
Exchange's statistics community. Stack Overflow was king, so the scope
of the Jobs service never had the chance to expand to
[mathematicians](https://mathoverflow.net/),
[engineers](https://engineering.stackexchange.com/),
[astronomers](https://astronomy.stackexchange.com/), [sound
designers](https://sound.stackexchange.com/) and so on.

When Jobs was [shut
down](https://meta.stackoverflow.com/questions/415293/sunsetting-jobs-developer-story),
the reasoning was:

>  Developers, as you all know, don’t have a hard time finding job
>  opportunities. The problem is often finding the _right_ opportunity
>  and job boards and sourcing are ineffective solutions. The effort
>  it would take us to truly differentiate in this space is not one we
>  could justify.

From one perspective this is absolutely correct. I even argued that
cutting Jobs would ["result in fewer distractions from improving the
Stack Overflow platform"](/2021/04/27/reading_tealeaves.html). What I
didn't understand at the time was Jobs made Stack Overflow a better
platform. The existence of job listings service offers a small, but
meaningful incentive to stay active on Stack Overflow in the off
chance of landing a better programming job in the future.

When [I lost my job](/2021/04/23/job_hunting.html), I found LinkedIn
almost worthless because it has _all the jobs_.[^2] Much better were
niche job listings attached to community management communities. They
don't really even compete with general job boards because the listings
are just posts in Slack. Everyone involved is part of the same
community already so there's a [much greater chance of like-minded
employers and applicants finding each
other](/2022/05/23/community_product.html). Stack Overflow Jobs never
needed to compete on features. It could afford to be slightly wonky as
long as it connected the types of people who are attracted to Stack
Overflow with the types of organizations that value those people.

I could go on to talk about how long it took us to figure out
organizations would gladly pay for what eventually became Enterprise
and Teams. Since the company's vision didn't include expanding in that
direction, we didn't see it as a serious possibility. Now Stack
Overflow makes something like [half its
revenue](/2023/05/17/so_business.html) from Teams. Chat was another
missed opportunity. When I first join the company, it was assumed
there was no market for a chat service. After Slack proved that
assumption wrong, the excuse was that Slack had already won the chat
market and who wants to play second fiddle?

Community platforms strive to meet the needs of their community even
if it's not the most profitable use of resources. Platforms must be
[farsighted to see better
things](https://www.youtube.com/watch?v=CqqHo8to-6A). Many companies,
especially those [driven by venture
capital](https://www.youtube.com/watch?v=CqqHo8to-6A), can't afford to
think years ahead. Shortsighted people don't build pyramids. 

Imagine what a priest who practiced sacrifices from the top of the
Pyramid of the Moon would think about my wife and I enjoying an
afternoon on that very spot. He'd probably say we missed the
point. maybe I'm as out-of-touch with modern life as that priest when
I write about what has become of Stack Overflow. It's hard to argue
with a company that was purchased for nearly $2 billion[^3] just 12
years after it started.

And yet that financial success came at a cost. First it cost nearly
two hundred Stack Exchange communities features that were limited to
Stack Overflow alone. Second it removed financial diversification that
might have prevented the [disastrous attempt to expand into
AI](/2023/06/26/problem_ai.html). Third it cost community trust that
seems to be [running critically
low](/2023/10/16/catija.html). Finally, it prevented Stack Overflow
and Stack Exchange from becoming an enduring platform for so many
communities. 

To understand what we missed out on, I'll need to write about a
successful community platform:
[BoardGameGeek](https://boardgamegeek.com/wiki/page/Welcome_to_BoardGameGeek).

---
 

[^1]: I believe I independently analogized communities to 
    [rose gardens](/2020/02/07/rose_parable.html).
    
[^2]: Turns out many "community manager" jobs are basically property
    management. To filter those out (and because I plan to never have
    a daily commute again) I only looked for "remote" positions.
    
[^3]: Disclosure: I got $237,549.76 from selling my Stack Exchange
    options.

<!-- Recently I gave an internal presentation about the purpose of the
College Confidential community. I pointed out that [our
site](https://www.collegeconfidential.com/about-us/) currently claims:

> College Confidential is your gateway to real, unfiltered guidance to
> higher education, through the power of community.

But I would phrase our purpose[^1] a bit differently:

> CC exists to help students plan and prepare for success in higher
> education.

I purposely removed any reference to "community" because it's a means
to an end rather than core to our purpose. Even though a significant
percentage of our site traffic ends up in the forums, hosting a
community only makes sense in so far as it helps ups achieve our goals
around education.

Members of our community don't see it that way, of course. I'm
thrilled to be working for a community that have developed lifelong
friendships and has an active off-topic section. Sometimes those
connections can produce [unexpected
value](https://jlericson.com/2022/05/23/community_product.html) and I
don't want to lose them. But I never want to mistake this very good
thing for our ultimate purpose in hosting it.


---

[^1]: I gave other people a chance to articulate our purpose and we
    all had similar answers. Encouraging!
-->
