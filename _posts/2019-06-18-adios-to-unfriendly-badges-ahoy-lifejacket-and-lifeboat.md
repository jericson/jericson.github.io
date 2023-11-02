---
layout: post
title: 'Adios to Unfriendly Badges! Ahoy, Lifejacket and Lifeboat&mdash;Stack Overflow Blog'
tags: blogoverflow
---

[Originally published on Blog Overflow.](https://stackoverflow.blog/2019/06/18/adios-to-unfriendly-badges-ahoy-lifejacket-and-lifeboat/)
				
Sometimes it's helpful to look back at past decisions and reconsider
them in a new light. As part of our [ongoing efforts to make Stack
Overflow more welcoming and
inclusive](https://stackoverflow.blog/2018/12/04/welcome-wagon-community-and-comments-on-stack-overflow/),
we've been looking at how our incentive systems, including reputation
and badges intended to encourage positive contributions, may be
building discouraging barriers instead.

In this new light, two badges stood out to us as different from the rest: [Tumbleweed](https://stackoverflow.com/help/badges/63/tumbleweed) and [Reversal](https://stackoverflow.com/help/badges/95/reversal). In this post, we share the reflection that led to our decision to retire the Tumbleweed and Reversal badges and introduce a pair of more encouraging badges: [Lifejacket](https://stackoverflow.com/help/badges/8841/lifejacket) and [Lifeboat](https://stackoverflow.com/help/badges/8842/lifeboat).

## Eradicating Tumbleweeds

The Tumbleweed badge is awarded to questions with zero score, no
answers, no comments, and low views for a week. Recently we questioned
if it was [serving its purpose as a light-hearted consolation
prize](https://meta.stackexchange.com/questions/1576/what-is-the-purpose-of-the-tumbleweed-badge?noredirect=1#comment2615_1579).

Back in 2009, it was originally intended to be ["sort of
fun"](https://meta.stackexchange.com/questions/1576/what-is-the-purpose-of-the-tumbleweed-badge?noredirect=1#comment2615_1579)
and also kinda rare. Unfortunately, we have anecdotal evidence
(including my own experience) that Tumbleweeds are not fun and, on
Stack Overflow, they are [no longer all that rare
either](https://data.stackexchange.com/stackoverflow/query/1032536/tumbleweeds-and-scholars-over-the-years#graph):

![](/images/Scholars-Tumbleweeds-Chart-1-1200x635.png)

I included the
[Scholar](https://stackoverflow.com/help/badges/10/scholar) badge for
reference since it's awarded the first time a user asks a question and
accepts an answer. In other words, the system is working for about
200,000 users a year and failing for about 150,000. That's
sobering. What's worse, the badge reminds people a week later that
their question came up empty.

Still, it could be that the badge still serves as a consolation
prize. Maybe it communicates "Dust yourself off and climb back on that
horse." I suggested to [Dr. Julia
Silge](https://meta.stackexchange.com/users/346100/julia-silge), our
resident data scientist, that we might be able to show the badge is
working by looking at all questions that received one (and only one)
interaction over the last year:









<table id="tablepress-6" class="tablepress tablepress-id-6">
<thead>
<tr class="row-1 odd">
	<th class="column-1">Interaction</th><th class="column-2">Number of Examples</th>
</tr>
</thead>
<tbody class="row-hover">
<tr class="row-2 even">
	<td class="column-1">Tumbleweed badge	</td><td class="column-2">152,422</td>
</tr>
<tr class="row-3 odd">
	<td class="column-1">Got a comment	</td><td class="column-2">30,017</td>
</tr>
<tr class="row-4 even">
	<td class="column-1">Got an answer	</td><td class="column-2">17,733</td>
</tr>
<tr class="row-5 odd">
	<td class="column-1">Got a downvote	</td><td class="column-2">4931</td>
</tr>
<tr class="row-6 even">
	<td class="column-1">Got an upvote	</td><td class="column-2">407</td>
</tr>
</tbody>
</table>
<!-- #tablepress-6 from cache -->


As you can see, getting an upvote and only an upvote is far less
common than getting a Tumbleweed. Upvoted (and downvoted) questions
are likely to either get a comment or an answer as well. Obviously
getting a downvote discourages an asker and [other interactions
encourages](https://meta.stackexchange.com/questions/311504/what-can-we-do-to-encourage-or-discourage-a-second-question)
them. If the Tumbleweed badge is successful as a consolation prize,
we'd see people who get it asking more questions on the whole. The
data does not support that hypothesis; instead, people who get a
Tumbleweed badge are much less likely to ask a question ever again.


![](/images/Screen-Shot-2019-06-17-at-2.02.13-PM-1086x675.png)


So the Tumbleweed badge seems to be a worse consolation prize than if
the system just gave out a downvote. Now you might wonder if
Tumbleweed askers just have a knack for asking uninteresting
questions. The data doesn't bear out that hypothesis either.


![](/images/Screen-Shot-2019-06-17-at-2.03.10-PM-1062x675.png)


Askers who get one upvote tend to ask better subsequent questions and
those who get a downvote tend to do worse. But people who "earn" a
Tumbleweed do about as well as people who get an answer or a
comment. In summary, the Tumbleweed needlessly discourages askers who
might very well be asking good and interesting questions.

After looking at the data, we decided to **retire the Tumbleweed
badge** on Stack Overflow and the Stack Exchange network. That means
everyone keeps the badges they have, but we won't be awarding any new
ones.

## Lifejacket and Lifeboat to the rescue


Once we started thinking about badges and what purpose they serve, we
considered behavior we'd like to recognize. As it happens, we test
badge ideas in our [annual Winter Bash
event](https://stackoverflow.blog/2018/12/12/winter-bash-2018-2/) in
which people pursue temporary hats to decorate their avatar. Like
badges, hats can only be earned by doing something positive on the
site and are triggered automatically. One hat trigger stuck out as
really interesting: [Red
Baron](https://meta.stackexchange.com/questions/247415/should-we-make-the-red-baron-hat-trigger-a-permanent-badge). We
even reused the idea a few years later and called it
[Maverick](https://meta.stackexchange.com/questions/289245/can-the-maverick-hat-be-made-a-silver-badge). The
requirement was: "answer +5 a -3 question that goes to +3". In other
words, find a misunderstood question that has promise and answer
it. But that's not always enough. Sometimes the people earning the hat
also edited the question in order to help it get upvotes. (Read about
how one of our users, [Air, went above and
beyond](https://meta.stackoverflow.com/questions/281812/did-the-red-baron-hat-motivate-you-to-be-a-better-stack-overflow-user)
to get the hat.)

Instead of one badge, we decided to introduce two related badges:
**Lifejacket and Lifeboat. These badges reward reversing the score of
a negative question by answering it** in a way that sheds new,
positive light on the question, raising its score. It's an answer so
good it makes the question look good by association! You can think of
it as like someone finding a diamond in the rough and putting a little
bit of work into showing the world its hidden value. Conceptually,
it's similar to
[Reversal](https://stackoverflow.com/help/badges/95/reversal), but
with a more encouraging twist in that the question itself goes from
negative to positive rather than staying negative.




<table id="tablepress-7" class="tablepress tablepress-id-7">
<thead>
<tr class="row-1 odd">
	<th class="column-1">Name</th><th class="column-2">Lifejacket</th>
</tr>
</thead>
<tbody class="row-hover">
<tr class="row-2 even">
	<td class="column-1">Trigger</td><td class="column-2">A user posted an answer to a question with a score of <= -2 at the time

The answer has a score of >=5

The question goes on to get a score of >=2

Don't count the user's votes on the question</td>
</tr>
<tr class="row-3 odd">
	<td class="column-1">Tier</td><td class="column-2">Silver</td>
</tr>
<tr class="row-4 even">
	<td class="column-1">Short description</td><td class="column-2">Posted answer of +5 to question with a score of -2 that then increases to +2.</td>
</tr>
<tr class="row-5 odd">
	<td class="column-1">Category</td><td class="column-2">Answer Badges</td>
</tr>
<tr class="row-6 even">
	<td class="column-1">Can it be awarded multiple times?</td><td class="column-2">Yes</td>
</tr>
<tr class="row-7 odd">
	<td class="column-1">Is it retroactive?</td><td class="column-2">Yes</td>
</tr>
</tbody>
</table>
<!-- #tablepress-7 from cache -->

The gold version of the new badge pair is identical in concept to the
silver tier; it's just a lot harder to obtain.

<table id="tablepress-8" class="tablepress tablepress-id-8">
<thead>
<tr class="row-1 odd">
	<th class="column-1">Name</th><th class="column-2">Lifeboat</th>
</tr>
</thead>
<tbody class="row-hover">
<tr class="row-2 even">
	<td class="column-1">Trigger</td><td class="column-2">A user posted an answer to a question with a score of <= -3 at the time

The answer has a score of >=20

The question goes on to get a score of >=3

Don't count the user's votes on the question</td>
</tr>
<tr class="row-3 odd">
	<td class="column-1">Tier</td><td class="column-2">Gold</td>
</tr>
<tr class="row-4 even">
	<td class="column-1">Short description</td><td class="column-2">Posted answer with a score of +20 to a question with a score of -3 that then scored +3.</td>
</tr>
<tr class="row-5 odd">
	<td class="column-1">Category</td><td class="column-2">Answer Badges</td>
</tr>
<tr class="row-6 even">
	<td class="column-1">Can it be awarded multiple times?</td><td class="column-2">Yes</td>
</tr>
<tr class="row-7 odd">
	<td class="column-1">Is it retroactive?</td><td class="column-2">Yes</td>
</tr>
</tbody>
</table>
<!-- #tablepress-8 from cache -->


We're retroactively awarding these badges so if you've rescued any
questions in the past, that achievement will be recognized within
about 24 hours. Again, this is for all sites on the network.

## Reversing Reversal

Replacing Tumbleweed then brought us to reflect on the Reversal
badge. The criteria for the Lifejacket and Lifeboat badges are tweaks
of [Ben Voigt's suggestion for replacing Reversal from
2014](https://meta.stackoverflow.com/a/277691/1438). (Better late than
never, right?) Reversal has nearly the opposite problem from
Tumbleweed: it's only been [earned 304
times](https://stackoverflow.com/help/badges/95/reversal) and takes
real skill to pull off. Getting a score of 20 is not easy (there's a
[separate badge for getting
25](https://stackoverflow.com/help/badges/24/good-answer)) , but it's
more difficult when the question has been downvoted to -5.


Reversal rewards exceptional answers, but often the question gets
deleted (along with the answer) after the badge is awarded:


<table id="tablepress-9" class="tablepress tablepress-id-9">
<thead>
<tr class="row-1 odd">
	<th class="column-1">Reversal badges on Stack Overflow</th><th class="column-2">Question result</th>
</tr>
</thead>
<tbody class="row-hover">
<tr class="row-2 even">
	<td class="column-1">118</td><td class="column-2">Deleted</td>
</tr>
<tr class="row-3 odd">
	<td class="column-1">92</td><td class="column-2">Still negative score</td>
</tr>
<tr class="row-4 even">
	<td class="column-1">66</td><td class="column-2">Zero or positive score</td>
</tr>
</tbody>
</table>
<!-- #tablepress-9 from cache -->

For a badge named "Reversal", it's odd that the fortunes of just 22%
of those questions were turned around. And 39% of those great answers
are not even available anymore. One quirk of the Reversal badge is
it's [more common on Meta Stack
Overflow](https://meta.stackoverflow.com/help/badges/57/reversal). A
typical scenario is someone suggesting an unpopular feature in a
question (which gets downvoted) followed by an explanation of why the
feature is a bad idea (which gets upvoted). Unfortunately, the outcome
for those meta questions is __much worse__:

<table id="tablepress-10" class="tablepress tablepress-id-10">
<thead>
<tr class="row-1 odd">
	<th class="column-1">Reversal badges on Meta SO</th><th class="column-2">Question result</th>
</tr>
</thead>
<tbody class="row-hover">
<tr class="row-2 even">
	<td class="column-1">963</td><td class="column-2">Deleted</td>
</tr>
<tr class="row-3 odd">
	<td class="column-1">119</td><td class="column-2">Still negative score</td>
</tr>
<tr class="row-4 even">
	<td class="column-1">31</td><td class="column-2">Zero or positive score</td>
</tr>
</tbody>
</table>
<!-- #tablepress-10 from cache -->



It's an interesting badge to earn, but it's not at all positive for
the asker and I'm not sure it always encourages productive
behavior. Certainly the new badges will result in all-around better
content than most of the answers that trigger Reversal. As a result,
we're **retiring Reversal** everywhere. You'll keep your legacy
badges, of course, and if the question has been upvoted enough, earn
Lifejacket and Lifeboat too!

## Badge retirement home

With two badges going out of service, the list of badges that are no
longer awarded has grown:

* [Analytical](https://meta.stackexchange.com/questions/183128/analytical-badge-still-showing-faq/183243#183243)
* [Documentation
badges](https://meta.stackoverflow.com/questions/355115/documentation-is-read-only-what-s-next)
* Tumbleweed and Reversal

One of the purposes of badges is to let users show off their
achievements. So we don't want to hide retired badges. But another
reason for badges is to suggest things for people to try out. Since
none of these badges serve that second purpose, we're going to place
them in a "Retired Badges" section on the [Badges Help Center
page](https://stackoverflow.com/help/badges)


You'll also see a note at the top of each retired badge's page.

## Thank you!

I'm excited to announce these changes because they represent a
collaboration between many people over several years:


<ul>

<li>Julia Silge's analysis demonstrated that the Tumbleweed badge
wasn't serving its purpose.</li>

<li>Meg Risdal is our Product Manager who led us to make these
changes.</li>

<li>Jane Willborn wrote the code.</li>

<li>Nick Craver made sure the Lifejacket and Lifeboat triggers don't
break the site.</li>

<li>Ben Voigt suggested the trigger we used first for Winter Bash hats
and now for two new badges.</li>

<li>A bunch of people tested those triggers on our sites and prodded
us to keep considering something like these new badges. We also got a
bunch of feedback about Reversal and especially Tumbleweed that helped
us understand how they worked in practice. We've got an amazing
community here!</li>
</ul>
