---
layout: post
title: Cartesian career advice
tags: career
comments: yes
image: /images/pushing_hay.png
---

If you took philosophy in college or knew someone who did, you
probably remember having conversations along the lines of "what if,
you know, everything I observe is just an evil god tricking me?" This
is the [Cartesian
demon](https://en.wikipedia.org/wiki/Evil_demon)^[Turns out it's not
called that , but eventually everything René Descartes wrote about
acquires the name [Cartesian
X](https://en.wikipedia.org/wiki/List_of_things_named_after_Ren%C3%A9_Descartes)
so I might as well get on the train early.] that has haunted more
undergraduates than pop quizzes. But after a few late-night talks, the
demon becomes a memory when we, as they say, touch grass.

[![Rolling hay in
Minnesota.](/images/pushing_hay.png)](https://www.youtube.com/watch?v=26V3aF1uGok)

Of course these days we have a Cartesian demon at our beck and
call. Mine is called Claude and I've been interacting with him fairly
regularly for the last few weeks. This makes me a late adopter and all
the hot takes have been taken. But that's ok because we're going to
have a lot of time with our Cartesian demons and their impact on our
culture. In spite of it all, time is on our side, if we let it.

## Playing _Cribbage_ with my demons

The other day I asked Claude to help me with a _Cribbage_ game I was
playing online. Despite not being specifically trained to play the
game, he did seem to know the rules well enough and gave competent
advice. Or at least he did until my opponent led a king and Claude
warned against playing my 9:

> Right now the count sits at 10 (from the King). Playing a 9 would
> bring the count to 19, but that puts a 10 and a 9 back-to-back in
> the sequence. If the opponent has an 8, they'd play it and score a
> 3-point run (10-9-8). That's a real risk you'd rather avoid.^[Light
> editing to remove pointless natter.]

If you don't know the rules of _Cribbage_ or only vaguely recall them,
that certainly seems like a reasonable precaution. But it's not and I
replied that there was no risk of a run when playing a 9. Claude
answered:

> You're right, and thanks for catching that — I mixed up two
> different things cribbage uses for a card. For pairs and 15s/31,
> face cards count as 10. But for runs, what matters is rank order
> (A-2-3-4-5-6-7-8-9-10-J-Q-K), and there a King is rank 13, way off
> on its own at the top of the sequence. A King and a 9 are four ranks
> apart, so there's no way a single card from your opponent could
> stitch them into a run. I shouldn't have flagged that as a risk —
> that reasoning was wrong.^[Natter left in this time.]

Nice that it agreed I was right and the updated explanation is mostly
accurate.^[Face cards certainly don't count as 10 for pairs and the
"15s/31" phrasing is screwy.] So it sure seems like Claude has learned
and will be better next time. The promise of a machine learning system
is that it can be trained.

But as I played through the game, I kept finding other little
misunderstandings confidently proclaimed by my demon. For instance, it
told me that it didn't matter if I played a Jack or not in a situation
where it was clearly better to play the Jack. Only by linking to [a
tip on the American Cribbage Congress
website](https://www.cribbage.org/NewSite/tips/colvert5.asp) was I
able to convince Claude it was mistaken.

Training requires me to already have a solid grasp of
_Cribbage_&mdash;its rules and strategy&mdash;along with confidence
that my demon is wrong. No doubt I could train my demon to be better
at _Cribbage_ than me, but it would be a long, frustrating road with
no particular destination in the end. I already regularly lose to
better human players on the internet.

## Avoiding learning JavaScript by letting my demons do the work

Now Claude knows^[I'm not actually taking a stance on whether,
philosophically speaking, AIs have the ability to "know" things the
way we do. My guess is that machines can get pretty close to
replicating our brain function, but don't have minds. Whether this is
relevant to you or not depends on whether you subscribe to Cartesian
dualism.] plenty of things better than I do. For instance, it's really
good at downloading a GitHub project and getting all the prerequisites
in place to product running code. Not long ago I'd find an interesting
project and spend half a day discovering it wasn't useful for me. With
Claude's command line tool, I can cut that to half an hour. Even
better, I don't need to acquire even one more JavaScript factoid.

When I was building my consultant business,^[In other words, I was
unemployed.] I built a [Discourse plugin that allows anonymous contact
forms](https://meta.discourse.org/t/contact-form/305462). I'm sorta
proud of how I hijacked Discourse's [incoming email
API](https://meta.discourse.org/t/configure-incoming-email-to-create-new-topics-or-group-messages/62977). Other
than that, it's a plugin written by someone who doesn't want to learn
more about JavaScript than he already does. Unfortunately [the
JavaScript framework that Discourse uses got
upgraded](https://meta.discourse.org/t/deprecating-hbs-file-extension-in-themes-and-plugins/398896)
and [my plugin stopped
working](https://meta.discourse.org/t/case-study-of-an-amateur-plugin-author/402084). The
official suggestion for plugin authors in my situation is to ask [the
Discourse AI](https://ask.discourse.com/). It helped, I suppose. Sadly
I learned a bit more JavaScript and didn't [help future
developers](https://jlericson.com/2014/05/27/what-is-stack-overflow-s-goa.html).

I have sneaking suspicion that developers who actually know JavaScript
will be horrified by [my
code](https://github.com/jericson/discourse-contact-plugin) just as
I'm horrified by Claude's flailing about when it comes to
_Cribbage_. So I decided to make it a little better by [using Claude
to add a few
tests](https://github.com/jericson/discourse-contact-plugin/commit/950a99c58a25dccb0e78759029425f280828e877). That
worked great and I didn't need to add to my meager supply of
JavaScript arcana!

Of course, I can't be sure it's really testing anything, so asked a
different Claude^[This is another difficulty with training my
demon. He keeps dying and getting replaced with another demon that
forgot everything I told it. Still, it's handy to get a second opinion
sometimes.] to tell me what the first Claude's tests did. It verified
the first Claude wrote good tests and suggested [a couple more things
to
test](https://github.com/jericson/discourse-contact-plugin/commit/542867bd9dc189c3c10d5547da8c6edfc402af81). Sadly
those tests failed in CI and I had to ask yet another Claude to [clean
up the
mess](https://github.com/jericson/discourse-contact-plugin/commit/bfe33f8268a9ee0d74887fceddfb36022bcd5d5a). Having
learned my lesson, I'm ignoring further advice from my evil demon to
avoid learning JavaScript.

## Wasn't this supposed to have career advice of some kind?

It turns out LLM technology [writes decent
code](https://jlericson.com/2023/03/29/coding_ai.html). Logically that
makes coding a less valued skill in the modern job market. During [my
forced sabbatical](https://meta.jlericson.com/t/jubilee/323) a friend
asked for some help building a website. One option was to ask someone
on Upwork or Fiverr to build something. I volunteered to build a
[minimum viable product
(MVP)](https://en.wikipedia.org/wiki/Minimum_viable_product), which
turned out to be a lot harder than planed. If he were to ask today,
I'd recommend he employ an evil demon.

If an eager student asked me about joining the ranks of software
developer, I'd start by warning the job will soon be maintaining code
written by LLMs for people who don't know much about coding and don't
care to know more. People, in other words, like me. That might sound
ok, but remember the people who use evil demons to code also probably
trust them to some degree. The job, even more than it is now, will be
to a rock-solid understanding of the craft and to demonstrate you can
solve problems effectively.

Since LLM demons know all sorts of arbitrary things and since it's in
their nature to please their humans, virtually every career choice
will require demonstrating superior understanding of the
craft. Programmers might have it easy compared to people who must
employ "soft skills". Everyone, to a degree, can be a community
manager with the help of an AI demon. There is no easy test to prove
my approach is more effective than one suggested by a model powered by
all the words on the internet.

So my career suggestion for the new world we face is the same as
[Descartes'](https://en.wikipedia.org/wiki/Cartesian_doubt). We must
expose our opinions to doubt and tear down our own assumptions. And
then, with greater understanding of the fundamental principles of the
field, rebuild our mental models. And we must be prepared to do that
over and over, refining our craft and responding to new input. Then,
and only then, will our demons be time-saving devices rather than
distractions.
