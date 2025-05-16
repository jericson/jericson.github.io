---
layout: post
title: Stack Overflow is not yet a vast wasteland
subtitle: a history of moderator tooling
tags: stack_overflow
license: http://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: Jon Ericson
author_url: https://meta.stackoverflow.com/users/1438/jon-ericson
date: 2014-04-02
comments: no
---

([Originally published](https://meta.stackoverflow.com/a/251176/1438) on meta.stackoverflow Stack Exchange by Jon Ericson.)

---

This sentence [struck a nerve](https://meta.stackoverflow.com/search?q=user%3A1438+%5Bcomments%5D):

> The same could be said of probably 90% of comment flags - they're not really a good use of moderators' (or anyone's) time, we just haven't been able to figure out how they should be handled automatically.

To get an idea of how much time was spent handling various types of flag, I tabulated how many flags were raised on each type of content and each moderator decision:

    time   N       flag_result content_flagged 
    ------ ------- ----------- --------------- 
    130.63 4164687 Helpful     question        
      7.01 1031461 Helpful     answer          
     11.44  194600 Helpful     comment         
     24.91   44123 Declined    question        
       9.4   43952 Declined    comment         
      4.45   31877 Declined    answer          

The `time` column requires some explanation. I set the average handling time for all flags ever handled on Stack Overflow = 100.  So helpful question flags take ~30% longer to handle than other flags. It's important to not imagine this is the time a moderator actually spends making the decision. Rather, it includes the time is spent in the flag queue _plus_ the time to ponder and act on the flag. Note that some flags are handled by [10k users](https://meta.stackoverflow.com/help/privileges/moderator-tools); I didn't filter out those cases. The flag queue is substantially more complicated than a [FIFO](http://en.wikipedia.org/wiki/FIFO), so the `time` metric is a _very_ rough estimate of how costly flags are to process. 

On to the analysis: there are 4 times as many helpful question flags as helpful answer flags and 5 times as many of those as helpful comment flags. And yet, there are nearly as many _declined_ comment flags as declined question flags and _more_ comment flags are declined than answer flags.  To put it in perspective, 18% of comment flags were a clear waste of moderator time compared to 3% of answer flags and 1% of question flags. 

More troubling, **it takes nearly as long to decline a comment flag as to clear one as helpful**. This might seem strange if you haven't moderated comments before. But as [jmac noted](https://meta.stackexchange.com/questions/227454/stack-overflow-is-not-yet-a-vast-wasteland-a-history-of-moderator-tooling#comment745509_227454):

> That is the difficulty with comments. They are plentiful, connected, and require grokking of context.

When evaluating an flag on a post, the text of the post itself is often sufficient to make a judgement. Occasionally, you'll want to look at answers to flagged questions or the question of a flagged answer just to be sure. But evaluating comments requires looking at the comment in context of other comments, the question, all the answers, and perhaps some of the other comments the user made in the past. As a result, moderators often prefer to purge an entire comment thread than to meticulously sort the good from the bad.

When you finish evaluating a flag, the actions you can take to fix the problem vary widely by content. For questions, you might close/open, edit, comment, delete, protect, lock, etc. Answers are limited to edits, deletion, comments, post notices, locks, and voting. Realistically, comments present a binary choice: delete or leave be. It's like replacing [this toolbox](https://i.sstatic.net/Zjv5x.jpg), with [this one](http://upload.wikimedia.org/wikipedia/commons/9/9b/Mallet_menuisier.jpg). Even in the best case, our moderators' talents are wasted on comment flags.

Let's divide the comment flags by type:

    time  N     flag_type                             flag_result length score weight
    ----- ----- ------------------------------------- ----------- ------ ----- ------
     8.25 67664 Comment Not Constructive Or Off Topic Helpful      92    1.14   7.1 
     5    22939 Comment Not Constructive Or Off Topic Declined    127    4.17  12.5
     7.65 44558 Comment Obsolete                      Helpful     109    0.66   7.3
     4.91  2394 Comment Obsolete                      Declined    127    2.79  10.5
    27.8  42361 Comment Rude Or Offensive             Helpful     118    0.77   7.9
    24.38 10609 Comment Rude Or Offensive             Declined    147    2.52  11.8
     2.4  28094 Comment Too Chatty                    Helpful      67    1.14   5.5
     3.02  3285 Comment Too Chatty                    Declined    121    6.32  14.1
     6.86 11923 Comment Other                         Helpful     129    0.67   8.6
     3.87  4725 Comment Other                         Declined    144    2.23  11.6

`length` and `score` refer to the average length and upvotes of the flagged comment. `weight` is `length/15 + score`, which is loosely based on [hiding scheme](https://meta.stackexchange.com/q/204402/1438). I included those because in every case the comments with declined flags (presumably because the moderator thought they were worth keeping) are longer _and_ have a higher score than the helpfully flagged comments (which were likely deleted). 

The second thing to notice is that there's a pronounced difference between flag types in terms of declined rate:

    25%  Comment Not Constructive Or Off Topic
     5%  Comment Obsolete
    20%  Comment Rude Or Offensive
    10%  Comment Too Chatty
    28%  Comment Other

The accuracy of obsolete comments flagging is still worse than for questions and answers, but it's at least in the right county. There seems to be wide disagreement between flaggers and ♦ moderators about what counts as "Not Constructive Or Off Topic". I was surprised that "Rude Or Offensive" flags were so often declined. Nor do I understand why they take so much longer to process than other comment flags.

# Summary

Our moderators do a first-class job of handling flag about our second-class citizens. But it's frustrating that their time is so often wasted looking into trivia. The mechanics of handling comment flags are about as efficient as possible, but evaluating comment flags is unlikely to scale. Therefore, we need to either find ways to automate comment moderation or open it up to the masses.

---

Please direct comments to the [original post](https://meta.stackoverflow.com/a/251176/1438).

