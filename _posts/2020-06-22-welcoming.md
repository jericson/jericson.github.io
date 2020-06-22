---
layout: post
title: Does the 2020 survey show Stack Overflow made progress on its welcoming initiative?
comments: yes
tags: community
---

Two years ago, Stack Overflow officially launched [an initiative
intended to make the site more
welcoming](https://stackoverflow.blog/2018/04/26/stack-overflow-isnt-very-welcoming-its-time-for-that-to-change/). My
sense is that it's largely failed in its goals, but now I think we
have data to help us evaluate the initiative. The [2020 Stack Overflow
survey](https://insights.stackoverflow.com/survey/2020) included a
question about whether or not respondents felt Stack Overflow was more
or less welcome than in the previous years:

[![2020
Results](/images/welcoming_2020.png)](https://insights.stackoverflow.com/survey/2020#community-compared-to-last-year-how-welcome-do-you-feel-on-stack-overflow)

The same question was asked in 2019:

[![2019
Results](/images/welcoming_2019.png)](https://insights.stackoverflow.com/survey/2019#community-_-is-stack-overflow-more-welcoming-than-last-year)

(Both screenshots are linked to their source.)

As the analysis this year pointed out, the responses have become more
polarized. [Jason
Punyon](https://meta.stackoverflow.com/a/397862/1438) suggests that
people who felt more welcome were generally happy with new features
and increased sense of kindness from the community. People who felt
less welcome were more likely to mention, well, events that are
apparently unmentionable now. As someone involved in these events, I'm
super biased, of course. But I wonder if this question might be biased
as well. It's really hard for people engaged with the meta-discourse
to separate "welcoming" on Stack Overflow from all sorts of events
that have happened in recent years. The words in the comments from
people who feel less welcoming certainly indicate that.

[![cellio, firing, managers, inc, monica, behind,
treatment](https://i.stack.imgur.com/pq1o9.png)](https://meta.stackoverflow.com/questions/397792/2020-developer-survey-results-feedback/397862#397862)

For the last few years, the survey has asked if respondents feel "part
of the Stack Overflow community". This seems like a potentially less
divisive question. Since a good deal of the welcoming effort concerned
gender, its also useful to see how things are going over the
years. This table shows percentage of people who say they feel at
least somewhat part of the community.

| Year | Man | Woman | Non-binary, genderqueer, or gender non-conforming | Transgender | 
| ---: | --: | ----: | ------------------------------------------------: | ----------: |
| [2018](https://insights.stackoverflow.com/survey/2018#community-_-do-developers-consider-themselves-part-of-the-stack-overflow-community) | 56.9% | 43.3% | 40.8% | 39.2% |
| [2019](https://insights.stackoverflow.com/survey/2019#community-_-do-developers-consider-themselves-part-of-the-stack-overflow-community) | 50.0% | 33.8% | 31.1% | ? |
| [2020](https://insights.stackoverflow.com/survey/2020#community-do-developers-consider-themselves-part-of-the-stack-overflow-community-by-gender) | 44.5% | 30.0% | 27.1% | ? |

The pattern across all genders is decreasing sense of belonging. Maybe
changes how the survey was advertised produced this result. Indeed the
number of people who "have never participated in Q&A on Stack
Overflow" rose from [17.3% in
2018](https://insights.stackoverflow.com/survey/2018#community-_-how-often-do-developers-participate-on-stack-overflow)
to [22.3% in
2020](https://insights.stackoverflow.com/survey/2020#community-how-often-do-developers-participate-on-stack-overflow). In
an effort to make the survey more representative of developers in
general rather than just people (usually developers) who participate
on the Stack Exchange network, the survey was actively promoted in
other venues in the last few years. That's a good decision since the
survey is touted as a survey of _all developers_ and not just the ones
active on Stack Overflow.

A 5% increase in non-participating respondents can't explain all of
the decrease in sense of community:

| Gender | Change in sense of belonging |
| :----- | ---------------------------: |
| Man    |                       -10.6% |
| Woman  |                       -16.2% |
| Non-binary, genderqueer, or gender non-conforming | -13.5% |
| Transgender |                       ? |

Looking at the data in front of me, I am torn between two differing
conclusions:

1. There has only been minimal progress in terms of creating a more
   welcoming space on Stack Overflow.
2. New features and welcoming initiatives have increased a sense of
   welcome in some people while public and community relations
   missteps have reduced that sense in other people.
   
To put it another way, 2019 was incredibly difficult and painful to me
and to a number of other people I know who have been associated with
Stack Exchange. 2020 is shaping up to be the year many long-dormant
improvements are finally implemented. But how big an impact are these
changes to the typical Stack Overflow visitor? Am I too close to the
changes to evaluate them?

It might help to step back and ask "Why worry about welcoming?" In
general, welcoming is important for a group in order to attract more
people who are currently outside the group. For Stack Overflow,
welcoming almost always means addressing the obvious gender
imbalance. The reason gender is the primary focus is, in part, due to
growing awareness of obstacles places in front of women and gender
minorities in the "technology" sector.[^1] But it's also due to a
rather scathing Medium post, ["Suffering on Stack Overflow: How We
Might
Heal"](https://medium.com/@Aprilw/suffering-on-stack-overflow-c46414a34a52),
by April Wensel. She wrote in 2018 and pointed out our own survey
showed 93% of the respondents were men.

So how has Stack Overflow done in that regard?


| Year | Men (%) | Women (%) | Non-binary, genderqueer, or gender non-conforming (%) |
| :--- | ------: | --------: | ----------------------------------------------------: |
| [2015](https://insights.stackoverflow.com/survey/2015#profile-gender) | 92.1 | 5.8 | - |
| [2016](https://insights.stackoverflow.com/survey/2016#developer-profile-gender) | 92.8 | 5.8 | - |
| [2017](https://insights.stackoverflow.com/survey/2017#demographics) | 88.6 | 7.6 | 1.4 |
| [2018](https://insights.stackoverflow.com/survey/2018#developer-profile-_-gender) | 92.9 | 6.9 | 0.9 |
| [2019](https://insights.stackoverflow.com/survey/2019#developer-profile-_-gender) | 91.7 | 7.9 | 1.2 |
| [2020](https://insights.stackoverflow.com/survey/2020#developer-profile-gender-all-respondents2) | 91.5 | 8.0 | 1.2 |

Even with concerted efforts to advertise the survey to women, the
progress since 2017 has been slow-to-nonexistent. To summarize:

1. Minimal gains in a sense of welcoming.
2. Substantial decrease in a sense of being part of the community.
3. Minimal change in the percentage of women and gender minorities who
   respond to the survey.
   
Why? Why has dedicating substantial resources in making the site more
welcoming increased participation [so
little](https://data.stackexchange.com/stackoverflow/query/1246217/registered-users-by-year#graph)?

## Let's talk about developers in India

A year into my CM job, I wrote a brace of queries showing
[question](https://data.stackexchange.com/stackoverflow/query/205312/question-score-by-location)
and
[answer](https://data.stackexchange.com/stackoverflow/query/205315/answer-score-by-location)
scores by location. India and Indian cities consistently had lower
average scores than Western cities with similar numbers of posts. I
published my results on Meta and deleted the post a while later
because of the difficulty I had interpreting my findings. Maybe
developers in India write lower quality posts? Maybe there's
discrimination against Indians? Maybe they post in times when posts
are generally less likely to be seen by active voters?

These questions were uncomfortable because there was nothing I could
do about the answers I might find. I _still_ find them uncomfortable
and I no longer am responsible in any way for answering. It's hard to
escape the conclusion that we are seeing the results of US companies
outsourcing work to low-wage countries. If an Indian developer can't
get the training they need to do their job, but _can_ ask on Stack
Overflow, well, it's not hard to figure out what they will do.

When you look at [where visits to the site
originate](https://insights.stackoverflow.com/survey/2020#developer-profile--monthly-stack-overflow-visits),
India comes in second only to the US. As hard as it can be for women
on the site, they get nothing like the abuse Indian developers
endure. For one thing, women can [and
do](https://meta.stackoverflow.com/a/309924/1438) avoid letting people
know their gender. Indians often have excellent English with a few
distinct phrases carried over from their colonial history that act as
a [shibboleth](https://en.wikipedia.org/wiki/Shibboleth).[^2] And yet
their representation on the site hasn't much changed since
[2015](https://insights.stackoverflow.com/survey/2015#profile-geo).

I think whether or not a site feels welcoming is just a tiny factor in
whether people will participate. The overwhelming factor is whether
people are getting something useful out of participating. For a
programmer in India, asking on Stack Overflow might be the only way
they can get past a coding barrier. For me, I might prefer to ask a
colleague instead.[^3]

## Welcoming: necessary, but not sufficient

Here are some of the changes that Stack Overflow has implemented in
order to make the site more welcoming:

* [Blog post explaining the problem](https://stackoverflow.blog/2018/04/26/stack-overflow-isnt-very-welcoming-its-time-for-that-to-change/)
* [Code of Conduct](https://stackoverflow.blog/2018/08/07/get-to-know-our-new-code-of-conduct/)
* [Revised the Theory of Moderation](https://stackoverflow.blog/2018/11/21/our-theory-of-moderation-re-visited/)
* [Removed and added badges](https://stackoverflow.blog/2019/06/18/adios-to-unfriendly-badges-ahoy-lifejacket-and-lifeboat/)<sup>†</sup>
* [Increased the value of question upvotes to +10](https://stackoverflow.blog/2019/11/13/were-rewarding-the-question-askers/)<sup>†</sup>
* [Updated Code of Conduct](https://stackoverflow.blog/2019/10/10/iterating-on-inclusion/)
* [A new question asking form](https://stackoverflow.blog/2019/11/12/research-update-a-b-testing-the-new-question-form/)<sup>†</sup>
* [The Unfriendly Robot](https://meta.stackoverflow.com/q/396472/1438)
* ["Thanks" reaction](https://meta.stackoverflow.com/q/398367/1438)

By no means an exhaustive list, but you get the idea. I've marked
initiatives that I played a meaningful role in with a dagger (†) so
that it's clear my criticism includes my own actions.

These initiatives suffer from the pink motorcycle problem. Imagine
you are Harley Davidson and you notice your customers are [81%
male](https://www.womenridersnow.com/pages/motorcycle_owner_survey_show_women_riders_increase.aspx). That's
a problem because it cuts your addressable market almost by half. When
brainstorming ideas, someone suggests creating a [Pink Label line of
products](https://www.harley-davidson.com/us/en/shop/c/collection-pink-label). That
way there's something for people who prefer imagery other than skulls
or eagles.

[![Pink
Harley](https://cdn.pixabay.com/photo/2019/11/21/11/06/harley-davidson-4642323_960_720.jpg)](https://pixabay.com/photos/harley-davidson-pink-motorcycle-4642323/)

**This isn't a bad idea!** If you do some market research and discover
that your women customers would like to have pink products, than
that's a step you should absolutely take. But while you are doing
market research, it might be a good idea to figure out if there are
_other reasons women don't buy your product_.

Not everyone will have one of the two basic needs for posting on a Q&A
site:

1. A problem for which your best, and perhaps only, solution is to ask strangers on
   the internet.
2. The desire to answer questions from strangers on the internet.

Unless you have an intrinsic motivation, nothing the company does will
get you to participate. Stack Overflow has been hampered by its deeply
held believe that everyone should be active on Stack Overflow. This is
partially a noble ambition to be inclusive. It's also core to the
thesis of it's Talent/Jobs business. If you want to be LinkedIn for
developers, you gotta aim to have every developer at least have an
account on your site.[^4] Trouble is, the company has never
demonstrated that using its service helps people find new work or
companies fill positions.

The frustrating thing is **Stack Overflow [began
work](https://meta.stackoverflow.com/q/357198/1438) on a solution to
this problem** and promptly abandoned it. Yes, that mentoring project
had scaling issues, but at least it was an attempt to build on the
current strengths of the site (and community) rather than tinkering
around the edges. Mentoring has the potential to bring in new users
and provide a much needed service for developers. Instead, we get a
[thanks
reaction](https://twitter.com/jlericson/status/1273653468037705730).

---

Footnotes:

[^1]: I'm using "scare quotes" because companies like to label
    themselves "tech" in order to attract investments rather than
    anything intrinsic about their business. One almost wonders if the
    gender balance itself is the defining attribute of the industry.
    
[^2]: I should point out that in my experience, Indian (and
    Bangladeshi and Egyptian and Filipino and etc.) developers have
    similar innate abilities as their Western counterparts. From what
    I can tell, [the big
    differentiator](https://www.theatlantic.com/international/archive/2013/10/behind-the-bad-indian-coder/280636/)
    is access to education, resources, reliable internet connection,
    leisure time to focus on personal growth, interactions with
    colleagues and all the other advantages programmers in the US take
    as a given.
  
 [^3]: In the past, I've phrased it as an [economics
    problem](http://jlericson.com/2016/07/13/QA_economics.html).
  
[^4]: Oddly, the [Developer
    Story](https://meta.stackoverflow.com/questions/313960/introducing-the-developer-story),
    which was intended to make this happen, never saw much development
    after it was released.
  
<!--  LocalWords:  differentiator LinkedIn
 -->
