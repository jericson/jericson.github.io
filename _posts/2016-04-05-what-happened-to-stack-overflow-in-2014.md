---
layout: post
title: What Happened to Stack Overflow in 2014?
tags: stack_overflow
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2016-04-05
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/320440/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

Shog [suggests](https://meta.stackoverflow.com/a/320234/1438) there is a natural equilibrium between askers and answerers. My gut reactions were:

* [~8k questions a day](https://stackexchange.com/sites#questionsperday) is pretty remarkable given the site's humble, [even naive](http://www.joelonsoftware.com/items/2008/09/15.html), beginnings. So much has been done to help the whole operation scale and yet sometimes [the works get jammed up](https://meta.stackoverflow.com/questions/251489/lets-burn-down-the-close-queue). Regular users don't often see that flags (3.3m so far) require constant attention from a relatively small [squad of moderators](https://stackoverflow.com/users?tab=moderators). It would be even more remarkable if the whole operation were not implicitly [rate limited](http://blog.codinghorror.com/rate-limiting-and-velocity-checking/) somehow.

* The explanation is not exactly satisfying.

  [![Weigh the last couple of years of questions][1]](http://www.gocomics.com/calvinandhobbes/1986/11/26)

Mechanically, the number of answers on a site can be described as:

    answers = questions * answers_per_question

Since we [optimize for pearls](https://blog.stackoverflow.com/2011/06/optimizing-for-pearls-not-sand/), it's really the answers that are important. If you input a junky question, the best you can hope for is no answers at all. And, in fact, questions with lower scores are less likely to be answered:

<!-- 14134 -->

[![Answered rate by score band and month asked][2]](https://data.stackexchange.com/stackoverflow/query/464236/answered-rate-by-score-band-and-month-asked#graph)

This chart shows the rate questions are answered by ask date. The downward trend is partially an artifact of it taking time to answer difficult questions: as time goes by, the odds a question with a score of 5+ getting answered approaches unity. There might also be an increased reluctance to answer questions, but it's hard to tease out of the data without analysing timing of votes and answers. For our purposes, however, the important point is to notice the answer gap between positive, zero and negative question scores. 

So far, the equilibrium theory seems plausible. Questions that are unwelcome (as indicated by downvotes) are less likely to be answered. When users' questions are not answered, they are [less likely to return](https://meta.stackexchange.com/a/216700/1438) to ask more. Roughly half of downvoted questions are never answered and eventually deleted.

The trouble, at least when it comes to 2014, is that unwelcome questions (i.e., those with a negative score) have been increasing steadily since at least 2011, if not beta:

<!-- 13924 -->

[![Positive vs. negatively scored questions by month][3]](https://data.stackexchange.com/stackoverflow/query/458049/positive-vs-negatively-scored-questions-by-month#graph)

In economics, there's a concept called price insensitivity in which products can be sold for increasing prices without decreasing demand. High end fashion, for instance, tends to be bought by people who don't pinch pennies. Drugs (both the ones that correct health problems and the addictive type) can also be sold for higher prices without hurting sales if their effects can not be duplicated by a cheaper product. Then there's See's Candy, which [raises price per pound each year](http://www.fool.com/investing/general/2014/07/13/warren-buffett-bought-this-company-for-25-million.aspx) and I, along with thousands of other loyal customers, buy roughly the same amount. My guess is that Stack Overflow's reputation for quality answers encourages people to ask questions even in the face of downvotes and silence.

Instead the decreased activity seems correlated to a decrease in questions getting upvotes and a corresponding increase in questions not getting votes at all. It's difficult to infer causation and I see two possible theories:

1. Starting around 2013 and peaking around March, 2014, people began asking fewer interesting questions. That lead to a decrease in voting on questions and fewer answers being given. Since the feedback on these uninteresting questions was discouraging, people began asking fewer questions on the whole. Meanwhile, truly poor questions continued being asked with little regard to negative feedback.

2. Stack Overflow users began noticing increasing numbers of truly awful questions and decided, rightly, that downvoting and refusing to answer them is the best remedy. These questions fit broad categories of awful and users began withholding votes from questions that were not themselves awful, but bore some of the markers of awful. Fewer of these questions got answered and askers of mediocre questions did not see any point in trying to improve. 

These are equally probable theories in my way of thinking. I could even see a blended theory being correct. But the evidence does not suggest that increases in awful questions is the proximate cause in decreased answering during 2014. Instead, the decrease seems to be a result of fewer welcome/upvoted questions. 

  [1]: /images/cdMKa.png
  [2]: /images/M9pKY.png "The linked query from the public data shows the effects of automated deletion. Negatively scored questions will be deleted unless they have an answer."
  [3]: /images/OyGua.png

---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/320440/1438).

