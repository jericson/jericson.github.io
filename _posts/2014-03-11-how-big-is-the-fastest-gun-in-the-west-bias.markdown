---
layout: post
title: How big is the Fastest Gun in the West bias?
tags: meta-post fastest-gun
license: http://creativecommons.org/licenses/by-sa/3.0/
author: <a alt="Jon Ericson" href="http://meta.stackexchange.com/users/1438/jon-ericson">Jon Ericson</a>
---

(Originally published on
[Meta Stack Exchange](http://meta.stackexchange.com/q/225033/1438).)

One of the earliest phenomena noticed in Stack Overflow's voting
system is the
[FGITW problem](http://meta.stackexchange.com/questions/9731/fastest-gun-in-the-west-problem):
the first answer is more likely to get upvotes than subsequent
answers.  Even if later answers are objectively better, the first
answer forms a
[bandwagon](http://en.wikipedia.org/wiki/Bandwagon_effect) that
collects more votes than it otherwise would.  (One of my earliest and
most upvoted answers
[falls victim to this](http://stackoverflow.com/a/59871/1438)... sort
of.) The bias seems well known, but I haven't seen anyone actually
measure it.

How much does it cost to be the second person to answer a question
rather than the first?

# [My Answer](http://meta.stackexchange.com/a/225034/1438)

I decided to look at all questions with exactly two non-negatively
scored answers.  The first answer is declared the fastest gun and the
second answer's score is subtracted from the score of the first.
Assuming there's no other systematic reason the first answer should be
qualitatively better[^1], the difference measures the bias.
Obviously, the bias isn't really a problem when answers are months or
years apart; nobody answering
[this question](http://stackoverflow.com/q/11227809/1438) today can
hope to get the top answer in any reasonable timeframe.  Indeed, if
you look at answers a month apart, noise obscures the bias pretty
thoroughly:

[![Delta between first and last answer by hour difference up to one month.](http://i.stack.imgur.com/COQk3.png)](http://data.stackexchange.com/stackoverflow/query/173862/difference-in-score-by-delay-between-answers#graph)


The horizontal axis is the hours separating the answers from 0 to one
month.  Yellow is the average score of the first answer and blue is
the score of the answer provided `x` hours later.  Red is the
difference between the earlier and later answers.  (The image is
linked to the query I used to generate the graph.) If you take the
average delta over this period, the first answer has about a quarter
of a vote advantage.  But the data is also very noisy the further
apart answers are separated in time.  There's good reason for that:
the scale of the FGITW problem is minutes and seconds, not hours and
days.

[![Delta between first and last answer by minute difference up to four hours.](http://i.stack.imgur.com/Gotmd.png)](http://data.stackexchange.com/stackoverflow/query/173861/fgitw-effect#graph)

This version shows answers separated by minutes up to 4 hours.  Again
there is a lot of noise on the right side of the graph[^2],
but the FGITW effect is quite clear on the left side.  While the
effect is small, it starts at less than a minute difference, reaches
maximum effect at about 2 minutes, and more or less disappears by half
an hour.  The average over 1 to 5 minutes (which is when the bias is
most noticeable) turns out to be a
[0.43](http://data.stackexchange.com/stackoverflow/query/173863/how-much-does-losing-a-duel-cost)
score delta.  Assuming no downvotes, that works out to a little over 4
reputation points per question answered.  Over many answers, the bias
adds up.

----------

I hope I've convinced you that the bias is real and significant.  Now
I want to argue that we probably don't need to worry about it nearly
as much as we have.  As I looked at the data, the sort of remarkable
thing I noticed is that the advantage of being first doesn't really
increase the later the second answer gets.  Indeed, if you average
over all time (by removing the `and datediff(minute, f.CreationDate,
l.CreationDate) between 1 and 5` clause), the difference between first
and second answer is 0.47.  Intuitively, we'd expect an answer posted
3 years after a question is asked would never catch up.  Answering an
old, answered question draws more votes to the existing answers
thereby compounding the first-answer advantage.

For
[popular questions](http://stackoverflow.com/questions/greatest-hits),
that's likely true.  But for the vast majority of answers, the
half-vote disadvantage ought to be overcomable with a superior answer.
For questions with a thousand or fewer views, the bias drops down to
0.35[^3]. For
[long-tail questions](http://blog.stackoverflow.com/2011/01/the-wikipedia-of-long-tail-programming-questions/),
there's no reason _not_ to write a "second opinion" if you have one.

Meanwhile, there's real value in providing an answer to a programming
question a few minutes earlier.
[Task switching](http://www.joelonsoftware.com/articles/fog0000000022.html)
has a real cost and there's something to be said for providing an
answer to a programmer's question as quickly as possible.  And we've
completely ignored the risk of answering quickly: misreading the
question, getting a few quick downvotes, and having your answer
deleted as "not an answer". The gunslinger lifestyle is hard, fast,
and dangerous.  Only the best survive long.

----------

[^1]:

    This may not be an accurate assumption.  There's good evidence
    that top programmers are good, nay excellent, at all aspects of
    the job&mdash;including
    [typing](http://steve-yegge.blogspot.com/2008/09/programmings-dirtiest-little-secret.html).
    If you add in a few other factors like being able read code more
    quickly and recall off the top of their heads the quirks of a
    programming language, the bias I measure may be overstated.

[^2]:

    It would help to use a [log time scale](https://xkcd.com/1162/).
    But those are awkward and we really only care about the left side
    anyway.

[^3]:

    Obviously this isn't _entirely_ fair.  Throwing out the most
    popular questions also tosses away some heavily voted answers.
    But my point is that you don't have to try answering popular
    questions if you are worried about the FGITW.  Answering slightly
    more obscure questions can be both valuable to human knowledge and
    rewarding in terms of reputation.

<!--  LocalWords:  http stackexchange LocalWords
 -->
