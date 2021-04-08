---
layout: post
title: Sunsetting Documentation
tags: meta documentation
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2017-08-01
comments: no
---

([Originally published](https://meta.stackoverflow.com/q/354217/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

![Sunset in the west](https://media.giphy.com/media/Vuu6ZYRYBKTHq/giphy.gif)

## We will stop accepting contributions to Documentation on August 8 2017

On behalf of everyone who worked on Documentation, I want to thank all 15,451 users who contributed. We particularly want to acknowledge the 294 people who tested the private beta and the 2,361 who pounded on the public beta in its first month. Your efforts taught us so much about how collaborative editing works and how it fails. We also appreciate the dozens of people we interviewed over the past year. These were eye-opening conversations and immeasurably useful for improving the product. (I also enjoyed being able to get to know some of you over a hangout.) Our top concern at this point is to **honor the trust you put in us**. We hope you will be willing to participate in future betas, but even if not, we remain in your debt for your efforts with this one. 

While it might not seem obvious, we are deeply grateful for both the positive and negative feedback we’ve received on meta. Many people told us this project was too ambitious and that we hadn’t considered some of the deep challenges inherent in what we were attempting. You were, of course, correct. Most likely I wouldn’t be making this announcement if we’d aimed our sights a bit lower. On the other hand, we wouldn’t have learned nearly as much.
 
## Why was this decision made and why now?

We were really excited about this project and I'm disappointed that this is the choice we had to make, but it's the right decision and something that we always knew was a possible outcome. Last December I wrote a series of contingency plans in case we needed to shut Documentation down. Some of the options I considered made it into the plan described after the linebreak. But the entirety of one plan was “Just succeed instead.” That is no longer a possibility.

**We still think Stack Overflow Documentation is a good idea.** Kevin Montrose’s [initial research](https://meta.stackoverflow.com/questions/303865/warlords-of-documentation-a-proposed-expansion-of-stack-overflow) has mostly been proven correct. Not only did our own survey show that developers rely on [official documentation to learn](https://insights.stackoverflow.com/survey/2017#developer-profile-ways-developers-teach-themselves), GitHub's [Open Source Survey](http://opensourcesurvey.org/2017/#insights) showed "incomplete or confusing documentation" to be the top pain point. Unfortunately, we can't afford to work on the problem at the moment. While we have an [exceptional team of engineers](https://stackoverflow.com/company/team#Engineering), there just aren't enough of them to support all the projects Stack Overflow is working on.

In order to hire more people, we need to [make more money](https://stackoverflow.blog/2016/11/15/how-we-make-money-at-stack-overflow-2016-edition/). That might mean helping more developers [find a great job](https://stackoverflow.com/jobs) or selling more ads or signing up more businesses to use [Enterprise](https://www.stackoverflowbusiness.com/enterprise). In the future, it might mean selling [Channels](https://meta.stackoverflow.com/questions/352065/introducing-channels-qa-for-engineering-teams) to new teams. The business pitch for Documentation was that it'd bring in new users who might be in the market for a job. If the feature were particularly successful, it would create new opportunities to sell advertisements. At the end of 2016, we established a metric to aim for: [substantially increase the number of Documentation users](https://meta.stackoverflow.com/questions/339974/the-dawn-of-documentation-a-solstice-update).

By May, it was clear we [weren't on the right path](https://meta.stackoverflow.com/questions/349410/tearing-down-the-structure-of-documentation). **New users weren't coming to Documentation.** So we went back to the drawing board and started another round of user interviews [focused on Transact SQL](https://meta.stackoverflow.com/questions/349409/what-t-sql-documentation-has-helped-you). We brought on a user experience researcher to help us interview technical writers. The results were encouraging in the sense that we know a lot more about what makes for great documentation and how we might support that effort. But it was also clear fixing Documentation would require a significantly larger team.
 
In addition, it’ll be a very long time before that work will pay off in terms of bringing new users to Stack Overflow. Our interviews showed even very experienced users of T-SQL felt inadequate to contribute documentation. Users with less Stack Overflow experience tended to be intimidated by the prospect of making even trivial edits. So the programmers most likely to become Documentation contributors were already heavily engaged in using Stack Overflow.

Finally, our research showed that while a lot of developers were dissatisfied, the current state of **programming documentation is not universally broken** the way Q&A was when Stack Overflow started. In particular, we heard over and over that Stack Overflow has become de facto documentation for many technologies. As many of you pointed out, Stack Overflow is already good enough at providing documentation of obscure features. Even when considering just [the company's mission](https://stackoverflow.com/company) of helping programmers “learn, share their knowledge and build their careers”, Documentation isn’t the most efficient use of resources.

Even though this outcome has been a disappointment, most of us agree it was the right decision. If so, I hope we'll be able to revisit documentation in the coming years. However, as the [ancient Hebrew proverb](http://www.mechon-mamre.org/p/pt/pt2813.htm) says, “Hope deferred makes the heart sick; but desire fulfilled is a tree of life.” This was a mature and responsible decision, but that doesn’t cure the heartsickness.

## Will anything come out of this experiment?

**Yes!** As Shog [pointed out](https://meta.stackoverflow.com/a/348143/1438), we've already learned quite a bit from doing things we couldn’t do otherwise. It's too soon to know exactly what we'll be able to port over to Q&A, but I'm excited about the possibilities of [CommonMark](http://commonmark.org/), technology versions support, shared drafts, better collaborative editing and dated links to previous revisions. Before we leave Documentation, the team will compile what we learned so that we can draw from the knowledge in the future. And, as I will describe below, we’ll publish all of the content generated in Documentation.

More importantly, **we've changed our approach to product development across the company**. When we started Documentation, our discovery phase was largely done without interviewing typical users. Up to that point, most new features on Stack Exchange were developed with input from Meta or entirely internally. If a feature got used, we'd refine it or just declare victory. If a feature wasn't used, we typically removed it only if was actively causing harm. However, after our experience with the Documentation Beta, we've learned to focus more of our efforts on pre-development research.

For instance, the Documentation team already decided the outline of the feature before coming to meta with the initial announcement. By contrast, our newly formed Developer Affinity & Growth team [asked for help](https://meta.stackoverflow.com/questions/354125/help-set-dag-product-development-priorities) setting priorities based on themes and user stories. Documentation’s private beta fleshed out most of the functionality. By contrast, the [new mentoring proposal](https://meta.stackoverflow.com/questions/353845/stack-overflow-mentorship-research-project) is a minimal viable product that is arguably too minimal. We’re certain to have failed projects in the future, but we’re working to fail a lot earlier in the process. 

---

## How will the feature be phased out?

After August 8, 2017 at [1700 UTC](http://time.unitarium.com/utc/17), we’ll disable proposed changes and wait for pending changes to be reviewed. Once the review queue is cleared, it'll be removed from the review menu and [page](https://stackoverflow.com/review). We’re still working out the other details, which I will try to explain below. For some of this, we need your feedback in order to do right by the community. This probably won’t be the last time we discontinue a beta feature and now is a good time to set a healthy precedent.

## What happens to content?

As with all content contributed by the community, you own it and we merely have [a license](https://creativecommons.org/licenses/by-sa/3.0/). Since we want to make it as easy as possible for you to recover your work, we'll be listening for suggestions in the answers below. At a minimum, we'll provide a JSON archive similar to what we already [provide for live content](https://archive.org/details/stackexchange). Let us know what you'd prefer.

## What happens to reputation?

Reputation earned on Documentation will be retained&mdash;probably in the form of a one-time grant shortly after Documentation ends. We have a [longstanding policy](https://stackoverflow.blog/2012/03/06/reputation-and-historical-archives/) of preserving reputation even after worthwhile content is removed. While not all of the content in Documentation is exceptional, that's mostly [on us](https://meta.stackoverflow.com/questions/349410/tearing-down-the-structure-of-documentation) and not on users, who acted in good faith. We looked to see how many people earned privileges on Stack Overflow without participating much or at all in Q&A. As it turns out, we mostly failed to attract new users to the site with Documentation, so revoking reputation would only affect a thousand or so users in terms of privileges compared to nearly 20k people who would lose reputation.

## What happens to badges?

We also have a [longstanding policy](https://stackoverflow.blog/2010/05/23/generalist-badge-implemented/) against revoking badges. But we've never had a badge set for a discontinued beta feature either. While we could just [retire them](https://meta.stackexchange.com/questions/183128/analytical-badge-still-showing-faq), it seems confusing to show expired Documentation features on the [list of badges](https://stackoverflow.com/help/badges). In addition, we'd lose a lot of good names for potential future badges. As a compromise, anyone who earned a Documentation badge other than [Educated](https://stackoverflow.com/help/badges/5870/educated) (for reading the tour) will be issued a newly minted silver Documentation Beta badge. Does this seem fair?

## What about links to Documentation?

Unfortunately, discontinuing Documentation will be breaking the internet just a bit. As of this writing, there are 3382 links from Q&A posts to an Example and 2199 links to some other Documentation page (usually an entire Topic). Ideally, we’d keep those links live, but because of the nature of the content, that would leave a lot of information that could easily become outdated without a mechanism to fix it. The next best thing would be a plan to automate the movement of content into the post itself. That _might_ work for many examples, but probably not for entire topics.
 
One suggested approach: we  automatically generate suggested edits from the Community user and submit them incrementally as there is space in the queue. For links to non-Examples, we think it will be sufficient to remove the sentence with the link. Many of these sentences start with phrases such as “You could read more about X at [Docs link]”.

Links to specific examples seem more likely to be integral to posts, so the team is looking at ways to bring them into answers in a new section. Doing this via suggested edits will allow the community to reject or improve automated edits. (And authors can always [override the community](https://meta.stackexchange.com/a/295028/1438) if they prefer.) The key will be to find a workable template and make sure the suggested edits don’t waste too much community effort.

Until the suggested edit process is finished, Documentation pages will remain available on the site. After that, links will redirect to a landing page explaining what happened and where to get the data dump. There's not a whole lot more we can do for links external to the network, unfortunately. On the plus side, there probably aren’t that many anyway.

We’d like to hear what you think of this approach. It’s entirely possible there are better ideas we just haven’t considered. This plan is far from settled.

## What about all the questions on Meta?

I’m going to be going through the [~1,500 unaddressed meta questions](https://meta.stackoverflow.com/search?q=documentation+-%5Bstatus-*%5D+closed%3Ano) and either close or put a status tag on them. Our community produced many great conversations and suggestions, so I don’t plan to delete anything. I could probably slap [meta-tag:status-declined] on everything, but I’d rather take the opportunity to make sure we have the feedback incorporated in our retrospective.

## What about . . . ?
 
The most important thing we're looking for in answers are feedback on the mechanics sunsetting, especially making the content available to contributors and repairing broken links. That said, if you have any additional questions or comments, feel free to post them as answers below. We also plan to write a retrospective on the blog and make this a topic of an [upcoming Town Hall Chat](https://meta.stackexchange.com/questions/298165/lets-do-regular-meta-se-town-hall-chats-next-event-july-26-2017). I’m planning a few posts for my personal blog as well. Documentation might be coming to an end, but we’re not close to done talking about it.


---

Please direct comments to the [original post](https://meta.stackoverflow.com/q/354217/1438).

