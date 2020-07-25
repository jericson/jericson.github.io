---
layout: post
title: How to conduct hallway usability tests without any hallways.
tags: features remote
comments: yes
---

When it comes to
[hallway usability testing](https://www.joelonsoftware.com/articles/fog0000000043.html),
the less said the better. Just grabbing the next
[5 or so](https://www.nngroup.com/articles/why-you-only-need-to-test-with-5-users/)
people you see and watching them use your product turns out to be
nearly as effective as hiring a consultant. (Plus it's a lot cheaper.)
Making lightweight testing more complicated robs the method of some of its value. So
you might be better off skipping this article if you have a busy
hallway near you.

On the other hand, if you
[work a goodly distance](https://blog.stackoverflow.com/2013/02/why-we-still-believe-in-working-remotely/)
from your nearest co-worker usability testing will require a bit more
work to pull off. For one thing, you'll need to schedule people across
timezones and figure out how to screenshare. So you might as well use
the excuse to do a slightly more sophisticated process that will
result in slightly better testing.

## Set a goal

Most of the time the goal can be:

> Find out what confuses new users.

It's probably implicit to the very act of watching someone try out
your interface for the first time. But it can also be useful to have
specific things you want to find out. For instance, when we felt the
[Stack Overflow Documentation](https://meta.stackoverflow.com/q/303865/1438)
product was ready for public launch, we ran some usability tests with this goal:

> Can new users contribute to Documentation?

Without a goal, it can be too easy to delay launch to fix problems of
ever-decreasing importance. (For what it's worth, our second round of
tests have been very encouraging and launch is fast approaching.)

## Write a script

When you spot someone struggling to complete a simple task you know
how to do, it's human nature to step in with advice. But that instinct
risks breaking the very thing you are trying to understand. Minor
confusion using an interface for the first time is normal and
expected. But there's a huge difference between figuring something out
after a few minutes and _never_ figuring out how to use some feature
of your design. You'll can't tell the difference between those types
of failure if you step in and solve the problem prematurely.

So you need to play a part in strange sort of improvisational
performance where the test subject is the star. Your job is to say and
do as little as possible, which is where a script can help. A good
script will give just enough direction for the star to push the plot
forward:

* Put the test subject in the mindset of a particular user.

* Encourage the test subject to verbalize their thoughts while using
  your interface.

* Place the test subject on the path at the point you want to start
  testing user interaction.

* Provide subjects tasks you hope they will accomplish _without telling
  the them how_.

## Give people a chance to reflect on the experience

You might also want to ask some questions at the end of the test. Be
aware that people probably won't answer concisely if they were in the
proper mindset for the test itself. On the Documentation usability
test we recently finished, I asked people to give a "two sentence
review". Instead, everyone rambled on with general impressions. Some
of them noticed they hadn't answered the question at all, but I
assured them it was fine: we weren't really looking for a
back-of-the-box blurb.

If you want to focus answers on something concrete, ask binary or
multiple choice questions such as:

> Do you feel using the product was _more intuitive_ or _more
> confusing_?

Having just a two options forced people to summarize the entire test
into a useful data point. We did notice that this evaluation is highly
variable, however. Some people who struggled rated the experience as
intuative while people who seemed to pick up on the interface quickly
called it confusing.

## Logistics

Much of the hassle of doing remote "hallway" usability tests depends
on the way your organization is structured. Most people can't drop
everything at a moment's notice to spend an hour learning your
interface the hard way. So you'll need to schedule around other
meetings, regular work hours and timezones. If you use Google
Calendar, the
[Find a time](https://support.google.com/calendar/answer/37161)
feature can be useful.

You'll also need to pick (and test out!) some sort of video
conferencing system. At a minimum, the test subject needs to share
their screen. It's also useful to record the session so that everyone
on the team can review the test. (I like to remind the other person we
are recording and make sure they are fine with it at the beginning of
the test.) We use [Zoom](https://zoom.us/), but
[Hangouts On Air](https://support.google.com/plus/answer/2553119) or a
number of other systems should work just as well.

## Fix the problems and test again

I won't lie: watching usability tests is painful even for people, like
me, who had nothing to do with the design. It's got to be so much
worse for the developers and designers watching people struggle to use
their work. But then you gotta move on and figure out what caused the
problems and fix them. If you do a good job, the next test will show a
different set of problems. Hopefully less serious problems, but you'll
never be done finding roadblocks that users will run across.

This is where having a concrete goal helps. If you keep going until
you solve _all_ the interface problems, you'll never finish. But you
can test until you meet your original goals and know that you are
done.
