---
layout: post
title: Why do people answer questions on Stack Overflow?
tags: community
comments: yes
---

When I tell people I work for a Question-and-Answer site, they tend to
assume my job involves answering a bunch of questions. When I explain
that our users provide the answers themselves, capitalist-types want
to know how much answerers get paid. When I explain they are strictly
volunteers, the exasperated followup becomes:

> Why do they _do it_ then?

To explain, let me borrow the
[Four Currencies framework](http://www.fortressofdoors.com/piracy-and-the-four-currencies/)
from the realm of independent game development:

1. Money `$M`
2. Time `$T`
3. Hassle `$P` (for "pain in the butt")
4. Integrity `$I`

Money and time are currencies most people understand. I spend 40 hours
a week `$T` in exchange for money `$M` from my employer. Later, I use
that cash `$M` to buy goods and services that were produced by other
people's labor `$T`. But we know there are other sorts of currency
because we have first class travel (trading `$M` to reduce hassle,
`$P`) and volunteerism (trading `$T` for some amorphous thing we're
going to call "integrity", `$I`).

So the solution to the "why do people answer" paradox is they give
their time `$T` in order to get the satisfaction of helping others and
sharing knowledge `$I`. Not everyone would make that trade, but
hundreds of thousands of programmers do on Stack Overflow. Most of
them are working programmers who just happen to have a bit of downtime
in their work schedule and
[enjoy solving bit-sized problems](http://meta.stackexchange.com/a/17406/1438).
Now, some people answer in order to gain skills they can use to
[get a better job](http://stackoverflow.com/jobs). And there are
companies who hire programmers to answer questions as part of a
broader developer relations strategy. But those are relatively rare
edge cases.

You might suppose some of these altruists would be lured away by
rich-paying consulting gigs. Maybe some are, but I suspect most
programmers are put off by the hassle `$P` of finding and satisfying
clients:

<iframe width="560" height="315"
src="https://www.youtube.com/embed/BKorP55Aqvg" frameborder="0"
allowfullscreen></iframe>

Stack Overflow works by minimizing the hassle and time costs of
answering questions while simultaneously increasing the `$I`
benefit. We don't use obnoxious ads or hide content behind paywalls
because that wastes people's time, increases their aggravation and
decreases the value of the knowledge users share. Millions of
programmers (probably close to all of us) use Stack Overflow to find
solutions from previously asked questions. So if you answer a
question, you are helping many people in addition to the original
asker. That just feels good.

---

A less obvious, but no less interesting:

> Why do people _ask questions_ on Stack Overflow?

Consider this entirely theoretical matrix:

Strategy           | Money `$M` | Time `$T` | Hassle `$P` | Integrity `$I`
:------            | ----: | ---: | -----: | --------:
Search Google      |     0 |    1 |      1 |         0
Find own answer    |     0 |   50 |      5 |       -50 
Ask a co-worker    |     0 |    5 |      5 |         5 
Hire a consultant  |    10 |   10 |      1 |         0
Ask Stack Overflow |     0 |    5 |      ? |         ?

The numbers are made up and depend on the sort of person pursuing
answers. But this rough estimate illustrates the economic reason for
Stack Overflow questions. The best strategy when you have a
programming problem is to search for the solution already posted
somewhere on the internet. (Before Stack Overflow, the time and hassle
costs of searching were greater than they are now, by the way.) But if
the answer doesn't exist or you aren't using the right search terms,
you gotta switch to a new tactic.

Finding your own answer tends to be time consuming, involves some
hassle, but does make you feel pretty good about yourself (assuming
you succeed). You can also ask the programmer in the cubicle next to
you who may very well know the answer off the top of her head. That
saves time, but can also be a bit of a hassle and
([should](http://www.joelonsoftware.com/articles/fog0000000022.html))
impose a small integrity cost for bothering her. Or you might throw
money at the problem and hire a consultant.

Notice that you need to pay these costs _even if you don't get a
usable solution_. If you spend a day trying to solve it on your own,
you don't get those hours back. Same thing with bothering your
co-worker. Also, notice that I don't specify the hassle or integrity
cost of posting a question because that's highly individual. If you
don't mind bugging some stranger online, the cost can be very low. It
could even beat the cost of asking the person sitting next to you in
some cases. So for many programmers, asking Stack Overflow has a
pretty low cost.

---

Now we can get back to the _detailed_ answer of why people answer
questions and, just as importantly, why they stop. People will answer
questions as long as is relation holds:

    $T + $P < -$I

(The signs get confusing. Time and hassle are the costs an answerer
pays in order to gain "integrity". In keeping with the rest of the
notation in this post, `$I` is a cost, so `-$I` is a gain.)

There are _many_ factors that influence those variables. When Stack
Overflow was in beta, the only real `$T` cost was researching
answers. But as the site has grown, more and more time is spent
searching for interesting questions. Partially, that's because so many
of the good questions have already been asked and answered. The bigger
reason is so many programming problems appear more complicated than
they are. Consider this bit of pseudocode:

    print "Start the awesome!\n;
    get_input();
    do_awesome();
    print_output();
    print "Super awesome!\n";

Experienced programmers usually spot the problem immediately, but
beginning programmers might not find it for several minutes. And if
the code is part of a thousand line file, only the
compiler/interpreter of the language will find it:

    test.rb:5: syntax error, unexpected tCONSTANT, expecting end-of-input
    print "Super awesome!\n";
                ^

That's the error Ruby gives me. It's not exactly the most newbie
friendly thing I've read. The error is on line 1 (there should be a
`"` just before the `;`), but the interpreter doesn't know that until
it gets to line 5. I can guess what
["unexpected tCONSTANT" means](http://stackoverflow.com/a/7317408/1438),
but the phrase is confusing.

Let's see what Perl has to say about the code:

    Bareword found where operator expected at test.pl line 5, near "print "Super"
      (Might be a runaway multi-line "" string starting on line 1)
    	(Do you need to predeclare print?)
    String found where operator expected at test.pl line 5, at end of line
	    (Missing semicolon on previous line?)
    syntax error at test.pl line 5, near "print "Super awesome"
    Can't find string terminator '"' anywhere before EOF at test.pl line 5.

Miss one little quotation mark and you get six lines of error
messages?! To be fair, the problem is explicitly called out on the
second line, but how many people know what a `runaway multi-line ""
string` might be? Forgetting to close a quotation is one of a few
dozen failure modes that programmers learn just by making
mistakes. The first time you answer a question like this, you feel
good about helping the next generation. But then you see the same
mistakes over and over again (with error messages just different
enough to prevent good searching) and it gets tedious.

In addition to the `$T` cost, the `$I` benefit tends to be reduced as
well. Once you've fought through the basic pitfalls, you tend to think
other people should learn through experience as well. Even in the
workplace, I've been frustrated with less-experienced programmers who
have (unknowingly) asked the same question several times without
learning the general pattern. At some point, it feels less like you
are helping out and more like you are enabling a bad habit. On Stack
Overflow, the problem is more acute because of volume.

And then there's the hassle `$P` associated with dealing with people
who don't understand the rules of the community. From the perspective
of new users, hurdles such as closing questions and
[downvoting](http://jericson.github.io/2015/05/18/downvotes.html) seem
to extract an enormous `$P` toll. But they often protect the community
from a threat Clay Shirky
[wrote about](http://www.shirky.com/writings/herecomeseverybody/group_enemy.html):

> You need barriers to participation. This is one of the things that
> killed Usenet. You have to have some cost to either join or
> participate, if not at the lowest level, then at higher
> levels. There needs to be some kind of segmentation of capabilities.
>
> . . .
>
> I think we've all been to meetings where everyone had a really good
> time, we're all talking to one another and telling jokes and
> laughing, and it was a great meeting, except we got nothing
> done. Everyone was amusing themselves so much that the group's goal
> was defeated by the individual interventions.
>
> The user of social software is the group, and ease of use should be
> for the group. If the ease of use is only calculated from the user's
> point of view, it will be difficult to defend the group from the
> "group is its own worst enemy" style attacks from within.

So our job, as managers of the Stack Overflow community, is to balance
a complicated interaction between askers, answerers and the software
that governs their interactions.

<!--  LocalWords:  iframe LocalWords https frameborder BKorP paywalls
 -->
<!--  LocalWords:  html allowfullscreen rb tCONSTANT Shirky http
 -->
<!--  LocalWords:  downvoting askers
 -->
