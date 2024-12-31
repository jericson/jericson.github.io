---
layout: post
title: My OpenSSL warrant canary
tags: community openssl
comments: true
---

Today I imported [posts I'd written for the Stack Overflow
blog](https://jlericson.com/tag/blogoverflow.html) onto my blog. Most
of them are end-of-year review posts so I've been thinking about how
that job changed from [how it
started](/2013/08/09/please-welcome-jon-ericson-community-manager.html).[^1]
By the time I [left Stack
Overflow](https://jlericson.com/2020/01/17/leaving_stack.html), it was
clear the company had experienced mission creep and ["[helping] coders
help each other become better coders by sharing their knowledge with
one
another"](https://meta.stackoverflow.com/questions/381927/is-the-official-direction-of-stack-overflow-now-to-help-educate-the-next-generat/381935#381935)
was no longer the top priority.

In the new year I will [start work at
OpenSSL](/2024/12/10/openssl_job.html), which has a very clear
[mission statement](https://openssl-mission.org/). Reading [the
Foundation's annual
report](https://openssl-foundation.org/OpenSSL-Foundation-2024-Annual-Report.pdf)
reminds me of the salad days of Stack Overflow when everyone
recognized that success depended on strangers answering each others'
questions. A difference is that OpenSSL has maintained it's focus for
25 years.[^2] Having met the OpenSSL Foundation team, I strongly
believe them to be upright and effective custodians of the mission. 

Still, there are always risks. For instance:

* Quantum computing could trivialize the mathematical problems that
  form the foundation of modern cryptography.[^3]
* A government could discover a flaw in the library and take actions
  to prevent the flaw from being fixed or disclosed.
* Some other mission could take priority or resources away from the
  current mission.

[Conflicted loyalty](https://jlericson.com/2023/10/16/catija.html) is
an occupational hazard of community management. While open
communication is ideal, there can be times when it's not possible or
even counterproductive. So I've decided to set up a [warrant
canary](/canary) that says (as of the time of writing):

> I warrant that the [OpenSSL
Foundation](https://openssl-foundation.org/) is effectively pursuing
[its mission](https://openssl-mission.org/):
>
>> We believe everyone should have access to security and privacy
>> tools, whoever they are, wherever they are or whatever their
>> personal beliefs are, as a fundamental human right.

Traditionally a [warrant
canary](https://www.cloudflare.com/learning/privacy/what-is-warrant-canary/)
allows a service to communicate indirectly that an event has occurred
which might impinge on users' privacy. Usually it anticipates a
warrant that requires an organization to turn over data to some
law-enforcement agency. That eventuality seems unlikely for OpenSSL,
so maybe it's not the best name. Still, it has a very similar
function. If I ever discover that my statement is wrong, misleading or
over-taken-by-events, I will edit or delete the [canary](/canary), which is an
invitation for interested parties to investigate. 

For what it's worth, the most likely outcomes are, in order:

1. I won't do anything with the canary because I leave OpenSSL without
   any cause to change it.
2. I'll be able to report potential issues publicly and the canary
   will be redundant.
3. My site will break when I do a [periodic
   upgrade](https://meta.jlericson.com/t/updating-to-a-remote-jekyll-theme/331)
   and the canary will send a false alarm.
4. Nobody will notice when I change the canary.
5. Nothing can be done about whatever I'm warning about.
6. My canary sacrifices itself for the public good.

The last outcome seems worth the minimal effort.

[^1]: That I'm taking the time to preserve these posts is a sign that
    I've lost trust in the organization I was so proud to be joining a
    decade ago.

[^2]: Based on [the
    method](https://meta.jlericson.com/t/using-the-rule-of-three-to-estimate-the-end-of-the-world/332)
    I use for calculating the destruction of civilization via nuclear
    war, I'm estimating there's a ~10% chance of catastrophic failure
    this year and the median time to failure at 6ish years. 
    
[^3]: By the way, this could be an end-of-civilization scenario given
    our dependence on internet commerce and communication.
<!--  LocalWords:  OpenSSL
 -->
