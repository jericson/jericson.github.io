---
layout: post
title: Was there a Documentation post-mortem?
tags: meta-post documentation
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2018-05-08
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/367572/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

I never did write that retrospective. (Though I did touch on Documentation in [my 2017 retrospective](https://stackoverflow.blog/2018/01/31/stack-exchange-2017-review/) and [my personal blog](http://jericson.github.io/2017/12/08/race_to_1k_5.html).) We also used [100% of Town Hall #5](https://chat.meta.stackexchange.com/rooms/89/conversation/town-hall-5-9-august-2017) to talk docs. Last summer our UX researcher intern, Horyun Song, interviewed 13 technical writers and wrote up [her results](https://web.archive.org/web/20191019010027/http://horyun.design/docs) on her website. She did a more thorough and expert job than I did, but since you asked:

# Why Documentation didn't work

There's a great book by Donald Norman called [_The Design of Everyday Things_](https://en.wikipedia.org/wiki/The_Design_of_Everyday_Things) (_DOET_) which centers on the concept of [affordance](https://en.wikipedia.org/wiki/Affordance). An example (not from the book) is the modern phone screen that _affords_ touching. My 5-year-olds expect screens to respond when touched, which is why the bottom few inches of the living room TV are covered in fingerprints. Older generations struggle to use touch screens because years of reinforcement have taught us that touching screens only results in smudges. (That said, I sometimes find myself touching words on physical books in hopes that the definition will appear as on my Kindle.)

We knew going into Documentation that people don't much like writing it. It tends to be boring material, it requires subject knowledge _and_ understanding of the target audience, feedback (if you ever get it) is often negative, and the task lacks the glamor of development. So much of our work was aimed at creating good affordances for writing:

* Anyone could propose changes and the barriers for approving them were low.
* During the private beta, the default tag view was geared toward authors, not consumers.
* Integrating the existing reputation system into Documentation was a primary design goal.
* Far more work was put into the editor (which used [CommonMark](http://commonmark.org/)) than in organization. (Most egregiously, I proposed [hierarchy would arise organically](https://meta.stackoverflow.com/a/328351/1438).)

And, in fact, we did get lots of contributions both during the private beta, [at launch](https://meta.stackoverflow.com/questions/329557/documentation-update-july-25th) and each time we announced a new set of changes. Unfortunately, activity died off after a short while and we never had the sort of engagement we hoped for. Meanwhile, we made a few missteps at launch (notably, [#RepGateApocalypse](https://meta.stackoverflow.com/questions/328703/addressing-documentation-repgateapocalypse)) that soured the community on the project. At some point, I noticed I was [getting a handful of downvotes](https://data.stackexchange.com/meta.stackoverflow/query/849217/how-many-downvotes-do-i-get-per-tag?user=1438) whenever I posted anything on meta about Documentation. People [loved the concept](https://meta.stackoverflow.com/questions/303865/warlords-of-documentation-a-proposed-expansion-of-stack-overflow), but not the execution. 

Horyun [makes a wonderful analogy](https://web.archive.org/web/20191019010027/http://horyun.design/docs) involving chairs. Imagine walking into a room with these two setups:

[![Chaos vs. Organization][1]][1] 

The right hand side is clearly more welcoming since the chairs are arranged in a way that welcomes (_affords_) sitting. Without clear organization, Documentation started to look a lot more like the the chairs on the left. Private beta users saw a clean slate and users at launch walked into a work in progress. Some topics were better organized than others, but our focus on content creation distracted from content curation. 

Even so, I believe we were headed toward success. If you remember when touch screens first hit the market, they didn't work so well. They didn't always register interactions and the underlying paradigm was the mouse pointer. It took years of [iteration](https://meta.stackoverflow.com/questions/349410/tearing-down-the-structure-of-documentation) in both hardware and software to get something that felt right. Stack Overflow has changed the way people relate to documentation making it [easier to search the long-tail](http://jericson.github.io/2016/08/25/long_tail_docs.html). Typing a question into Google will show you both results from official documentation and practical examples from Stack Overflow. More and more projects are opening up their documentation for public contributions.

Ultimately, it was resource allocation that ended Documentation. In the best scenario, the connection between the Documentation project and revenue was tenuous. Assuming we brought in new contributors (we did, but not as many as we hoped) and assuming they created a Developer Story, it might help us [sell our hiring tools](https://www.stackoverflowbusiness.com/talent) to new customers. Meanwhile, we had begun [a project that offered more immediate returns](https://stackoverflow.com/teams) and will likely require far less iteration. 

It might not be immediately obvious, but Documentation has changed how Stack Overflow Inc. operates. As you might gather, we didn't do a lot of user research upfront, but by the end of the project [user interviews](http://jericson.github.io/2016/06/30/usability_tests.html) directed our development process. Not only were we looking at meta feedback, which happens only when some aspect of the experience is particularly frustrating, but also at the more subtle cues when people start interacting with the site. A couple of weeks ago, I sat in on some interviews [Donna](https://stackoverflow.com/users/4406529/donna?tab=profile) conducted with Teams beta users. We discovered things that changed the development process and makes the experience better for all users.

Personally, I will always be grateful for my experience on Documentation. For the first time in my career as a Community Manager, I was part of an integrated development team. Along with the Product Manager, I triaged community feedback, answered meta questions and planned update announcements. Along with the developers and designers, I proposed and tested changes to the system. And I reported progress to the rest of the community team in our weekly meeting. Stack Overflow is _community software_. It can't be developed outside the context of the people who make it run. Working (and often failing) to listen to our users helped me grow into this job.

  [1]: /images/uSSNr.png

---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/367572/1438).

