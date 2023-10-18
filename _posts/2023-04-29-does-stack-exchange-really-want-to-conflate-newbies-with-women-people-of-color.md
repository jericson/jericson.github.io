---
layout: post
title: Does Stack Exchange really want to conflate newbies with women/people of color?
tags: meta-post
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon &#39;links in bio&#39; Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-links-in-bio-ericson
date: 2018-04-29
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/366797/1438) on meta.stackoverflow Stack Exchange by Jon &#39;links in bio&#39; Ericson.)

---

For the last 6 years or so, the system has [blocked between 40-50% of all attempts to ask questions](https://meta.stackoverflow.com/a/358412/1438). The trend has been increasing without much work being done to add blocks. Clearly some people just give up. But even more clearly, some people are persistent enough to get around all the barriers we place in front of them to get their question in front of you, the regular users of the site. (By the way, there's a good chance some questions are _getting worse_ as askers try things that that are orthogonal to good questions.) I'm gonna venture to guess that not many of those persistent askers are complaining on Twitter about that.

Meanwhile, we've [heard from](https://medium.com/@Aprilw/suffering-on-stack-overflow-c46414a34a52) another set of people that **don't bother using the site at all**. Maybe they asked once and didn't feel good about the experience. Maybe they saw other people complain about their bad interactions on the site. Maybe they found a question via Google and saw intimidating comments between the question and the answer. At any rate, they are not asking questions and are clearly not part of the problem.

Maybe (and I know this is crazy) the **second group could be part of the solution**. Look, I admire those of you who stick with this crazy place [day after day](https://stackoverflow.com/help/badges/83/fanatic). You don't have to do it, but you care about quality information on the Internet, helping people, fixing problems and, perhaps most profoundly, the community itself enough to keep coming. It's frustrating to me and everyone on the community team that you gotta deal with the same boring duplicate questions (which are probably homework problems anyway) and code dumps from folks who don't know which end to stick in the compiler. That's why we built blocks and review queues and so on. But wouldn't it be better if we just had more questions from people who are really interested in learning? And wouldn't it be great if they learned enough to start helping out with triaging, answering, reviewing and closing questions? And, dare I dream, what if they helped us build a system that isn't abused by terrible questions?

When I worked at JPL, we had a complicated system designed to run science algorithms on satellite data. Every now and then, the system would get stuck and I'd have to restart it manually. If that happened in the middle of the night, we'd lose hours of precious processing time. After several months of this I finally found the problem. They system had a half dozen processes that communicate via [IPC](http://man7.org/linux/man-pages/man1/ipcmk.1.html). One of the servers would stop responding to messages, which prevented the entire system from running new jobs. There was a bug and I had the worst time finding it because I couldn't reliably reproduce it. We were almost ready to start doing shifts so that someone would always be around to babysit the process.

One day, I asked myself what that process actually did. It had a generic-sounding name, `scheduler`, if I recall. So it scheduled stuff. It would get some job metadata (from `planner`), request resources (from `resource_manager`) and if there was enough resources, it would tell `planner` to send the job to `runner`. It was a middleman that added nothing to the process. And with that, I had a solution. Over a few days, I stripped out the buggy process, let `planner` talk directly to `resource_manager` and slept a lot better at night.

I've got this new job now and we're living with another buggy process. Despite adding [new review queues](https://meta.stackoverflow.com/questions/278380/help-us-test-question-triage), we're getting [a higher ratio of objectively bad questions over time](https://meta.stackexchange.com/questions/302970/how-is-question-quality-measured-in-a-b-tests). Meanwhile, our [group immunity system](http://shirky.com/writings/group_enemy.html) is working overtime: downvotes, close votes, flags and hostile comments. But those aren't working either. Maybe people _feel better_ and maybe bad questions are getting deleted. Nothing stops the tide, however.

You know what would? If we just stopped answering bad questions. But that's not enough. It turns out that while answering questions encourages people to ask again, [so does commenting and editing](https://meta.stackexchange.com/a/216700/1438). That's not enough either because people are also more likely to ask again if they get a vote (up _or down_). Bizarrely, even getting their questions closed is slightly encouraging to these users. The only things that really discourages another question is deleting or completely ignoring that first question. This week our data scientist analysed the [Tumbleweed badge](https://meta.stackexchange.com/help/badges/38/tumbleweed) which is awarded for being ignored. She found the people who earned it asked fewer subsequent questions than people who got one (and only one) feedback event, including a downvote.

If 

1. our current systems of quality control aren't working,
2. potentially productive contributors are being repelled by those systems and
3. ignoring bad questions is the best way to discourage a user from coming back,

could it be possible to solve both problems by ripping out counterproductive systems? 

---

You might be wondering why we are suddenly talking about "newer coders, women, people of color, and others in marginalized groups". Isn't this a knee jerk reaction to the latest round of criticism on Twitter? My reaction isn't. I've been worried about our gender imbalance [for years](http://jericson.github.io/2015/04/22/cs_females.html). Last year, several of us in the company [put ourselves in the shoes of a new user](http://jericson.github.io/2018/03/23/race_to_1k_6.html). Within the company, this problem has been a constant source of concern as long as I've been here. So why don't we talk about it more often?

Here at Stack Overflow, Inc., we like to think of ourselves as the [rescuer](https://en.wikipedia.org/wiki/Karpman_drama_triangle) of developers. We tell ourselves that we help programmers by:

* hosting essential answers to the Internet's questions,
* helping developers [discover products](https://stackoverflow.blog/2016/10/26/why-stack-overflow-doesnt-care-about-ad-blockers/) they didn't know they always needed,
* <strike>[find their dream job](https://stackoverflow.com/jobs)</strike>,
* <strike>[connect with other people in their organization](https://meta.stackoverflow.com/questions/330427/the-un-shipping-of-teams)</strike>,
* <strike>[fix documentation](https://meta.stackoverflow.com/questions/354217/sunsetting-documentation)</strike> and
* [(coming soon) host questions specific to their organization](https://stackoverflow.com/teams).

We've not really hit the ball out of the park on any of our goals that aren't directly Q&A. Meanwhile, we've done pretty well with not only Stack Overflow, but with [over 170 sites on the network](https://stackexchange.com/sites#oldest). As a result, our resources (read, executive priorities) have been focused on parts of the business that are doing less well. As an organization, we took those communities as a given. It was discouraging at times to be a community manager. The shift back to **solving the problems experienced by the community has renewed my hope**.

Some of you have expressed anger. It seems Jay's blog post paints the community with charges of racism and sexism. Encouraging readers to take the Implicit Association Test (IAT) struck some as unfair. (Indeed, [meta analysis suggests the test has weak predictive power](https://onlinelibrary.wiley.com/doi/full/10.1111/sjop.12288), though "IAT can still be a useful tool for researchers, educators, managers, and students who are interested in attitudes, prejudices, stereotypes, and discrimination.") [Anticdotally](https://meta.stackoverflow.com/a/309924/1438), overt harassment is rare and is quickly removed from the site. Compared to unmoderated and under-moderated spaces, our sites are incredibly civil. Pseudonyms and anonymity mean we often don't know which users are part of marginalized groups at all.

To paraphrase [St. Paul](https://www.esv.org/Philippians+1/):

> What then? Only that in every way, whether in pretense or in truth, [company resources are going back to fixing Q&A], and in that I rejoice.

There's a bit of a through-the-looking-glass effect going on. For those of us who have acclimated to this side of the mirror, Stack Overflow culture might be a little gruff, but it's nearly always fair. For people who have recently arrived, it's [all a bit confusing](https://www.youtube.com/watch?v=Qpb_4cAWP0U). We've seen that even [minor improvements to the ask page](https://meta.stackoverflow.com/questions/363051/ask-a-question-template-v1-experiment-results) can reduce bad questions. This is the sort of change [we're working on right now](https://meta.stackexchange.com/a/308819/1438). We think that will help **all sorts of new users understand the community**. If so, it will be a relief to all of us.


---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/366797/1438).

