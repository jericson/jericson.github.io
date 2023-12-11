---
layout: post
title: Why are there so many bad questions?
tags: meta-post
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2017-10-25
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/358412/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

I'm going to be using statistics from the week of October 8 to 14, 2017. There wasn't anything odd about that week as far as I can tell. Looking at a week avoids the weekend lull in asking that would come from looking at a day. That week there were about 145 million page views. A little less by [Quantcast numbers](https://www.quantcast.com/stackoverflow.com):

[![Quantcast][1]][1]

And little more the Google Analytics numbers we include in the [site analytics](https://stackoverflow.com/site-analytics) page available to [25k users](https://stackoverflow.com/help/privileges/site-analytics). Both sources of traffic data estimate visits for the week at about 57 million. That could mean someone who came to get help with a problem they are trying to solve _or_ someone who wants to participate on the site.

95% of those page visits are [via search](https://stackoverflow.com/site-analytics/traffic-sources) (also a 25k-only link) and the vast majority of those are Google searches. (There's a chance some of those are people who type 'stackoverflow' in their browser's search bar. But those are potentially offset by the [miscategorization of duckduckgo.com](https://meta.stackexchange.com/a/258402/1438) traffic.) So we can guess that about 54 million of visits were from people who had some sort of problem they needed help with. (Could be more, of course. It's not unusual for me do one search after another while working on a coding project.) 

There were 60,007 questions that week, which is about 1% of the search traffic. 2585 of those questions have been closed as duplicates so far, but it's likely that undercounts search failure by a large margin. Even so, it's obvious that most people who visit either find the answer they are looking for via search or give up before asking their question on Stack Overflow. We can certainly encourage people to do more searching, but it's not the most promising line of attack.

For [A/B testing we define "bad questions"](https://meta.stackexchange.com/questions/302970/how-is-question-quality-measured-in-a-b-tests) as those that have:

* a negative score (13,394) _or_
* been closed (6,127) _or_
* been deleted (8,042).

Altogether, there were 18,946 bad questions by that definition. (All of these numbers are from [this query](https://data.stackexchange.com/stackoverflow/query/746329/question-stats-for-a-week?start=2017-10-08). As always, please do your own analysis.) 32% badness a lot less than [Sturgeon's law](https://en.wikipedia.org/wiki/Sturgeon%27s_law), but we can probably do better. I'd say we _have_ done better as "badness" was much smaller (19%) [seven years ago](https://data.stackexchange.com/stackoverflow/query/746329/question-stats-for-a-week?start=2009-10-08). But quite a bit of the increase in came from an increase in question downvoting as a result of [removing the reputation penalty](https://stackoverflow.blog/2011/06/13/optimizing-for-pearls-not-sand/).

There are a number of [blocks](https://meta.stackexchange.com/help/question-bans) and [filters](https://meta.stackexchange.com/help/quality-standards-error) in place to slow down askers and encourage them to ask better:

<!-- 21717 -->

    attempts    users  action                                                                  
    --------    -----  ------
       60007    47914  asked
       13629     4743  Unformatted code
        9219     2987  Question with too much code and little context
        8770     3164  Question rejected due to low quality
        6285     3496  Question blocked
        5666     3925  CAPTCHA test failed
        5147     1396  New user question throttle
        1355      944  Question title word filter tripped
        1282      422  Post blocked for containing a link that requires code, without any code
         860      472  Post blocked for too many links
         449      187  Attempted to post duplicate question
         448      214  A post was blocked for having > 1 image
         216       53  Post blocked because IP blocked for spam
          58        6  Daily question limit reached

Clearly, these don't always prevent a bad question from landing on the site. When the system detects that the user has just dumped code in the body of the question, it gives this error:

> It looks like your post is mostly code; please add some more details.

But there's no way to systematically tell if added text is useful details or just words to get around the filter. That's the bad news. The good news is we can use this data to estimate the causes of bad questions:

1. Code dumps
2. Grammar, spelling and other ["quality" problems](https://meta.stackexchange.com/help/quality-standards-error)
3. [Problem titles](https://meta.stackexchange.com/questions/113151/the-efficacy-of-stack-overflows-question-title-filter)
4. Misusing links
5. Asking too many questions or [too many poor questions](https://meta.stackexchange.com/help/asking-rate-limited) too quickly

Once the system has a pretty good idea that a user is not going to ask good questions, it starts [blocking that user](https://meta.stackexchange.com/help/question-bans). In that week, 3496 users were prevented from asking at least once. We've made it harder to bypass the block by creating a new account, but it obviously happens sometimes.

Ultimately, we have millions of people visiting the site. While there are many prompts, blocks and limits slowing down questions, the small percentage of visitors who make it through turns out to be a large absolute number. For better or worse, the barriers to asking mean that the most determined (or, perhaps, desperate) users actually post. I'm sure you know decent programmers who have no interest in posting on Stack Overflow because of our reputation for harsh criticism. Those folks don't ask, but probably would produce better than average questions. Meanwhile, the people who just don't care about anything but the chance to get help from a programmer are willing to put up with just about any crap we throw at them.

---

One theory that people often raise when it comes to the cause of bad questions is that we could reduce the problem by just not answering bad questions. There's a good deal of sense in that argument. Research on [artificial societies](https://www.theatlantic.com/magazine/archive/2002/04/seeing-around-corners/302471/) does suggest that a relatively small amount of reinforcement can encourage undesirable behavior in a population. Bad questions are answered about 28% of the time compared to 53% for all questions. Depending on what you value, asking on Stack Overflow with 28% might be worth putting up with even more filters, blocks, warnings, downvotes, critical comments and so on. 

A good way to prevent people from answering bad questions would be to [close them more quickly](https://meta.stackoverflow.com/questions/286407/thought-experiment-what-would-happen-if-we-didnt-have-close-votes). But another way would be to increase the absolute number of _good, answerable_ questions. Think about [why people answer questions](http://jericson.github.io/2016/07/13/QA_economics.html). If you have a bit of time and would like to help someone out or earn reputation, you might look around for a Stack Overflow question to answer. Sorting by upvotes will show you good questions that probably already have answers or, if not, are difficult to solve. These aren't likely to be productive in terms of helping others or reputation, so answerers need to look further down the list to find unanswered (but answerable) questions.

I think most users would rather answer good questions, but don't feel their contributions will be worthwhile. I certainly noticed that about myself when I first started contributing to Stack Overflow and, more recently, when I [tried to get a sock puppet to 1k](http://jericson.github.io/2017/07/26/race_to_1k_1.html). Adding filters and blocks and warnings have signalled to sensible people who can read the signs that we don't want their questions. We are running out of obstacles we can throw in people's ways. So that's why I'm glad we are tackling the other end of the problem: [encouraging askers to post more useful questions](https://meta.stackoverflow.com/questions/357951/what-can-we-put-in-a-question-template-to-help-people-ask-better-questions). 

---

Some people have [expressed surprise](https://meta.stackoverflow.com/questions/357951/what-can-we-put-in-a-question-template-to-help-people-ask-better-questions/358250?noredirect=1#comment529060_358250) that so many asking attempts have been blocked. This isn't really anything new:

[![Question attempts blocked percentage][2]][2]
<!-- 21864-->

For those who are curious, the spike in June and July of 2016 came from the "Post blocked for too many links" filter. Basically, spam. Other than that, the most common hurdle for people is posting unformatted code. (Again, the data from October 8 to 14, 2017 is typical in this regard.) I didn't dig into the data to be sure, but I suspect most of those folks eventually get around the block by either fixing their code formatting or fiddling with the text of the question until the algorithm is satisfied. Either way, we can do better.

  [1]: /images/BtQmg.png
  [2]: /images/KliYy.png

---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/358412/1438).

