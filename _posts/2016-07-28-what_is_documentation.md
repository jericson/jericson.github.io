---
layout: post
title: What, exactly, is Documentation?
tags: meta-post documentation
license: https://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: <a alt="Jon Ericson" href="https://meta.stackoverflow.com/users/1438/jon-ericson">Jon Ericson</a>
date: 2016-07-28 20:19:53
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/330003/1438)
on meta.stackoverflow Stack Exchange by <a alt="Jon Ericson"
href="https://meta.stackoverflow.com/users/1438/jon-ericson">Jon
Ericson</a>.)

---

We've tried to explain Stack Overflow Documentation in the [tour](https://web.archive.org/web/20170803203242/https://stackoverflow.com/tour/documentation), the [blog post announcement](https://blog.stackoverflow.com/2016/07/introducing-stack-overflow-documentation-beta/) and the [meta announcement](https://meta.stackoverflow.com/questions/328405/documentation-has-entered-public-beta). If after reading all that you are _still unsure_ about what the feature is for, let me try another approach: long, wandering personal anecdote. 

For [two thousand years](https://en.wikipedia.org/wiki/History_of_encyclopedias) encyclopedias were outrageously expensive. The only people who could read them were either extremely rich or in the business of copying books. As technology advanced, the price of reproducing books dropped and more people were able to get their hands on compiled volumes of knowledge. By my grandparent's generation, encyclopedias were sold door-to-door as subscription service (starting with Volume 1: "Aalto—Arithmetic"). Competition and technology drove down the price to the point my parents bought me an entire set (World Book (used), if I recall correctly) when I was in junior high. The year after I graduated high school, Microsoft released [an encyclopedia on CD-ROM](https://en.wikipedia.org/wiki/Encarta), which opened the doors to even more people. Including the cost of the PC, even that was out of the reach of many, however. 

Then Wikipedia (plus Google) changed Encyclopedias forever. Not only has the cost dropped to essentially free for readers, the **barrier for entry to contribute evaporated**. Instead of hiring top experts in the topic, as traditional encyclopedias do, Wikipedia remains [largely open](https://en.wikipedia.org/wiki/Wikipedia#Openness) for anyone to contribute to, which seems like a dubious idea. However, [as Joel put it](https://www.joelonsoftware.com/items/2008/12/28.html):

> The early criticism of Wikipedia: “I went to this article and it was wrong.” By the time you read the criticism, the article has been fixed. There was that year, not last year, but the year before, when every traditional journalist wrote a funny thought piece in their newspaper about something they looked up in Wikipedia and just how wrong it was. By the time their column appeared in print, the Wikipedia article was corrected, making a liar out of the journalist. Eventually they learned to stop writing that story.

So to steal my own thunder, Joel said that stuff about Wikipedia in order to describe Q&A. By any reasonable measure, Stack Overflow did to programming questions what Wikipedia did to encyclopedias. And by "Stack Overflow", I don't just mean the model which [can be cloned](https://meta.stackexchange.com/questions/2267/stack-exchange-clones), but the community of programmers of all abilities who have donated time and effort to create something useful. We try our level best to make the system run smoothly, but the magic is really in _you_, the people who write and curate the content.

Computer manuals followed the evolution of encyclopedias at a much greater pace. When I was a working programmer, we had tons of printed manuals scattered across our desks and taking up shelf space. A few years ago, there was a massive office shakeup and people were forced to move their stuff from one cubicle to another. (To be clear, this was [not Stack Overflow](https://blog.stackoverflow.com/2015/01/why-we-still-believe-in-private-offices/).) Printed manuals found their way into piles in the breakroom with "free!" sticky-notes. I grabbed a few out of nostalgia, but most of them ended up in the recycling because the information is all online now anyway.

Most technical Documentation is in the "Encarta online" stage of evolution. Ages ago, I bought [_The Perl CD Bookshelf_](https://www.oreilly.com/pub/pr/861), which, as the name suggests, was a collection of Perl books on CD. Since the content was formatted as HTML, the CD included a little web server so that you could read in your browser. As strange as it sounds, that was revolutionary at the time. Unfortunately, the revolution stalled. If you look at Perl's official documentation, which includes many [well-written articles](https://perldoc.perl.org/perllol.html), it's not too dissimilar from pages served off a CD. Being an open source project, there is at least a way to update Perl's documentation, but it's not as easy as editing Wikipedia. 

Ok. So we want to do to Documentation what we did to Q&A and what Wikipedia did to encyclopedias, right? Not so fast, cowpoke. Both the encyclopedia and programmer question landscapes were dysfunctional when they were replaced. Stack Overflow launched to replace [the hyphen site](https://meta.stackexchange.com/q/12989/1438) and a disparate collection of mailing lists and newsgroups. Like many other programmers, I leapt into the stream like a [grizzly during spawning season](https://www.nps.gov/yell/learn/nature/beartrout.htm). The system didn't start off perfect, but it was _far better_ then anything else that existed. 

To be honest, there is a lot of excellent documentation out there. [Emacs has a wiki](https://emacswiki.org/) that can be edited Wikipedia-style and is of high quality. When I run across a problem using Emacs, I often prefer the wiki over the official documentation because it tends to have fresher information. And if you already are comfortable with existing documentation, I'm not sure there's any reason to switch. Plus, it's a [waste to duplicate effort](https://meta.stackoverflow.com/a/328807/1438) when there's no pressing need. Therefore, Stack Overflow Documentation needs to offer something new. 

What we hit on was that **most technical documentation lacks sufficient emphasis on examples**. A number of people we've talked to have had an experience something like mine but with different technologies:

1. I need to write a query for research I'm doing with [SEDE](https://data.stackexchange.com/), but I forgot how do something in SQL or maybe don't know if it's even possible.

2. Google gives me a link to the official documentation, which I click on out of a sense of duty. After several minutes scanning the manual, I give up and scroll to the examples at the bottom of the page.

3. I hit the back button, find the Stack Overflow link, use the sidebar links to jump from the MySQL version to the SQL Server answer, and use the top answer as a starting point.

The problem with step #2 isn't that the official documentation is _bad_ (or at least that's not the primary problem). Rather, the manual is written from the perspective of _someone developing SQL Server_ and not from a user's perspective. (Meta comment: that's at least part of the reason the resources I linked to in the first paragraph might not work for you.) I don't need to know all the theory of how the feature works or the edge cases or the optional parameters or any of the things it might be important to document. I just need a little reminder of where to start. Even if the question turns out to be nothing like the problem I'm trying to solve, having a bit of working code helps me to move forward.

So, while we'd like to revolutionize Documentation, we're starting off with a humbler goal. When programmers need a snippet of code to demonstrate some language feature, they can search Google, click a Stack Overflow link, and get that code without the distractions of questions, comments or any of the cruft a the top of most online documentation. We are betting the feature on the proposition that **programmers will appreciate easy access to good examples**. 

Now there are a lot of other features we've thrown into the mix because they are things we wish documentation did better as a rule or so that Documentation fits into the Stack Overflow ecosystem. But if you could do only one thing, we'd like you to consider contributing, reviewing and honing examples. Obviously there are other ways to get involved, but the core of the feature is **examples by and for programmers**.

---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/330003/1438).


<!--  LocalWords:  leapt utf href http Aalto SEDE MySQL SQL
 -->
<!--  LocalWords:  LocalWords
 -->
