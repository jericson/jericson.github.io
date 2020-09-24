---
layout: post
title: Ignoring others for community peace
tags: design community
comments: yes
---

Something people don't always appreciate is that relationships don't
scale linearly. In a family of 5 there are 10 possible
relationships. In a group of 50 there are 1,225[^1]. And there are
124,750 possible relationships within a group of 500. One reasonable
explanation of [Dunbar's
number](https://www.bbc.com/future/article/20191001-dunbars-number-why-we-can-only-maintain-150-relationships)
is that group cohesion requires people to comprehend not only our
relationships with other individuals, but also some understanding of
how two random people we know interact with each other. Otherwise we
risk inadvertently stirring up disagreements between others.[^2]

So we need ways to simplify the relationships within large groups. The
military uses rank and specialization. A soldier doesn't need to know
anything about the personality of the officer in charge to know the
proper way to relate to them.[^3] Other organizations have other
simplification systems that help people get through their days without
burning excess emotional energy figuring out how other people will
respond.

Online communities might seem egalitarian, but until you [think about
how moderation works](/2020/09/15/cc_moderation.html). Whether
formally organized or not, online communities naturally give
preference to people who have been around longest and contributed the
most. Just showing up and participating counts for a lot. From time to
time two really active users get on each other's nerves for whatever
reason. This is tricky situation for moderators since this is the sort
of thing that can split a community and it's uncomfortable to be
required to pick sides between two established members.

Enter **the ignore feature**. In an intimate setting ignoring someone
else is typically not a good idea. On a site with hundreds of active
users, it's sometimes necessary. You might be familiar with mute and
block on Twitter and Facebook. An ignore function on forums works
something like that. It's a sort of [Ulysses
pact](https://en.wikipedia.org/wiki/Ulysses_pact) allows you to spend
time in the same space as someone who irks you without the danger of
getting into fights. Or that's the theory at least.

How the ignore feature gets designed matters quite a bit, as it turns
out. The community I manage is currently on [Vanilla
Forums](https://www.g2.com/products/vanilla-online-community/reviews/vanilla-online-community-review-4383827)
and I've seen grown adults who have proven to be productive members of
the community act like
[Trixie](https://fairlyoddparents.fandom.com/wiki/Trixie_Tang)
here[^4]:

<iframe width="560" height="315"
src="https://www.youtube.com/embed/82zuzS5PCiM" frameborder="0"
allow="accelerometer; autoplay; clipboard-write; encrypted-media;
gyroscope; picture-in-picture" allowfullscreen></iframe>

Now I'd heard rumblings that ignoring people on Vanilla wasn't very
effective. For instance, a person you ignore can still like your
posts.[^5] So I thought I'd try the feature out myself. I created a
new account and pretended that it was from rabid USC fan. (I went to
UCLA and there's a cross-city animosity between the two schools.) I
decided I didn't want to see anything from the user who wrote this
post:

![A post on Vanilla from someone I want to
ignore.](/images/vanilla_ignore_post.png)

10s4life is actually a UCLA Forum Champion and a well-respected member
of the community. I'm doing this _for science_ using a test
account. This account is a brand new member who has done nothing on
the site so I wasn't sure it would even be possible for them to ignore
another user. But it turns out they can if they know where to look:

![The ignore function on
Vanilla.](/images/vanilla_ignore_function.png)

It's odd that new users can ignore almost[^6] anyone, including
moderators. I suspect new users won't often stumble on the feature,
which is kinda hidden. Since I _have_ found it, let's discover what
the feature does:

![Are you sure you want to ignore (the
user)?](/images/vanilla_confirm_ignore.png)

That popup is profoundly unhelpful. For one thing, it's not clear why
it exists. The implication is that ignoring someone is a momentous
decision that might not be possible to reverse. It's incredibly easy
to unignore someone. Just go to their profile and find the "unignore"
switch exactly where the "ignore" switch was before. So it's unclear
why there's another button to press.

For another, this is the developer's chance to explain the way the
ignore feature works and they whiffed. Perhaps the consequences of
ignoring someone aren't explained because it hardly does anything at
all. Here's the post I showed earlier from a person I've ignored:

![A post on Vanilla from someone I've
ignored.](/images/vanilla_ignore_post.png)

I cheated. it's the same screenshot from before since there's no
change to show. Threads started by people you ignore aren't in any way
hidden or deemphasized. They still show up as normal on the category
page too:

![The UCLA category with many threads from someone I've
ignored.](/images/vanilla_ignore_category.png)

At this point, I should mention that most of what I know about the
ignore feature I learned from experimentation and reading [the
code](https://github.com/vanilla/vanilla/tree/master/plugins/Ignore). The
[documentation](https://open.vanillaforums.com/addon/ignore-plugin)
consists of five sentences. Only by reading the code did I discover
the route to a list of people I've ignored. It's minimally
documented. I could very well be missing something, but it doesn't
seem like reading the code should be necessary.

Ok, so what does ignoring someone actually do? Well, it does hide _replies_:

![A reply on Vanilla from someone I've
ignored.](/images/vanilla_ignored_reply.png)

So you can see there was a reply and that it was someone you've
ignored, but you can't read the reply _unless you click on the
reply_. That's right: ignoring a user just makes their replies more
mysterious. It's a fun little game where you see a thread with a reply
from someone you frequently argue with and you get to guess what
horrible thing they might say. Whether or not you reveal the text of
the reply, it doesn't feel like ignoring that person is a good way to
avoid them.

---

Let's look at Discourse by comparison. To start, it has [excellent
documentation](https://meta.discourse.org/t/ability-to-ignore-a-user/110254). My
main quibble is that there's been work done on the feature that isn't
reflected in the screenshots. I grabbed my own to show how replies
from ignored users look on Discourse:

![Ignored reply on Discourse](/images/discourse_ignored.png)

It's a hidden reply from . . . someone for some reason. Yes, you can
click it to unhide the reply, but why would you? It's a very subtle
clue that part of the discussion is missing in the off-chance
something has been confusing. A nice touch is that there are _other_
ways to hide replies (such as filtering just the replies from the
topic's original poster) so you don't automatically assume it's a post
from someone you ignored.

This is a system that has nuance. Want to ignore someone for a few
days because of their comments on recent events? Want to mute a user
so that you stop getting notifications from them (but can still read
their posts)? Can't remember who all you've ignored? Need to limit
personal messages to a select group of people? These are all options
Discourse allows.

What's more, administrators have access to a report showing who has
been ignored or muted most. It's like an early warning system for
problems. Ultimately, people ignoring each other harms the
community. 

I started by talking about how each relationship represents a
potential conflict. At its core, every community consists of an
interconnected web of relationships. Each relationship also represents
a potential for kismet. You never know when people might come together
by chance to do something amazing. If too many people ignore each
other, it's like a lobotomy for a community. Ignore with caution.

---

Footnotes:

[^1]: For those who are curious, the formula is `n(n-1)/2`, which is
    the same as [the number of lines connecting `n` noncollinear
    points](https://math.stackexchange.com/questions/185633/formula-for-number-of-lines-you-can-draw-through-n-points/185644#185644).
    
[^2]: We can make some approximations, though. A common one: avoid
    talking about religion, politics or whether the Star Wars prequels
    are technically "movies".

[^3]: Ever notice how stories set in military situations make use of
    these conventions? We instinctively know how people in the
    military behave, which helps storytellers skip exposition or
    develop characters who play against type.

[^4]: The descpription of the video has a vaguely sexist description,
    but let me assure as a man with three brothers and two sons, this
    is not gendered behavior.

[^5]: It took me a good long time to actually discover you can see who
    likes your posts. But apparently people do check and they do feel
    afront when some they are ignoring shows up on that list. And you
    can bet that some people who don't have the best intentions like
    posts from people they don't like in order to troll them. It's
    sorta a mess.

[^6]: Staff, which includes community managers, admins, editors and
    developers, are the sole exception.
