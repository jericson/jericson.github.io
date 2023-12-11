---
layout: post
title: Why are answer rates dropping?
tags: meta-post
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2019-01-12
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/378904/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

Questions really are answered less often and getting fewer answers today than they were in the past:

[![Grim answering picture][1]][sede-961239]

If you want to look at the query, [it's on SEDE][sede-961239]. I've filtered out confounding factors:

* I'm only considering answers within 30 days of the question being asked. This eliminates the effect of ancient unanswered questions getting their first answer years later. (2020 data is a bit skewed because we haven't experienced the entire 30-day window just yet.)

* I'm not looking at questions with a negative score, or those that were closed or deleted within the 30-day window. We know there is an [increase in bad questions](https://meta.stackoverflow.com/a/358412/1438), so I want to remove that factor from this analysis. (Not remove it entirely, as you will read. But just remove the obvious problem with bad questions not being answerable.)

* I'm using [our standard definition of "answered"](https://stackoverflow.blog/2008/09/30/ok-now-define-answered/) which doesn't count answers that haven't been either upvoted or accepted. _Somebody_ has to have vouched for at least one answer or we don't consider the question answered yet.

In case it isn't clear, `unanswered_rate` is the ratio of questions that didn't get positively-scored or accepted answer within the 30-day window. `answer_rate` counts the average number of answers with a positive score or that have been accepted. So not only are there more questions that don't get answered, questions are less likely to get multiple answers. One thing that has changed is [questions have narrowed considerably in scope](https://meta.stackoverflow.com/a/374083/1438) over the years. It wasn't unusual for questions to get dozens of answers in 2008, but that's pretty rare these days.

I don't think the reason behind the trend is very complicated:

[![The questions are many and the answerers are few.][2]][sede-961607]

The `questions` line includes _all questions_, including downvoted, closed and/or deleted. `answerers` counts how many people have contributed at least one upvoted answer in the year. Questions have far outpaced people willing to answer them since the beginning and we've seen fewer answerers since the peak (320,124) in 2016. Each question represents a measure of work to answer, close or edit into shape. As users (such as yours truly) tire of doing that work, we need to replace them with new volunteers. We've simply fallen behind in the last two years.

In my association with the site over the last ten years, I've proposed a number of reasons why people might leave:

* [Extrinsic motivation of the reputation system is unsustainable.](https://meta.stackexchange.com/questions/42481/the-problem-with-extrinsic-motivation)

* [The increasing rate of bad questions means people are less likely to find something interesting to do.](https://meta.stackoverflow.com/questions/318174/why-are-there-so-many-bad-questions/358412#358412)

* [New questions are likely to be more narrowly focused on debugging than in the past.](https://meta.stackoverflow.com/a/374083/1438)

* [New users feel unwelcome when they use the site.](https://meta.stackoverflow.com/a/367028/1438)

* [The company and the community have an unhealthy relationship.](https://meta.stackexchange.com/a/311933/1438)

This isn't a comprehensive list, but the upshot is there are many reasons people stop answering and not all of them are fixable with our current toolset. Even as question rates have dropped in the past two years (-10%), the number of users who have answered has fallen faster (-23%). As long as `new users - retiring users < 0` we're going have a problem. (Unless you like the idea of more questions of varying quality with fewer people to handle them, of course.) 

Naturally Meta has focused on retiring users: "If we could just fix a set of problems on the site, we'd stop losing valuable contributors." But that's only half the problem. Inevitably people _will retire_ even if it's just that they are retiring in the real world and spending their time playing with the grandchildren instead of answers Stack Overflow questions. From 2008 to 2012, Stack Overflow saw meteoric growth then leveling off until 2015 or so. In the last few years we saw a drop off in the number of new answerers: 

[![New answerers by year][4]](https://data.stackexchange.com/stackoverflow/query/961642/new-answerers-by-year#graph)

Ignore the last point, obviously. We're a long way from knowing what will happen this year. That said, our plans for 2019 include initiatives such as the [Ask a Question wizard](https://meta.stackoverflow.com/questions/378057/the-ask-question-wizard-is-now-in-testing) to reduce bad questions (and hopefully increase good ones) and [Custom Question Lists](https://meta.stackexchange.com/questions/317675/custom-question-lists-october-status-update) to help users find questions to answer. There are a few other projects we're considering that I hope will be announced soon. However, if these technical tools are to work, we'll also need to make cultural adjustments. As Clay Shirky has [pointed out](https://web.archive.org/web/20191122012101/http://www.shirky.com/writings/herecomeseverybody/group_enemy.html):

> But you cannot completely program social issues either. So you can't separate the two things, and you also can't specify all social issues in technology. The group is going to assert its rights somehow, and you're going to get this mix of social and technological effects.

  [sede-961239]: https://data.stackexchange.com/stackoverflow/query/961239/unanswered-questions-by-year#graph
  [sede-961607]: https://data.stackexchange.com/stackoverflow/query/961607/unanswered-questions-by-year#graph

  [1]: /images/lh0JD.png
  [2]: /images/jmp8Z.png
  [3]: /images/OmSIc.png
  [4]: /images/nsIkG.png

---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/378904/1438).

