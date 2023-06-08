---
layout: post
title: How's the Stack Overflow strike going?
tags: community strike
comments: true
---

We're three days into the Stack Overflow moderator strike that I've
written about a few times on this site:

* [Stack Exchange moderator strike](/2023/05/31/mod_strike.html)
* [Moderation by humans](/2023/06/02/strike_comentary.html)
* [Why I'm signing the Stack Overflow strike letter](2023/06/04/signing_on.html)

From the perspective of executives at Stack Overflow, I suspect the
spin on news sites is pretty important. They can't be happy so far:

[![Vice article as the top result for "stack overflow
strike"](/images/SO_strike_google.png)](https://www.google.com/search?q=stack+overflow+strike)

The first result is a paid sponsorship that I assumed was just on
"stack overflow X" queries. But a few more searches prove that Stack
Overflow hasn't [paid for all search
results](https://ads.google.com/intl/en_id/home/resources/what-is-paid-search/). (I'm
using incognito windows, by the way, because Google likes to personalize
results. Feel free to try these queries yourself!) Here's just "stack
overflow" for instance:

[![ChatGPT Banned as a top result for "stack
overflow"](/images/SO_chatgpt_banned.png)](https://www.google.com/search?q=stack+overflow)

Not sure how much to read into the "Breaking Silos" headline.  It
probably isn't supposed to remind me of
[strikebreakers](https://en.wikipedia.org/wiki/Strikebreaker) (though
it totally does). More likely there's an unfortunate caching of a
slogan from before the strike was a known possibility. The link to
[the temporary ChatGPT
policy](https://meta.stackoverflow.com/questions/421831/temporary-policy-chatgpt-is-banned),
the invalidation of which sparked the recent dispute, shows up because
it's been upvoted 3779 times. That makes it the [highest scoring
question about Stack
Overflow](https://meta.stackoverflow.com/search?tab=votes&q=score%3a2000...&searchOn=3)
and presumably Google's algorithm thought the top-voted meta question
would be helpful to show people searching for Stack Overflow.

More critically, the top non-Stack Overflow result is a Vice article:
["Stack Overflow Moderators Are Striking to Stop Garbage AI Content
From Flooding the
Site"](https://www.vice.com/en/article/4a33dj/stack-overflow-moderators-are-striking-to-stop-garbage-ai-content-from-flooding-the-site). That
headline is _even more_ pro-strike than the one the strikers
themselves picked: ["Moderation Strike: Stack Overflow, Inc. cannot
consistently ignore, mistreat, and malign its
volunteers"](https://meta.stackexchange.com/questions/389811/moderation-strike-stack-overflow-inc-cannot-consistently-ignore-mistreat-an). Not
until the second to last paragraph does the reporter present the
company's position:

> Stack Overflow’s Vice President of Community, Philippe Beaudette,
told Motherboard in a statement that, “A small number of moderators
(11%) across the Stack Overflow network have stopped engaging in
several activities, including moderating content. The primary reason
for this action is dissatisfaction with our position on detection
tools regarding AI-generated content. Stack Overflow ran an analysis
and the ChatGPT detection tools that moderators were previously using
have an alarmingly high rate of false positives.” The moderators write
in their post that they were aware of the problems with the detection
tool.

I should mention that I met Philippe a year or so ago. My impression
is that he really does want the best for the community, but the
company has put him in the difficult spot of spinning the strike as
unreasonable and insignificant. Notice the Vice article contextualizes
the "alarmingly high rate of false positives" claim. This isn't a
management-friendly write-up.

To pick on the "11% of moderators" claim that I've seen the company lean
on, that number is outdated. There are [538
moderators](https://stackexchange.com/about/moderators)[^1] right
now. [The open letter](https://openletter.mousetail.nl/) has been
signed by 105 moderators. So the actual number is 19.5%. But that's
not the important number anyway. Moderation follows the [Pareto
principle](https://en.wikipedia.org/wiki/Pareto_principle) in that
most moderation is done by a minority of moderators. On the Stack
Exchange network, [Stack Overflow moderators take the
crown](https://meta.stackoverflow.com/questions/422885/2022-a-year-in-moderation). So
the real question is how many Stack Overflow moderators have stopped
moderating?

Well, [14 of the 24 active Stack Overflow
moderators](https://meta.stackoverflow.com/questions/424984/how-is-stack-overflow-inc-prepared-for-a-possible-moderation-strike-by-communit/424988#424988)
signed on before the strike officially started. As with the network as
a whole, a minority of SO mods handle the majority of the
flags. Unsurprisingly, the most active moderators signed on and by the
first day of the strike [the most active SO moderator was a company
employee](https://discord.com/channels/628507458452586497/676092389672222758/1115343704178303007). 

There's also the problem that people besides moderators are signing
the letter in support of the moderators. It's already [over a
thousand](https://openletter.mousetail.nl/) signatories. The [last
letter](https://web.archive.org/web/20201007124631/https://dearstackexchange.com/)
topped out at 855. Now the previous dispute was a lot harder to
understand outside of the Meta community. You don't need to go into a
long back story to explain that the company isn't letting moderators
block ChatGPT answers.

I was an employee during the pronoun incident. It was extremely hard
to explain to people who weren't active in the community. ([My attempt
a half year later](/2020/04/03/pronoun_retro.html) doesn't cover the
half of it.)  Internally, the company line was simple and closely
followed the [public
explanation](https://www.theregister.com/2019/10/01/stack_exchange_controversy/):

> [She] would not use stated pronouns, which violates our current CoC.

A lot of people in the company accepted this simple statement as a
complete explanation. It was a lot easier to imagine the problem was
one transphobic moderator than to accept the company was slandering
her. (It bears repeating the moderator isn't transphobic and I won't
mention her name here to avoid search bots making a connection.)  I'd
not be surprised if to this day there are employees (and ex-employees)
who think the company was fully justified in what we did.

This time around is going to be a lot harder because the story for the
strike is simpler than the line the company has been pushing so
far. To [steel man](https://constantrenewal.com/steel-man) the
argument:

1. GPT detectors are unreliable.
2. Human intuition is prone to bias.
3. Most of the suspensions for AI-generated content used those
   unreliable techniques and therefore are invalid.
4. Some answers that have been aided by AI are useful.
5. Deleting AI-assisted content and suspending people who merely look
   like they are using ChatGPT is causing a rapid decline in content,
   participation and traffic, which harms the community.
6. Moderators could just apply the pre-existing quality standards and
   not even attempt to determine if the content was AI-generated. That
   will solve the problem without needing to appeal to unreliable and
   biased heuristics.

If this had been what the company communicated, I'm not sure we'd be
talking about it right now. But the company (and [particularly the
CEO](https://twitter.com/search?q=%40pchandrasekar%20AI&f=live)) have
been pushing AI since April. It's seems more likely the CEO suddenly
noticed his pet project was at risk than that the company had done a
careful analysis of the situation.[^2]

It's honestly hard to come up with a reason why a community-centric
company would have any interest in machine-generated content. Back in
April, [College Confidential tried using ChatGPT to start
conversations](https://talk.collegeconfidential.com/tag/chatgpt). When
you see one example, it's impressive. But as you see them all
together, you start to spot patterns. ChatGPT loves to talk about
universities' ["competitive
environment"](https://talk.collegeconfidential.com/search?q=Competitive%20Environment)
and uses almost the exact words to describe it at every school. This
is the LLM variant of the [Barnum
effect](https://en.wikipedia.org/wiki/Barnum_effect). It gets boring
quick and that's not helpful for a community.

I find it a lot easier to see how a CEO might believe that somehow AI
could be the answer to the company's problems. Whatever the reason,
the company and the community are once again telling conflicting
stories. I can repeat without modification what [I wrote three year
ago](/2020/05/16/power_of_story.html#stack-overflow-lost-its-story):

> There has never been a force powerful enough to eradicate a story as
> long as there are people willing to tell it. That cuts both
> ways. The company can't compel users to accept their marketing
> messages and the community can't change what the company has decided
> it needs to do to run its business. But both sides can start telling
> stories to bridge those gaps.

---

[^1]: [No relation.](https://fivethirtyeight.com/)

[^2]: Maybe both are true. <strike>I don't know since I haven't seen
    the data.</strike> I just saw that the [data is now
    public](https://meta.stackexchange.com/Questions/389928/gpt-on-the-platform-data-actions-and-outcomes). I haven't had time to look at the analysis yet.
