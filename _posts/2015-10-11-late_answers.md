---
layout: post
title: My Adventure with Late Answers
comments: yes
tags: community
---

![Stack Overflow is . . . rude](/images/SO_bad.png "Stack Overflow is . . . rude")

Last week, I finally got around to analyzing
[a change](https://meta.stackexchange.com/q/266696/1438) to the Late
Answers review queue.  For those who aren't familiar with Stack Exchange,
[review queues](https://stackoverflow.com/help/privileges/access-review-queues)
give experienced users a chance to look over posts from new users for
problems that can be corrected or hidden gems. The later is
particularly important for answers that come over a month after a
question was asked, since those answers often get ignored. Increasing
the pool of new users eligible for consideration seemed like a good
way to combat the commonly-held perception that Stack Overflow is
rude.


[![My motto is "Move fast and break things."](https://imgs.xkcd.com/comics/move_fast_and_break_things.png "I was almost fired from a job driving the hearse in funeral processions, but then the funeral home realized how much business I was creating for them."){: .wrap}](https://xkcd.com/1428/)

My main concern was that by adding more reviews, we might get into a
situation where more answers were being added to the queue than the
reviewers could handle. That can be a problem since ever-growing
queues
[demoralize reviewers](https://meta.stackoverflow.com/q/255270/1438). So
most of my analysis was geared toward predicting how many extra tasks
my change would create. By my estimate, it would add roughly 300 tasks
a day on Stack Overflow and maybe a dozen on other large sites. Given
Stack Overflow users review tens of thousands of posts a day, these
numbers seemed manageable.


Site Name      |  New Tasks
:------------- |  --------:
Stack Overflow |        314
Super User     |         13
Server Fault   |          9
Apple          |          7
Gaming         |          5
Ubuntu         |          4
All others     | 3 or fewer

After this analysis, I consulted a colleague and decided to just
change the site setting and see what happens:

[![4.4k Late Answers](/images/big_queue.png)](https://meta.askubuntu.com/q/14469/173605 "4.4k Late Answer reviews")

So my estimate was about 4 _orders of magnitude_ wrong. With a single
change of a variable, I'd increased this site's outstanding reviews 10
fold. And I'd made the change on every site on the network. Not only
that, but there is no easy way to remove review tasks except by, well,
reviewing them. I'd managed to inadvertently create a bunch of work
for thousands of people. My immediate reaction was panic.

Then I got down to business figuring out what had happened. It quickly
was clear that the change picked up late answers that were older than
a day. Initially, I thought the code was only picking up a month's
worth of posts (more on this later), but comments on
[my answer](https://meta.stackexchange.com/a/267080/1438) fixed my
misunderstanding. In fact, the change put _all answers ever_ that fit
the new criteria up for review.

Meanwhile, I'd notified the network's moderators of the change and,
thanks to their encouragement, featured the meta post describing the
change on the sidebar across the network. Many sites had already
started
[noticing the change](https://stackexchange.com/filters/205229/late-answers)
and answering the meta questions became an addition task for
moderators and involved users. I couldn't keep up with those posts,
but
[looking back a week later](https://www.google.com/search?q=site:meta.*.stackexchange.com+"late+answers")
it's gratifying to see so many informed (and considered) answers from
other users.

Also meanwhile, people were working hard to remove tasks from the queue:

![Ubuntu Late Answer reviews completed.](/images/ubuntu_reviews.png "Spike in completed reviews.")

This activity is on [Ask Ubuntu](https://askubuntu.com/), but I could
show similar charts from all sorts of sites. Traditionally, Late
Answers tend to be a backwater of the review queues, so the sudden
spike was a rare opportunity to earn badges for that queue. The week
before my change, there were 5 Custodian badges&mdash;the bronze level
for doing just one review. In the following week:

Badge    |Queue      |Awarded 
:--------|:----------|------:
Custodian|Late Answer|      6
Reviewer |Late Answer|      7
Steward  |Late Answer|      1

The [Steward badge](https://askubuntu.com/help/badges/126/steward)
requires 1,000 Reviews, which is pretty hard to accomplish when there
are only 300 or so a week divided among hundreds of interested users.

As the initial crisis began to die down, I started to wonder why Stack
Overflow hadn't exploded.  The answer, which I'd noticed in the code
before starting research:

    (Current.Site.IsStackOverflow ? "and p.CreationDate > GETUTCDATE() - 7" : "")

So I was saved by a special case that was, no doubt, built in for just
this purpose. On Stack Overflow, the code does not consider answers
older than a week, so it only spiked to 1500 or so. Why did I think
the code looked back 30 days? I don't really know, but I think I got
that from the definition of a "late answer": 30 days after the
question was asked.

## Lessons learned

1. **Reading the code is no substitute for testing.** Well, I've known
   this for _at least_ 20 years. But thanks to my high self-esteem, I
   need to relearn this yearly, it seems. We have a development
   environment which would have been a perfect place to discover that
   the queue was going to spike, if only I'd thought to try there
   first. Alas, I did not so think.

2. **If you are about to make a change that might effect thousands of
   other people, you might want to test it first.** The bit I didn't
   consider was that people don't just see the number of outstanding
   reviews when they go to the review page. The number _also_ gets
   displayed for people with 500+ reputation on the top bar visible on
   every page on the site. So plenty of people noticed even if they
   don't make a habit of reviewing.

3. **Don't make a dramatic change if you can make several small
   changes instead.** Many of the comments/forceful suggestions I
   received in the aftermath of my fateful change hinted that a more
   controlled increases in reviews would have eased the concern people
   had. There were any number of ways I could have
   [boiled the frog](https://conservationmagazine.org/2011/03/frog-fable-brought-to-boil/),
   but the easiest would have been to increase the reputation limit in
   increments of 5 or 10 followed by quiescence until we reach the
   desired limit. The thought never crossed my mind.

4. **Even if you plan to make a change no matter what, it helps to
   notify people in advance.** Obviously, _knowing_ the actual impact
   of the change is a prerequisite to announcing a coming change. But
   if I'd known, I still would have wanted to increase the Late Answer
   pool. Obviously, I couldn't ask _everyone_ who has a
   stake. However, it would be good to let the moderators know what to
   expect at least a few hours in advance.

## Future work

I'd really like to see about increasing the reputation level
to 100. But before I do that, I really should take advantage of the
natural experiment created by the change to 50. How did people handle
the flood of late answers? Overall, did we find hidden gems or just
superfluous answers? In the weeks to come, will people who benefited
from upvoted answers in this queue tend to contribute more and better
answers? Or has the feedback come too late? 

<!--  LocalWords:  LocalWords http png https xkcd chatroom ubuntu
 -->

<!--  LocalWords:  GETUTCDATE CreationDate IsStackOverflow
 -->
