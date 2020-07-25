---
layout: post
title: What can we do to encourage (or discourage) a second question?
tags: meta-post 
license: https://creativecommons.org/licenses/by-sa/3.0/
encoding: utf-8
author: <a alt="Jon Ericson" href="https://meta.stackexchange.com/users/1438/jon-ericson">Jon Ericson</a>
date: 2018-06-20
comments: no
---

([Originally published](https://meta.stackexchange.com/q/311504/1438) on meta Stack Exchange by <a alt="Jon Ericson" href="https://meta.stackexchange.com/users/1438/jon-ericson">Jon Ericson</a>.)

---

This question is mostly an excuse for sharing some research I've been doing. It essentially replicates [the data Shog gathered](https://meta.stackexchange.com/questions/216683/what-happens-to-new-users) a few years ago. I think the results suggest some systemic and [social](https://meta.stackoverflow.com/questions/368577/learning-the-art-of-not-replying-how-to-be-more-welcoming) solutions to our ongoing problems with question quality on Stack Overflow (and increasingly [other large sites](https://stackexchange.com/sites#questionsperday)). In particular, I think we've created a system that encourages bad questions at the expense of reasonable ones. Fixing that system will depend on having an accurate understanding of what motivates people to ask questions.

## The experiment population

One way to find out what causes people to ask questions is to ask them. We've been doing that research, but it's hard to avoid a skewed sample. People who respond to interview requests (such as the call at the bottom of the [recent blog post](https://stackoverflow.blog/2018/04/26/stack-overflow-isnt-very-welcoming-its-time-for-that-to-change/)) are probably not typical. Fortunately, we have a massive sample of users who have asked a question, received various types of feedback, and either asked another question or not.

For this experiment, I looked at:

1. Users who asked their first Stack Overflow question in 2018,
2. Have not answered any questions, and
3. Whose initial question was not flagged as spam.

I also looked only at events that occurred within 28 days (4 weeks) of the initial question. That's plenty of time to [accumulate feedback data](https://meta.stackexchange.com/questions/302970/how-is-question-quality-measured-in-a-b-tests) and gives a standard cutoff for when we stop looking for followup questions. In other words, if a question gets a comment, vote, answer or whatever more than 28 days after it was asked, that feedback is not counted in this analysis. (Also, questions younger than 28 days old have been filtered out.)

## Model inputs

To have a really complete model, we'd ideally have access to all the factors that go into a user asking a question. It would be nice to know, for instance, how many programming problems the user faces in a week. Then we'd want to know how many of those problems have solutions findable via Google and an estimate of how skilled each user is at searching. Unfortunately, we don't know these inputs. Instead, we're going to look at factors that are recorded in our database:

1. number of answers to the initial question,
2. comments by other users,
3. upvotes,
4. downvotes,
5. edits by other users,
6. whether the question was closed,
7. whether the question was deleted, and
8. the sentiment of any comments the question received. 

You probably know what all but the last of those mean. I'm using the AFINN lexicon I used to [evaluate comments on Interpersonal Skills](https://interpersonal.meta.stackexchange.com/a/2807/8). It's not particularly geared toward technical prose. (Variations of "kill" and "die" are rated -3 on a -5 to +5 scale, but would usually be neutral on Stack Overflow, I'd guess.) But I was able to verify that comments flagged and deleted as "rude or abusive" do, in fact, have a lower sentiment score than average. In the future, it might be better to use a lexicon tuned for technical writing. (I recently learned of [this paper](https://arxiv.org/pdf/1803.02300.pdf) which is a step in that direction.)

## The model

I used R's [`lm` function](https://www.rdocumentation.org/packages/stats/versions/3.5.0/topics/lm) to generate a simple linear model. Compared to physics models I've used in the past, the fit is not particularly good (adjusted R<sup>2</sup> = 0.01819). But that's to be expected in a [social science context](https://stats.stackexchange.com/questions/114919/low-r2-value-in-social-science-or-education-research). There are just too many factors _we could never account for_ to make a robust model. The important thing is that this model gives us a good idea of which actions are significant to future participation plus the direction and magnitude of that influence.

Here's the model summary for how many followup questions a user asks based on the response to their initial question:

    Call:
    lm(formula = FollowupQuestions ~ AnswerCount + CommentCount + 
        Upvotes + Downvotes + EditCount + Closed + Deleted + sentiment, 
        data = first_question)
    
    Residuals:
       Min     1Q Median     3Q    Max 
    -3.210 -0.394 -0.287 -0.158 48.540 
    
    Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
    (Intercept)   0.247344   0.007434  33.271  < 2e-16 ***
    AnswerCount   0.104152   0.005008  20.796  < 2e-16 ***
    CommentCount  0.026986   0.002302  11.723  < 2e-16 ***
    Upvotes       0.006195   0.004482   1.382    0.167    
    Downvotes    -0.050615   0.002640 -19.171  < 2e-16 ***
    EditCount     0.036656   0.006569   5.580 2.41e-08 ***
    ClosedTRUE   -0.093085   0.014601  -6.375 1.84e-10 ***
    DeletedTRUE   0.209662   0.014104  14.866  < 2e-16 ***
    sentiment     0.014276   0.014209   1.005    0.315    
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
    
    Residual standard error: 1.097 on 62131 degrees of freedom
    Multiple R-squared:  0.01832,	Adjusted R-squared:  0.01819 
    F-statistic: 144.9 on 8 and 62131 DF,  p-value: < 2.2e-16

Allow me to draw your attention to the coefficients one at a time:

1. The (Intercept) coefficient suggests that askers whose first question received no feedback at all would go on to ask 0.25 more questions. That's only a little lower than the average of all askers (0.39 follow up questions). 

2. As you might expect, the more answers a user gets on their first question, the more questions they will ask in the future. This is a large effect (adding 0.1 question per answer) and significant. People come for answers, and when they get them, that encourages users to ask again.

3. Comment count similarly correlates with followup questions, but to a far smaller degree than answers. I think one reason this happens is that people sometimes answer in the comment section. But there might also be an "all attention is good attention" effect in which getting a comment is seen as positive, because it means someone interacted with the question.

4. Getting an upvote encourages followup questions to a very small degree. This makes sense because new users generally don't care about the game. Rather, they want an answer to their question. Sometimes I see an angry comment asking how a question could have been upvoted. If they are worried about encouraging more questions, this model suggests they wasted their effort.

5. But not all votes are created equal. Downvotes discourage more questions half as much as answers encourage them. (Insert [my thoughts on the value of downvotes](/2015/05/18/downvotes.html).)

6. Edits are roughly as encouraging as comments. We sometimes hear new users complain about their questions being edited, but it actually seems to be welcomed by most askers.

7. Closing a question discourages new questions more than a single downvote. This could be a result of decreasing the potential number of answers (which is the primary purpose of closing). It's also likely closed questions are associated with more downvotes. I didn't separate out duplicate closures, which might be interesting to do in the future.

8. Contrary to [previous results](https://meta.stackexchange.com/a/216700/1438) this model indicates that having your initial question deleted _increases_ the odds you'll ask again. It may be that once you account for all the other variables, the main effect of deleting a question is that it is no longer going to produce a helpful result for the asker. So, naturally, the asker is incentivized to ask again. It's also possible people delete their questions with the intention of wiping the slate clean to start over. (I didn't separate out self-deletions.) According to this model, the positive effect of having the initial question deleted is _greater than the effect of getting an answer_. I'd like to look into this further.

9. I haven't talked about the significance tests yet, but comment sentiment are not significant according to this model. (Upvotes are also not significant in this sample.) A quick way to tell is to look at the absolute value of the coefficient estimate and compare it to the standard error. If the error is large relative to the magnitude of the coefficient, the estimate clearly isn't telling us much. In this model, positive sentiment _decreases_ followup questions, which is hard to explain unless it's just noise.

## So, um, comment sentiment doesn't matter, right?

Not using this method of calculating sentiment and according to this model. It's possible a better lexicon will turn up a stronger effect. It's also possible the effect is only significant with extremely negative (and positive) comments. But I think it's far more likely that **the effect of getting a comment drowns out any effect of how the comment was worded**. 

I should also point out that we are only looking at the effect on the asker themselves. Some questions are seen by hundreds or even millions of people. As much as we like to think comments are second class content, we put comments on questions in first class position:

[![Comments drowning out the answer][1]](https://stackoverflow.com/questions/503093/how-do-i-redirect-to-another-webpage)

To casual visitors, question comments are _more visible_ than answers. We know from talking to people who don't contribute that one reason is because they see discouraging comments on the site. In sum, leaving a negative comment on a bad question:

* encourages the OP to ask again and
* discourages anonymous users from asking a question.

Unless we are confident that non-users ask worse questions than we already have on the site, this seems like a poor design.

  [1]: https://i.stack.imgur.com/qIJfz.jpg

---

Please direct comments to the [original post](https://meta.stackexchange.com/q/311504/1438).

