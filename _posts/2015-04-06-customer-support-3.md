---
layout: post
title:  Building a customer support system
subtitle: Tickets are people too
comments: yes
tags: support
---

[Previously]({% post_url 2015-03-23-customer-support-2 %}), I started
writting about
[Joel's customer service philosophy](https://www.joelonsoftware.com/articles/customerservice.html). Today,
I'll talk about the next three steps:

## 3. Be lenient when possible

A few years ago, behavioral economists
[examined the decisions](https://web.archive.org/web/20180106005608/https://www.pnas.org/content/108/17/6889/F1.expansion.html)
of eight Israeli parole board judges. Since the judges were all Jewish
and the prisoner requests they evaluated were a mix of Arab and Jewish
offenders, you might suspect that any bias present would be ethnic or
religious. Actually, decisions were most biased by the time of day the
judge considered the case:

[![Fig. 1.](https://www.pnas.org/content/108/17/6889/F1.medium.gif)](https://web.archive.org/web/20180106005608/https://www.pnas.org/content/108/17/6889/F1.expansion.html)

Those little circles represent food breaks (breakfast, snack and
lunch). If a prisoner was lucky enough to have their case heard
shortly after one of those meals, they could expect a favorable ruling
about 65% of the time. On the other hand, if they got stuck toward the
end of a session when the judge was likely to be tired and hungry,
there was little chance the judge would rule against the _status
quo_. The authors of the paper suggest a physiological explanation:
[ego depletion](https://en.wikipedia.org/wiki/Ego_depletion).

We get tickets that share a lot of commonalities with parole
hearings. In particular, people can get
[banned from asking questions](https://stackoverflow.com/help/question-bans)
on some of our sites. We've been working on ways to
[help people avoid](https://meta.stackexchange.com/q/243460/1438) these
bans, but with
[20,000+ new users signing up each week](https://data.stackexchange.com/stackoverflow/query/edit/297117#graph),
there's bound to be a few people who just don't learn how to ask good
questions. At least some percentage of those users appeal to us
directly.

I actually am glad they do. For one thing, sometimes our automated
system makes mistakes. Without going into the details too much, it's
possible for a user to make a blunder in their first question or two
such that they get banned even after working hard to improve their
later questions. While we can't remove the ban directly, we _can_
disassociate posts from users to let them post again.

The other reason I like seeing appeals is that it's reassuring that
our system is so often fair. Roughly 2/3 of the people who write in
have absolutely no business asking questions on a site for
developers. You gotta feel for these folks who have been stuck with
code they don't understand or given programming tasks without access
to proper training. Asking on Stack Overflow probably doesn't even
help many such users since they don't seem to understand the
answers. Often they ask essentially the same question over and over
again---only with slight and inconsequential variations. Blocking them
from asking more futile questions, as harsh as it sounds, is the right
thing to do.

Many of the remaining third who get a reprieve end up banned with
their very next question, which is discouraging. But for the rare
person who _does_ go on to be a productive user, it's important that
we gave that final opportunity. And that's why your mother always told
you to eat your breakfast.

## 4. Apologize to a weird degree

Apologizing never hurts as much as we think it will. My favorite
sentence in `team@` replies is:

> I'm sorry you had a bad experience on the site.

When it comes to coding Q&A, Stack Overflow doesn't have much
competition and it's tempting to behave like Ma Bell:

<iframe src="https://player.vimeo.com/video/355556831" width="640" height="310" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
<p><a href="https://vimeo.com/355556831">SNL 9/18/76 - Lily Tomlin - We&rsquo;re the Phone Company, We Don&rsquo;t Care!</a> from <a href="https://vimeo.com/user46953047">Michael Russo</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

For every person the site drives away, it seems like there are two
more clueless users to take their place. We don't need to care. But I
really am sorry people have a bad experience on one of our sites and
so I apologize. Profusely.

And you know what? It's never cost me anything. Sometimes people are
grateful and go away happy. Sometimes people write back with angry
words. Either way, an apology can only help. If I remain relentlessly
polite, I know that we can ignore angry responses from angry
people. If we get a polite response, I can take credit for handling
the situation well. Being rude back can only make matters worse.

## 5. Use the canned responses

In the heat of the moment, it's easy to get snippy with
someone. Someone will write in to tell us how awful Stack Overflow is
because they were downvoted, their question was closed, a comment was
deleted, and/or their post was edited. Rarely do we find that someone
was actually mistreated. More often, we find that the person writing
to us has managed to anger a bunch of others users on the site with
their own terrible attitude. I'm tempted to write a "strongly worded"
response in these cases.

Instead, I use one of over a hundred standard emails that was written
and refined over years. Yelling at this sort of person won't make them
better users; they are the definition of lost causes. There's no
chance they are going to become model users, so why waste the
time composing a message?

Our goal with macros is to end the interaction in as few emails as
possible. The best way to do that is to help people get back to
whatever they were doing when they decided to contact us. The worst
way to do this is to start an argument. Having a full stable of macros
saves time since we can trot out pre-written solutions to common
problems. Using them _also_ makes it easy to ignore hostile language
in the ticket and focus on solving the user's underlying problem.


**Next time:** [reducing 3<sup>rd</sup> party tickets]({% post_url 2015-04-08-customer-support-4 %}).


<!--  LocalWords:  Zendesk LocalWords login Shog heyer  wikipedia api
 -->
<!--  LocalWords:  Spolsky's html OpenID unbanned Uber Uber's uber
 -->
<!--  LocalWords:  http quo rds lienient frameborder allowfullscreen
 -->
<!--  LocalWords:  iframe downvoted
 -->
