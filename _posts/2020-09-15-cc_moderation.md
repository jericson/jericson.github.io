---
layout: post
title: Moderating on Discourse
tags: community moderation
comments: yes
---

> If we would guide by the light of reason, we must let our minds be
> bold.&mdash;[Louis
> Brandeis](https://supreme.justia.com/cases/federal/us/285/262/)

The primary goal of forum moderation is to clear away barriers to
healthy discussion. In particular, moderation addresses harmful human
behaviors that every community sees from time to time. Beyond
enforcing rules, moderators cultivate a society from people gathered
together in an online space.

That's the high-minded way of saying it. In practice, moderation is
largely about noticing which people are causing harm to the community
and doing something about it. Different platforms have different tools
for moderators to do their work. I'm most familiar with [Stack
Overflow
moderation](https://stackoverflow.blog/2009/05/18/a-theory-of-moderation/)
and I'm learning how [it works on Vanilla
Forums](https://vanillaforums.com/en/features/moderation/). But today
I'd like to share my research about Discourse moderation tools. There
is [an official moderation
guide](https://meta.discourse.org/t/discourse-moderation-guide/63116),
which is helpful and describes tools I don't touch on here. This is
more of a quick survey of what Discourse offers that other forums
generally don't.

## Trust Levels

[The Trust
system](https://blog.discourse.org/2018/06/understanding-discourse-trust-levels/)
operates on a simple, but often-ignored principle: joining a group
takes time and effort. Large and mature organizations observe rules,
customs and rituals that make them distinct from other groups. It's
natural to feel a little uncomfortable at the start of a new
relationship. All good things demand some effort to obtain and that's
certainly true of groups.[^1]

Unfortunately, few communities do a good job of initiating new users
to community standards. Quite a few conflicts occur when veterans
interact with people who haven't taken the time to educate themselves
on the customs of the site. It's like walking into a stranger's house
and not noticing that everyone else has taken off their shoes. So
Discourse assumes everyone new to a site will need to take time
learning the group before they can be trusted with various actions.

Site administrators can adjust what new users can or cannot do, but
the general idea is the damages they can do to a site is
limited. Spammers can't post dozens of links. Trolls can't send
private messages. Unlike other forum platforms, Discourse doesn't let
users escape these restrictions by posting a lot. Instead, new users
earn basic trust by reading the site. This doesn't mean they've
learned all the rules, but it does mean they've made the effort.

Trust levels provide other, less obvious, benefits to a community. The
user interface can be simplified for new users, for instance. And the
investment required to establish an account means moderator actions
have more bite. Each time a user gains a level, the system
congratulates them on their accomplishment. Perhaps most importantly,
however, trust levels allow the system to delegate straightforward
moderation and content curation tasks to the most active members of a
community.

## Editing content

Traditionally only moderators can edit other people's posts in
forums.[^2] Discourse grants that ability to more people in various
ways so that the moderators aren't overburdened. I'm describing the
default system, but almost all of the details can be adjusted if
desired by the administrators of the site.

### Lengthening the grace period

[Members](https://blog.discourse.org/2018/06/understanding-discourse-trust-levels/#member)
who have earned the second level of trust can edit their own posts for
up to 30 days. That can help them avoid the occasional embarrassment
of a typo or correct a misunderstanding.  All edits are tracked by the
system so that moderators can take action when someone make an
inappropriate edit.

### Wiki posts

At [Trust Level
3](https://blog.discourse.org/2018/06/understanding-discourse-trust-levels/#regular)
and above, regular users can create wiki posts that can be edited by
people who are at the basic trust level. This can be useful for
creating crowd-sourced documents that stay up to date. Again, these edits are
recorded, so that anyone can see that they happened and what changed.

### Fixing titles and categorization

Also at the third level, users also can rename threads or move them to
other categories, which is useful since newer users tend to make
mistakes in that department. Using more descriptive titles and putting
threads in the right category goes a long way to making content easier
to find.

### Acknowledging leaders

One of the more unique concepts Discourse offers is [Leader
status](https://blog.discourse.org/2018/06/understanding-discourse-trust-levels/#leader). When
staff recognize particularly helpful members of the community, they
can grant a designation just short of moderator. These individuals
have authority to edit other people's posts at any time and make other
important changes to content on the site. Leaders don't have all the
responsibility of moderation, which frees them to focus on improving
the site.

## Flags

Moderators can't possibly read every post on a site, which is why
members of the community can [flag
posts](https://meta.discourse.org/t/discourse-moderation-guide/63116#flags). One
of the great features of Discourse flags is they can be [effective
without even requiring a moderator to
act](https://meta.discourse.org/t/so-what-exactly-happens-when-you-flag/275). Depending
on the circumstance, community flags can hide posts, close topics and
even silence spammers.

More complicated flags must be handled by moderators. In addition to
giving them an opportunity to intervene, flags create a record of
behavior for the flagged user. The system itself [prevents users with
too many flags from gaining Trust Level
3](https://meta.discourse.org/t/what-are-flags-and-how-do-they-work/32783). When
a person continually causes problems on the site, there comes a time
when a moderator should step in and take action.

## Private messages and official warnings

Before taking more drastic actions, moderators usually ought to
contact a user directly.[^3] Often resolving disagreements with words
prevents a small problem from becoming a bigger problem. There's a
cycle of dissatisfaction with a community that can usually be
short-circuited by explaining the problem in a nonconfrontational and
calm manner. When people feel they have been fairly treated, even if
they don't get the outcome they are looking for, they tend to respect
the process.

Moderators have the option to turn a message into an official
warning. The difference is that moderators can see a count of official
warnings when they look at a user's profile. It goes on their
"permanent record". Importantly, however, only the user being warned
and other moderators can see the warning. The feature accomplishes two
goals:

1. Moderators have a historical record which helps them decide next
   steps if problems arise in the future.
2. People aren't publicly shamed when they make a mistake or
   misunderstand a situation.

## Silencing and suspending

If a user continues in behavior that harms the community and quality
if conversation after being warned[^4], moderators have the option to
silence or suspend for a fixed period of time. The immediate goal of
both actions is removing the user for a period of time. Silenced users
can't post, reply, flag or start private messages. They can reply to
messages and they can like and bookmark posts. When moderators silence
a user, they can give a specific reason which only the recipient and
other moderators can see. Silencing someone stops them from doing
anything meaningful on the site.

For more serious situations, it's helpful to suspend a user. Suspended
users can't log into the site and the reason for the suspension is
displayed on their user page. Obviously this signals to the community
that the user ran afoul of the communities standards of behavior. Once
the suspension is over, their public profile[^5] is returned to
normal. This [encourages
rehabilitation](https://meta.stackexchange.com/questions/293213/why-we-dont-keep-public-records-of-suspensions).

So when do you silence and when do you suspend? Simply put, suspend if
there's a pattern of negative behavior and silence if it seems like a
temporary situation. History of bullying other users?
Suspension. Uncharacteristically got caught up in a fiery argument?
Silence. Realistically, suspensions will be more common than
moderators[^6] silencing accounts because most people tend to behave
according to their character most of the time.

As a rule, the time period for these restrictions should start small
(overnight, for instance) and increase if the behavior continues:
days, weeks, months and up to a year. After that, moderators can
suspend a user forever, but a year usually more than suffices. I've
found that users can return to a site after a year-long suspension
having matured into a productive member of the community. I don't like
to give up on people.

## Summary

Discourse provides integrated systems that work together to help
active communities to moderate themselves. At the core is the Trust
Level system which creates an on-boarding framework and formalizes a
hierarchy that often arises naturally on forums. Moderation tools
allow for immediate removal of negative behavior and a path toward
rehabilitation. And all of these systems can be configured to fit with
existing moderation styles.

---

Footnotes:

[^1]: I moved across the country from Virginia to attend college at
    UCLA. I arrived early because I played tuba in the band and we had
    a couple of weeks of bandcamp before instruction started. On my
    first weekend, I went to the student union to get some
    dinner. After paying for my food, I looked around for a place to
    sit. A guy sitting at a table called me over. We started eating
    together, struck up a conversation and he asked if I had a
    church. I didn't. I couldn't believe my luck and we arraigned to
    go together that Sunday. Only after I discovered he'd invited me to
    a high-pressure recruiting cult did I figure out why this had all
    been so easy.

[^2]: Often people can't even edit their own posts after a short grace
    period, which is intended to prevent abuse.

[^3]: As always, there are exceptions. Obvious spammers won't respond
    to message no matter how well composed. 
    
[^4]: Again, moderators might skip the warning stage if necessary to
    stop particularly destructive behavior or if they estimate someone
    has no respect for the community.

[^5]: Moderators can see a record of suspensions, however. 

[^6]: The system silences suspected spammers, so the absolute rate
    could be the other way around.


<!--
> **College admissions, financial aid, college search** - [College
> Confidential.com](https://web.archive.org/web/20010831194225/http://www.collegeconfidential.com/)
> is the **best** web source for information on college-related
> topics, from Ivy League admissions to evaluating college rankings,
> from college books and book reviews to college counseling and paying
> for a university education.
-->
