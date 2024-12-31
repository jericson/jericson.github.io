---
layout: post
title: Thought experiment
subtitle: What would happen if we didn't have close votes?
tags: meta-post stack_overflow
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2015-02-19
comments: no
---

([Originally published](https://meta.stackoverflow.com/q/286407/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

After reading "[My Love-Hate Relationship with Stack Overflow: Arthur S., Arthur T., and the Soup Nazi](http://www.embeddedrelated.com/showarticle/741.php)" one of our developers wondered what would happen if we didn't have close votes. **Disclaimer**: I don't know of any actual plans to actually get rid of close votes. Like [legalizing marijuana](http://steve-yegge.blogspot.com/2009/04/have-you-ever-legalized-marijuana.html), a change like this isn't something that can be done overnight. It probably makes the most sense to think of this question as alternate reality fiction.

The most obvious result of no close votes is no closed questions. Since all questions would be open, that would allow more answers. While it's impossible to know how many more answers, we can make a guess:

<!-- 8593 -->

[![When closed questions are closed and when they are answered](/images/FGw0J.png)](https://data.stackexchange.com/stackoverflow/query/edit/274788#graph)

This graph looks only at questions that are currently closed and shows how long (in minutes) it took for them to be answered and closed. The x-axis is the time elapsed in minutes and the y-axis is number of events. There are more total answers than closures because I'm only counting the time of the most recent closure, but including all answers. (I've linked to a [SEDE query](https://data.stackexchange.com/stackoverflow/query/edit/274788#graph) so that you can see what I'm up to. But notice that the public data does not include deleted posts.) 

Even though I'm only looking at closed questions, many of them are answered and some are answered multiple times before they are closed. Including deleted questions and answers, half of all closed questions (50.6%, in fact) do have answers. On average, closed questions have 1.2 answers compared to 1.6 for all questions. So we can estimate that each closed question "costs" roughly half an answer.

I put "costs" in scare quotes because, of course, theoretically answers to bad questions are themselves bad. I know voting isn't a _perfect_ measure of quality, but it's the best we have:

<!-- 8595 -->

    N        question state answer Score Score > 0 Score < 0 Score = 0 
    -------- -------------- ------------- --------- --------- --------- 
     1298965 closed         2.211         50.7      6.6       42.7      
    14593333 open           2.013         55.7      3.6       40.7      

While closed questions are more likely to get bad answers, on average the answers on closed questions seem _better_ than on open questions. How can this be? It turns out, the results are skewed by questions that are closed late, which I define as a month or more after initially asked:

    N        question state answer Score Score > 0 Score < 0 Score = 0 
    -------- -------------- ------------- --------- --------- --------- 
     838328  early close    1.099         45.2      7.4       47.4      
     460642  late close     4.236         60.8      5         34.2      
    14593415 open           2.013         55.7      3.6       40.7      

There are probably other ways to slice this (such as number of answers, question score, or views), but questions are [closed early](https://stackoverflow.com/search?tab=newest&q=closed%3ayes) when the answers are likely to be unhelpful and [closed late](https://stackoverflow.com/search?tab=votes&q=closed%3ayes) when _additional_ answers are likely to be unhelpful. It's the difference between a question that's unclear and a question that's been answered too many times already.

Of interest, here is the [same query excluding deleted posts](https://data.stackexchange.com/stackoverflow/query/274906/average-answer-score-on-closed-questions?opt.textResults=true):
 
    N        question state average Score Score > 0 Score < 0 Score = 0 
    -------- -------------- ------------- --------- --------- --------- 
    474142   early close    1.687         63.6      2.2       34.1      
    252388   late close     4.741         71.1      1.9       27        
    12983819 open           2.268         61.6      1.5       36.9  

The other result of no closed questions _might be_ fewer deleted questions:

<!-- 8596 -->

    N       question state deleted % 
    ------- -------------- --------- 
     897851 early close    67.6      
     176921 late close     44.7      
    9916795 open           14.4   

I say "might" because a good percentage of deleted questions are [triggered automatically](https://meta.stackexchange.com/a/177675/1438). There's no reason to not also change the triggering conditions to take lack of closure into account.

Finally, no close votes would likely drive some users away. Close votes [represent a commitment to quality](https://meta.stackoverflow.com/a/286304/1438) and revoking the privilege to cast them would signal Stack Overflow doesn't care about quality. Or at least it would in absence of some alternative method of politely declining to field certain questions. Without knowing what that alternate method might be it's pretty much impossible to guess how many people would walk away from Stack Overflow.

On the other hand, the close vote mechanism inserts a certain amount of [friction](http://www.gwern.net/In%20Defense%20Of%20Inclusionism#friction) in the process of asking and answering questions. If we could swap it for a method that reduces the barriers to entry _without sacrificing quality_, it's certainly possible we'd attract more new users than the users we lose. 

We spend a [tremendous amount of time](https://meta.stackoverflow.com/questions/251489/lets-burn-down-the-close-queue) collectively trying to close questions. I started this thought experiment expecting to find signs that closing questions pay back that time in terms of saving effort on the part of answerers. Now I'm not so sure there is a net benefit. What am I missing?


---

Please direct comments to the [original post](https://meta.stackoverflow.com/q/286407/1438).

