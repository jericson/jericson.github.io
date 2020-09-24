---
layout: post
title: Reacting with 'thanks'
tags: community design features
comments: yes
---

In a [previous post](https://jlericson.com/2020/06/22/welcoming.html),
I listed a number of changes to Stack Overflow intended to make the
site more welcoming. I noted that they didn't do much to change the
intrinsic motivations that prompt people to participate. The most
recent feature, the ["thanks"
reaction](https://stackoverflow.blog/2020/06/17/saying-thanks-testing-a-new-reactions-feature/),
fails even to engage [extrinsic
motivation](https://jlericson.com/2010/03/16/motivation.html):

> Call me old-fashioned, but upvoting and accepting an answer seems
> like thanks enough. My #1 concern about this feature since I first
> heard about it almost a year ago is that it risks reducing upvotes,
> which is one of the stronger positive reinforcements.  ![Popup
> prompting me to say thanks to the person whose answer I accepted and
> upvoted.](https://pbs.twimg.com/media/EazrPxcUYAAS-JZ?format=png&name=360x360)
>
> &mdash; Jon Ericson (@jlericson) [June 18, 2020](https://twitter.com/jlericson/status/1273653468037705730)

Now that's a little unfair. The actual point of the feature is to be a
["clutter-free way to say
thanks"](https://stackoverflow.blog/2020/06/17/saying-thanks-testing-a-new-reactions-feature/):

> We've heard from our users that the inability to say "thank you" is
> frustrating—especially for new users who don’t have enough
> reputation to upvote or comment. Even when users gain these
> privileges, they still want to say "thanks."

In addition, Teams has had an expanded form of this feature since the
end of last year:

![Teams has 4 reactions: celebrate, SOS/help, thanks and
100.](/images/team_reactions.png)

It's loosely based on reactions on other platforms, such as Slack and
Facebook. For a team, these reactions serve an important purpose:
[they let people on your team know you saw the
information](/2020/03/09/remote_tips.html#respond-with-emoji-to-acknowledge-receipt). I
admit I'm not fully onboard with newfangled emoji (emoticons for life
;-), but I have grown fond of them as lightweight signal. Systems that
let you use random images as reactions are especially wonderful
because they allow for inside jokes. And what could be more glorious
than that?

A moment's thought should make clear why letting people use their own
custom images for reactions is a bad idea on a public site. The only
reason you don't see phallic images in Slack is because of the threat
of an HR complaint.[^1] So it's clear why reactions are somewhat
limited on Teams and reduced to just "thanks" on the public
site. Unfortunately, this isn't the only potential problem moving the
feature from [private Teams to public
Q&A](https://stackoverflow.blog/2018/05/23/how-stack-overflow-for-teams-fits-into-the-community/).

From reading the announcement, the "thanks" reaction is intended to
solve the problems of:

* noisy "thanks" comments,
* new users lacking a way to show appreciation and
* the perception that Stack Overflow is a harsh environment.

A private team isn't likely to have these problems because:

* comments from people you know are less likely to be noisy
* everyone can vote in Teams without having to earn reputation and
* an organization's Q&A site will reflect the existing culture.

So it's certainly good to start testing the feature before committing
to it. But the test isn't a test of the _functionality_ but of [two
icons to represent
"thanks"](https://meta.stackoverflow.com/q/398367/1438):

![Clap on the left and pray on the
right.](https://i.stack.imgur.com/kMXts.png)

[Further communication](https://meta.stackoverflow.com/q/398909/1438)[^2]
clarified that the team is watching other effects, such as impact on
voting. Which is good.

Unfortunately, the rollout of the reaction feature happened and people
made up their minds about the feature long before the necessary
background was provided. In fact, it feels more like a rush to get the
feature into production days before the end of the second business
quarter rather than a well-considered feature launch. It came across,
to me at least, an attempt to show progress on the welcoming intuitive
without taking into account what the community might make of the feature.

As it happens, College Confidential is facing a similar problem. We
recently added our chatbot, named Kai, to [our school
pages](https://www.collegeconfidential.com/schools/):

![Kai chatbot](/images/kia.png)

Kai was ported over from [The College Fair
app](https://thecollegefair.com/), which we also own. In the context
of a phone app for students, it functions perfectly well. But when we
moved it to a website it wasn't designed to support, at least one
visitor found it inappropriate. We've also seen the primary use hasn't
been getting help with sorting out college options, but trying to do
administrative things, like change email address, on the site.

Now we can start fixing these problems and we only implemented it on a
few places, but the benefits of the chatbot have been lost, probably
permanently, on the people who saw it in its current state. You see it
made a user experience promise (to fix the user's login problem) that
it couldn't deliver on. Life is too short to click on buttons that
have disappointed in the past. That's a shame because it could be a
_very useful feature_ in the future. And the same with reactions on
Stack Overflow. They could be amazing, but it's very likely some
people (including me) won't use them.

Ah! But this feature _isn't for Meta users_. It's for those people who
haven't yet earned their way into the exclusive club of people who can
comment and vote on Stack Overflow. To which I say: "Huh?" Because
every other feature on Stack Overflow is designed to grow with the
user. Users don't stop commenting when they earn the right to vote or
edit without review. In fact the site expects people who are engaged
in the community will do more things (per user) than people who have
just taken their first step.

Ultimately the "thanks" reaction, as it now stands, lacks integrity. I
don't mean it's lying, though it definitely is since odds are good the
author won't see who thanked them in the majority of cases. Instead I
mean it doesn't have a place in the larger whole that is Stack
Overflow. Reactions on Teams, where people have a better chance of
getting the message, has a place. On public Q&A it, well, it satisfies
the people who feel left out of the other mechanisms of appreciation I
suppose. Otherwise it's just another icon on the screen distracting
users from whatever it was that brought them to the question.

<!--From the discussion, it seems the test will be measuring impact on
comments and comment moderation.[^2] That's good, but what about
voting? Take a closer look at my screenshot:

![Popup prompting me to say thanks to the person whose answer I accepted and upvoted.](https://pbs.twimg.com/media/EazrPxcUYAAS-JZ?format=png)

The thanks button is just below the "accepted" checkmark. Since I
asked the question, I'm the only person in the universe who can accept
one of the answers.[^3] So the very best way to say "thanks" is to
accept the answer. The next best way, is to [upvote
it](https://stackoverflow.blog/2011/01/08/how-to-say-thanks-in-an-answer/). Unlike
upvoting, accepting an answer never requires reputation. So a new
asker should be prompted to accept answer rather than "thank" it.

When I was working at Stack Overflow, I increasingly felt like Richard
Feynman trying to answer why magnets work:

<iframe width="560" height="315"
src="https://www.youtube.com/embed/36GT2zI8lVA" frameborder="0"
allow="accelerometer; autoplay; encrypted-media; gyroscope;
picture-in-picture" allowfullscreen></iframe>

In order to understand why 


Facebook was a pioneer when it comes to
[reactions](https://en.wikipedia.org/wiki/Facebook_like_button). Maybe
you remember from _The Social Network_ when Jesse Eisenberg ran across
the quad in sandals because he just figured out relationship
status. And later in the movie, Andrew Garfield got into an argument
with his girlfriend, played by Brenda Song, because her character
didn't believe the CFO of Facebook didn't know how to change his
relationship status. If you want people to feel good about their
experience on a site, the number one thing you can do is provide
meaningful shared experiences. On Stack Overflow, that means [answers
to questions, votes, comments and
edits](/2018/06/20/encourage_second_questions.html).

Do you remember the [poke
feature](https://en.wikipedia.org/wiki/List_of_Facebook_features#Poke)?
What about [SuperPoke!](https://en.wikipedia.org/wiki/SuperPoke!)? To
the extent these features worked, it was because friend groups made up
meanings for these actions. The last poke I got was from a
co-worker. I honestly didn't know how to respond. Do you poke back?
Did he want me to post on his wall? Should I go over to his desk and
make sure everything was ok? 

-->

---

Footnotes:


[^1]: Come to think of it, it's possible some of my readers work at
    really terrible companies. How can I be sure this _isn't_
    happening?

<!--

[^2]: After year of this [not being a
    priority](https://meta.stackexchange.com/questions/204402/hide-trivial-comments),
    I am pleased to see some work done in that direction. Only, I'm
    not really feeling the commitment to reducing noisy comments as
    much as making a symbolic gesture.
    
[^3]: For
    [better](https://stackoverflow.blog/2009/01/06/accept-your-own-answers/)
    or
    [worse](https://meta.stackexchange.com/questions/261817/how-do-we-encourage-edits-to-obsolete-out-of-date-answers#comment853773_261817).
-->

[^2]: I spent long enough working on this post that a good deal of
    what I had to say was overtaken by events. Just as well. I seem to
    have misread the situation from the initial announcement.
