---
layout: post
title: Hide trivial comments
tags: meta-post comments
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackexchange.com/users/1438/jon-ericson
date: 2013-11-06
comments: no
---

([Originally published](https://meta.stackexchange.com/q/204402/1438) on meta Stack Exchange by Jon Ericson.)

---

If you look around the internet, you'll find that:

> 99.9 percent of comments are either spam, off-message or simply wasted electrons.&mdash;[ithacaindy](https://www.mediabistro.com/10000words/get-rid-of-the-comment-section_b22197#comment-1028331570) (Obviously part of the 0.1%.)

Stack Exchange does not have that problem.  Thanks to [flagging](https://blog.stackoverflow.com/2009/04/comments-now-with-flags-and-votes/), our spam and offensive comments have a half-life of minutes.  So the goal of this proposal is not to mess with a good thing.  Instead, I propose we increase our [information density](https://www.codinghorror.com/blog/2006/07/information-density-and-dr-bronner.html) by hiding comments that are not bad, but just trivial and likely obsolete.

Currently on Stack Overflow and other non-meta sites the [top 5 comments](https://blog.stackoverflow.com/2009/04/comments-top-n-shown/) by vote are displayed in chronological order.  The sixth and following comments are hidden behind a link.  For posts with many comments that means that the earliest comments have a strong tendency to be shown even if they are not particularly useful or [friendly](https://meta.stackexchange.com/questions/141706/how-can-we-avoid-comments-intended-to-be-helpful-being-perceived-as-unfriendly/141927#141927).  For posts with 5 or fewer, the comments are a nearly permanent feature even if an edit or the passage of time makes them obsolete. To rectify the situation, I propose using:

Comment Weight
--------------

Each comment is given a weight from 0-29 based on the following criteria:

* One point for every vote up to the tenth.
* One point for each 15 characters beyond the minimum (15) capped at 9.
* `10 - age` (in days) down to 0.

A comment with no votes, less than 30 characters long, and older than 10 days will have a weight of zero.  If a comment of length 150 gets ten votes on the first day, it will temporarily weigh in at 29.

**Comments with a weight less than 10 are hidden.**<sup>1</sup>  All remaining comments are shown in chronological order.<sup>2</sup>

Let's look at each factor individually:

Age
---

All comments start at a weight of 10 and [decay](https://meta.stackexchange.com/questions/140703/let-comments-decay-by-default-add-option-to-make-them-permanent) over the next 10 days.  That means that _every_ comment is displayed for _at least_ one day and most<sup>3</sup> will be displayed longer.  Several proposals have suggested [hiding](https://meta.stackexchange.com/questions/182295/automatically-hide-old-comments) [old](https://meta.stackexchange.com/questions/7738/allow-for-setting-comments-to-auto-expire-to-become-temporary-comments) [comments](https://meta.stackexchange.com/questions/142077/hide-most-comments-on-old-stack-overflow-posts).  The common thread is that most comments don't matter after they have been seen by whomever they are directed to.<sup>4</sup>  Under the top 5 system, comments are assumed to be valuable unless there are too many.  Under the weighting system, comments must demonstrate their value in order to be displayed.  The age factor gives comments the time they need to gather support.

Length
------

Lukas Mathis conducted a survey that showed statistically [longer is better](https://ignorethecode.net/blog/2009/09/29/comments_size_does_matter/) when it comes to comments.  While I could find no other studies to support or reject this claim, it does match my experience.<sup>5</sup>  Not _every_ long comment is worth keeping around, but as the comment length approaches 150 or so, the odds are a lot better.  The length factor is capped at 9 so that a commenter can't pad their work to force display.  Even the longest comment must be validated by a second person upvoting it.

Score
-----

It's very difficult to properly evaluate comments in isolation from their post. This is where users come in.  Only people can tell which comments deserve pride of place.  Voting allows _you_ to decide whether or not a comment gets shown to future readers.  

People aren't perfect: I've observed that votes on short comments tend to mean "Funny".  But votes on longer comments tend to mean (to take [a page from Slashdot](https://slashdot.org/faq/metamod.shtml)) "Insightful", "Interesting", or "Informative".  Comments that we want to keep around have a combination of length _and_ upvotes.

How you can help
----------------

As a baseline, the [top five scheme](https://data.stackexchange.com/stackoverflow/query/144564/how-many-comments-are-hidden) hides 3,059,691 comments on Stack Overflow as of November 4, 2013.  There were 24,136,126  [undeleted comments](https://data.stackexchange.com/stackoverflow/query/144570/how-many-undeleted-comments-are-there) in total.  The [weight algorithm](https://data.stackexchange.com/stackoverflow/query/144567/how-many-comments-will-be-hidden) would hide 22,517,301 comments.  Changing the algorithm would hide 93% of comments compared to 13% as now.  I feel confident that much of that is noise, but there's [bound to be some signal](https://www.johndcook.com/blog/2013/10/28/remove-noise-remove-signal/) lost as well. 

I've written a [query](https://data.stackexchange.com/stackoverflow/query/144364/comment-hiding-algorithm) that displays the comments that are shown by the comment weight algorithm.  Please take a few minutes to explore the comments on some posts with problematic comments.<sup>6</sup>  Fork my query and tweak the algorithm.  Write up your findings in an answer below.  Let us know if you find significantly useful comments that would be lost or long comment threads that would be even noisier by this weighting algorithm.

----------

1. By which I mean, they will be behind the `add / show X more comments` link.

2. There is a _significant_ edge case surrounding very long, very heated comment threads.  If we don't cap the number of comment _somehow_ there will be posts with up to 55(!) comments shown.  ([See the top 100](https://data.stackexchange.com/stackoverflow/query/145168/how-many-extra-comments-will-be-shown-on-long-threads) which includes election posts.)  The simplest solution is to keep the current caps (5 for main sites and 15 for metas).  I'm certainly open to other ways of preventing comments from overwhelming answers in these cases.

3. The [median comment length](https://data.stackexchange.com/stackoverflow/query/146416/median-comment-length-sampled) is 113, so half of all comments will actually be shown for at least 6 days.

4. If you need convincing, take a look at [5 random comments](https://data.stackexchange.com/stackoverflow/query/140426/pick-5-random-short-comments).  This only picks short (< 100 characters) for reasons explained shortly.

5. Take a sample of [5 long comments](https://data.stackexchange.com/stackoverflow/query/146469/pick-5-random-long-comments) and see for yourself.  

6. For instance, back in August Toby Allen [pointed out](https://meta.stackexchange.com/questions/182295/automatically-hide-old-comments/191725#191725) a [“a whole load of snarky irrelevant and unhelpful comments”](https://stackoverflow.com/questions/12859942/why-shouldnt-i-use-mysql-functions-in-php).  Many of the worst of them have been deleted already, but there are still plenty of not-so-useful comments left.


---

Please direct comments to the [original post](https://meta.stackexchange.com/q/204402/1438).

