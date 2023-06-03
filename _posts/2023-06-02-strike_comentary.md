---
layout: post
title: Moderation by humans
tags: community
comments: true
---

> The Stack Exchange software has grown to be extremely powerful, but
> it’s important to remember that, at their core, these sites _run on
> human beings_ – and without respect for each other, clever tools
> solve nothing.&mdash;Shog9, ["Respect the community – your own, and
> others'"](https://stackoverflow.blog/2012/03/22/respect-the-community-your-own-and-others/)

[Earlier I wrote](/2023/05/31/mod_strike.html) that Stack Overflow and
Stack Exchange moderators are preparing to strike. Baring new
developments, it will start on Monday. You can [read the letter
explaining their stance](https://openletter.mousetail.nl/). As a
semi-detached observer, I figured I'd give a little commentary.

Like many revolutions, this one starts with [an economic
crisis](https://en.wikipedia.org/wiki/Estates_General_of_1789#Edict_of_24_January_1789). As
[previously discussed](/2023/05/17/so_business.html), business isn't
looking so good at Stack Overflow. I don't have inside information
about this year, but we can see signs of trouble in public data such
as the trend of questions and answers on Stack Overflow:

[![Posting on Stack Overflow over time showing a sharp decline in
2023](/images/SO_posting_2023.png)](https://data.stackexchange.com/stackoverflow/query/1757908/posts-over-time?betathreshold=10#graph)

The deep chasms each year come the week of Christmas when many working
programmers aren't working. Activity picks up again in the new year
and reaches a peak right around finals before falling into
summer. There's a definite COVID spike followed by a post-COVID slide
punctuated by a near cliff so far in 2023. (The last data point should
be ignored since it's just the result of a partial week.) I'm using
posts as proxy for page views[^1] and general activity on the
site.[^2]

Why is this happening? Well there is some competition from GitHub
issues and smaller developer communities hosted on Slack or Discord. I
have no idea how big that impact is, but it's certainly reduced my
need for Stack Overflow. But there's an even bigger disruptor that
Stack Overflow (both the company and the community) know all too well:
ChatGPT. A few years ago I wrote about [why people answer questions on
Stack Overflow](/2016/07/13/QA_economics.html). I proposed a problem
that every programmer has seen virtually every day: the missing close
quote. I decided to ask ChatGPT to solve my problem:

> What's wrong with this code:   
print "Start the awesome!\n;  
get_input();  
do_awesome();  
print_output();  
print "Super awesome!\n";  

And here's its response:

> The code you provided has a syntax error. Here's the corrected version:
>
>     print("Start the awesome!\n")
>     get_input()
>     do_awesome()
>     print_output()
>     print("Super awesome!\n")
> 
> In Python, print statements require parentheses around the text to
> be printed. Additionally, make sure to close the parentheses
> properly and use correct function names (assuming they exist
> elsewhere in your code).

The explanation is wrong and if my code isn't Python, the missing
semicolons could be a problem. _Still_, it just might be enough for me
to sort out my problem. And if I type in a correction ("Oh. It's
actually Perl."), ChatGPT gamely gives me another answer the might be
closer to what I need. All of this comes at no cost (for now), in less
than a minute and with little friction. In [my earlier
post](/2016/07/13/QA_economics.html), I created a little chart that
showed the various costs for different problem solving strategies. I
can now add a new line a the bottom.

Strategy           | Money `$M` | Time `$T` | Hassle `$P` | Integrity `$I`
:------            |      ----: |      ---: |      -----: | --------:
Search Google      |          0 |         1 |           1 |         0
Find own answer    |          0 |        50 |           5 |       -50 
Ask a co-worker    |          0 |         5 |           5 |         5 
Hire a consultant  |        100 |        10 |           1 |         0
Ask Stack Overflow |          0 |         5 |           ? |         ?
_Ask ChatGPT_      |          0 |         1 |           1 |         0


Integrity is a sorta vague measure of how you feel about yourself
after using each strategy. Solving it on your own usually feels great
so it has a negative cost (i.e., a gain). Asking a [Large Language
Model (LLM)](https://en.wikipedia.org/wiki/Large_language_model) feels
about the same as typing a search term into Google for me. Virtually
the entire experience of using ChatGPT resembles Google even down to
getting bogus results sometimes.

All of this is very bad news for Stack Overflow.[^3] Every problem
that gets resolved talking to a chat bot is one less potential Stack
Overflow question.[^4] What's worse is that LLM technology will likely
be embedded in [developer
IDEs](https://en.wikipedia.org/wiki/Integrated_development_environment)
so that you won't even need to open a new browser tab. Even better,
models can be trained on your code. They still will be liable to just
making things up, of course, but at least it'll be using your context
rather than what it can gather from munging public training data.

I can't _prove_ the drop so far is [due to
ChatGPT](https://meta.stackexchange.com/questions/387278/did-stack-exchanges-traffic-go-down-since-chatgpt). It's
likely to be several factors pull in the same direction (away from
SO). Here's what the [official network policy regarding AI-generated
content](https://meta.stackexchange.com/questions/389582/what-is-the-network-policy-regarding-ai-generated-content/389583#389583)
says on the matter:

> Finally, internal evidence strongly suggests that the
> overapplication of suspensions for AI-generated content may be
> turning away a large number of legitimate contributors to the site.

This is a depressingly familiar perspective. Something like [half of
questions are turned away by the
software](https://meta.stackoverflow.com/questions/318174/why-are-there-so-many-bad-questions/358412#358412)
and curators are still overwhelmed by the incoming questions. Instead
of "why is the community so mean?" it would be nice to hear "What can
we do to make answering questions less frustrating?" I certainly see
that moderators and curators can [go overboard stifling
content](https://meta.stackoverflow.com/questions/384376/are-questions-about-the-motives-of-programming-library-developers-on-topic/384400#384400),
but you really ought to have a higher bar than "copied and pasted from
ChatGPT".

If Stack Overflow has one advantage against AI bots, its that answers
come from humans rather than [automated
sophists](/2023/03/29/coding_ai.html). I know the policy says the
content was coming from legitimate contributors and not AI. But it
doesn't back that assertion up with data. If, as I believe likely, the
data is ambiguous and forced into a "mods are suspending legitimate
users" interpretation, this is a self-defeating policy. It can take
hours to answer a question well. It only takes a few seconds for
ChatGPT to answer it poorly. Humans can't beat robotic [gun
slingers](https://meta.stackexchange.com/questions/9731/fastest-gun-in-the-west-problem).

So why can't the current SO CEO dismiss AI as a distraction (at best)?
Well [the previous CEO has some
insight](https://www.joelonsoftware.com/2002/01/06/fire-and-motion/):

> If you look at a competitive market, the successful company is
> always the one setting the agenda and forcing competitors to match
> it. For example, JetBlue's version of fire and motion came in the
> form of a superior customer experience. The airline's fares weren't
> necessarily cheaper, and it didn't fly to every destination. But its
> planes were really nice. They had comfortable leather seats, and
> there was an individual TV set for every passenger.
>
> In an effort to catch up, the legacy airlines devoted time, money,
> and effort to copying JetBlue. Delta wasted a small fortune on Song,
> a start-up that featured novelty cocktails and flight attendants
> wearing uniforms designed by Kate Spade. It died after only three
> years in business, during which time JetBlue continued to expand into
> new markets and steal customers.

Right now companies like OpenAI are setting the agenda. If you aren't
using AI already, you gotta catch up. Time is running out! Looking at
the graph I showed earlier and extrapolating the trend, Stack Overflow
will have negative questions in 16 months or so. NO TIME TO WASTE!

Or, maybe take a different path:

> If your competitors are really solving a problem in a unique way,
> you won't miss out by focusing on your own customers. Rest assured
> that your customers are already trying to tell you that this
> opportunity exists, if you'll only listen. A minute spent
> understanding the competition is a minute not spent listening to
> customers, potential customers, and near-miss customers, who would
> be happy to tell you directly what it would take to sell to
> them. You might even come up with a solution on your own that's
> better than the one your competitor came up with. That's when you
> start creating your own fire and motion -- when you innovate. Try
> something new that forces the competition to catch up with
> you.&mdash;Joel Spolsky, "Fire and Motion"

What would I do? I have so many ideas and not one of them involves
spending time on unwanted AI features. I'd double down on [the idea
that Stack Overflow was founded
on](https://web.archive.org/web/20090314173417/http://www.codinghorror.com/blog/archives/001169.html):

> Stack Overflow is, as much as I could make it, an effort of
> **collective programmer community**.

---

[^1]: [Anonymous
    feedback](https://data.stackexchange.com/stackoverflow/query/245926/feedback-per-day-over-time#graph)
    is likely a better proxy for that, however.

[^2]: [Voting](https://data.stackexchange.com/stackoverflow/query/1756532/votes-over-time#graph) might be a better proxy for that.

[^3]: It's also probably bad news for Google, which makes it doubly
    bad for SO since the network gets so much of its traffic from
    organic search.

[^4]: Aguably this is a positive development for the Stack Overflow
    community which will see a higher percentage of interesting
    problems.
