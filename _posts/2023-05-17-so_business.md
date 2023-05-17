---
layout: post
title: How's business at Stack Overflow?
tags: community opinion
comments: yes
---

> I’m writing today to share that I’ve made the very difficult
> decision to reduce our workforce by about 10%, or 58
> employees.&mdash;[Prashanth Chandrasekar, CEO Stack
> Overflow](https://stackoverflow.blog/2023/05/10/a-message-from-prashanth-chandrasekar-ceo-stack-overflow/)

Well, that makes the question in the title easy. Business isn't great
if you are cutting 10% of your workforce just 2 years after being
[acquired for $1.8
billion](https://stackoverflow.blog/2021/06/02/prosus-acquires-stack-overflow/)
(with a "B"). Layoffs are what happens when a business unit is spending
money like it's going out of style and needs to reign it in a bit.


[![Cash flying out of the Tower of Pisa in the style of Renaissance painting](/images/cash_overflow.png)](https://labs.openai.com/s/NvuzfLso1kSlAcywKdwZH9Bl)

A month or so before the Stack Overflow sale was announced, I
[predicted investors were looking for the
exit](https://jlericson.com/2021/04/27/reading_tealeaves.html). I
concluded they had an offer from Microsoft that wasn't large enough
for their ambitions and that their only remaining option was to go
public. My estimate was that investors were looking for a valuation in
the range of half a billion dollars. 

I didn't anticipate a South African company flush with cash from an
investment in a Chinese stock spinning off a Dutch subsidiary eager to
add Stack Overflow to their [edtech
business](https://en.wikipedia.org/wiki/Educational_technology). I
described this complicated turn of events in [a Twitter
thread](https://threadreaderapp.com/thread/1401246105598193665.html).[^1]
Right around that point I also realized I left out a major piece of
the evaluation puzzle: I hadn't counted the portion of the company
that was tied up in options[^2] and unissued shares. After making a
few adjustments to my model, I concluded that $1.8 billion was too
expensive, but not outrageously expensive, for Stack Overflow.

I also had a bit of inside knowledge to go on. I knew, for instance,
that Stack Overflow had three lines of business:

1. An advertising business.
2. A job board business labeled "Talent".
3. A Teams service that [grew out of Stack Overflow
   Enterprise](https://stackoverflow.blog/2018/05/23/how-stack-overflow-for-teams-fits-into-the-community/).
   
Advertising revenue rises and falls with traffic (more or less) and I
estimate from [anonymous
feedback](https://data.stackexchange.com/stackoverflow/query/1402103/anonymous-feedback-over-time#graph)
that traffic has held steady even as [participation has fallen off
since
2016-7](https://data.stackexchange.com/stackoverflow/query/1402111/votes-per-year#graph). The
nice thing about advertising is that it's pretty high margin if you
are getting content for free. If you set up programmatic ads, such as
[Google AdSense](https://en.wikipedia.org/wiki/Google_AdSense), you
don't even need to have a sales team. Not a lot of growth potential
perhaps, but predictably profitable.

Stack Overflow's job board business was [discontinued last
year](https://stackoverflow.com/users/story/). There's still a [Talent
landing page](https://stackoverflow.co/talent/), but it seems to be
focused on branding and advertising for companies that are
hiring. From what I can tell, the job board was a viable business, but
it didn't have hyper-growth potential and it required a specialized
sales team. It also doesn't fit neatly into the education technology
story the new owners were telling their investors.

Talent was a large portion of the company's revenue just a few years
before the sale. For a while it was over half and perhaps as much as ⅔
of Stack Overflow's revenue. Some of that revenue was
subscription-based and, if I understand correctly, could have been
collected perpetually if the service hadn't been scrapped. Big
technology companies subscribed to Talent in order to augment other
recruiting sources. Talent also supported a quirky timeline feature
that I found rather useful for [tracking my
career](https://web.archive.org/web/20220113195358/https://stackoverflow.com/users/story/1438),
which is a small loss in the big picture.

I initially wondered if discontinuing Talent was
[eyewash](https://www.thebaseballjournal.com/terminology/eyewash-baseball-terminology/)
for potential investors. Startups are supposed to be high-growth,
high-margin or both. Job listings have lots of competition and
fluctuate as the hiring market fluctuates. But since it was finally
canceled well after the acquisition, I suspect it was no longer
growing and, perhaps, unprofitable. I don't get the feeling that the
new CEO was interested in this line of business and it could be that
Talent was starved of resources until it was easy to eliminate.

Finally, there's Teams, which is just the sort of high growth, high
margin and high lock-in business startup companies love to stumble
into. And boy howdy did Stack Overflow do its best to avoid building
this product. For years there was an Enterprise version of Stack
Overflow that large companies could host internally. We told
smaller companies not to bother and to use [an alternative
Q&A](https://meta.stackexchange.com/questions/2267/are-there-any-clones-alternatives-for-running-a-stack-exchange-style-qa-site). But
thanks to a couple of internal advocates,[^3] the idea was explored
and finally became the centerpiece of the Stack Overflow business.

Here's was Prosus says about Stack Overflow in their [most recent
financial
statement](https://presspage-production-content.s3.amazonaws.com/uploads/2659/4.prosus-hy23-financialresultsbookletpdf.pdf?10000):

> Stack Overflow, a leading knowledge-sharing platform, now serves
around 100 million people worldwide every month. The community site
continues to add an average 200 000 new registrations every
month. Stack Overflow grew total bookings by 53% in the period.  The
business grew revenue in local currency, excluding M&A, by 33% to
US$45m, driven by growth in Stack Overflow for Teams, which enables
organisations to build their own internal communities on top of the
open platform. Stack Overflow for Teams contributed 49% of total
revenues. By September 2022, Stack Overflow had 1 262 paying teams
generating annual recurring revenue of US$50m, a growth of 66% over
the prior period. Increased investment in engineering and
product-development initiatives, sales headcount and marketing
programme expenses, mainly in Stack Overflow for Teams, contributed to
the trading loss of US$42m, a margin expansion of 18 percentage points
to 93%.

I'm not 100% sure what that last sentence means, but I think Stack
Overflow got $45 million in revenue and (after subtracting expenses) lost
$42 million. Since 42/45 = .933..., I suppose that's what they mean by "a
margin expansion of 18 percentage points to 93%." That's an odd way to
put it though. Margin normally tells you how much each dollar in sales
is retained as earnings. But in this case, Stack Overflow spent almost
twice as much as it brought in. I could be reading this wrong, but
mathematically it probably should be -93%.[^4]

I guess the bigger point is that Teams has nearly equaled Advertising
as a revenue source. ("Stack Overflow for Teams contributed 49% of
total revenues.") Remember Advertising probably hasn't grown very much
and Talent isn't a thing anymore. So Teams has certainly grown a lot
since it started, but probably not enough to justify $1.8
billion. Again, I'm pretty sure Prosus overpaid.

They might not have understood, exactly, what they were buying. Last
fall, Stack Overflow for Teams moved off of Stack Overflow. This is
what I see as the owner of a Team:

!["Looking for your Teams?"](/images/lost_team.png)

Stack Overflow has [good reasons for making this
change](https://stackoverflow.help/en/articles/6649858-teams-domain-migration):

1. Since the beginning users were worried about accidentally posting
   on the public site when they thought they were in the comfort of
   their own team. By making a Teams separate from public Stack
   Overflow, it's easier to sell new customers on the idea that Teams
   isn't a security risk.
   
2. Having a separate domain means engineers can work on Teams without
   worrying about breaking the public site and _vice versa_.
   
I can imagine members of the SRE and sales teams casually chatting
about their frustrations with Teams and discovering they both needed
the same solution to their problems. It makes a lot of sense! It's
also a good way to kill Stack Overflow for Teams.[^5]

A few years ago Elon Musk suggested that cities should build tunnels
to solve the traffic problems in big cities. So people on Twitter
[made fun of him for discovering
subways](https://www.reddit.com/r/MurderedByWords/comments/eh26oi/elon_musk_discovers_subways). Of
course the idea wasn't _exactly_ the same as a subway since people
would stay in their cars rather than walk to the train. Still,
underground tunnels for cars face many of the same challenges as
underground tunnels for trains plus a few extra potential
problems. Well Stack Overflow for Teams discovered Stack Overflow
Enterprise. Moving off of stackoverflow.com removed the one
compelling feature Teams has.

This might sound like hyperbole, but I've used a lot of internal
knowledge systems. None of them other than Stack Overflow for Teams
work. Teams isn't a slam dunk either, but for programmers it had the
huge, enormous, incalculable advantage of living right on the page
that they probably have open in one (or likely more) of their tabs. It
removes one source of friction between using the tool and forgetting
it exists.

The [tools of remote work](2023/05/10/remote_skepticism.html) are
chat, video calls and shared documents. Teams needs to be _easier to
use than shared documents_. If you are using Google or Microsoft,
there is already a large ecosystem supporting sharing documents of all
sorts. You already have an account and so do all of your
co-workers. When someone shares a document in chat, it shows up with a
preview. All the documents you have access to are
searchable. Everybody knows how to use shared documents.

Teams lacks any advantage _unless one or two people are already using
Stack Overflow_. Stack Overflow has been optimized for sharing
technical knowledge. Take one seemingly trivial thing: code
blocks. Sharing code is fundamental to technical documentation, but
Word and Google Docs don't have an easy way to mark code as separate
from prose. I generally use a combination of indenting the Courier New
font to set code. It works, but I always wish we could use Markdown
for that.[^6] Unless you have people dedicated to using Stack
Overflow, your team will fall back to the easiest path: shared
documents.

Look. I might be exaggerating the impact of moving Teams off of Stack
Overflow. I don't have the data that Stack Overflow has and maybe
Slack, GitHub, Jira, and (Microsoft) Teams integrations do the
trick. What I _do_ know is that if I were selecting a knowledge
sharing system for developers, I wouldn't pick Stack Overflow for
Teams. I'd just [use
GitHub](/2022/04/04/docs2_contribution.html#github-not-just-for-developers). It's
hard to find a system that's closer at hand to coders than source
control. For non-technical teams, I stick with Google docs as the path
of least resistance.

---

It's odd to me that the layoffs were 10% across the board. It comes
right out of [the Jack Welch
playbook](https://en.wikipedia.org/wiki/Vitality_curve). He was the
CEO of GE and asserted that 20% of a workforce is particularly
productive, 70% are just fine and 10% aren't producing and should be
fired. Unless things have radically changed, [Stack Overflow doesn't
use stack
ranking](https://stackoverflow.blog/2016/03/07/developer-compensation-stack-overflow-doesnt-stack-rank/). But
across-the-board layoffs force managers to cut people who probably
ought to be retained. Back in 2017 [a 20%
layoff](https://techcrunch.com/2017/11/02/stack-overflow-lays-off-staff/)
resulted in significant losses of talent that needed to be replaced a
few years later when the business turned around.

There's also the issue of Stack Overflow's CEO chasing the [newest
shiny
object](https://meta.stackexchange.com/questions/388401/new-blog-post-from-our-ceo-prashanth-community-is-the-future-of-ai/389224#389224). I
gotta say I'm not particularly optimistic about the venture, but I'm
open to being wrong.

---


[^1]: I mention in that thread that I'd invested in Naspers, the South
    African company that owns (and is also somehow owned by)
    Prosus. I've lost 26% on my investment,which isn't really the
    fault of Stack Overflow, _per se_.
    
[^2]: Especially strange since I still held options in Stack Overflow
    that were bought a few months later for [one of my better
    investments](https://jlericson.com/2021/11/14/investing.html).

[^3]: Michele Keiper (Director of Customer Success & Support, Stack
    Overflow) and Mark Birch (Enterprise Sales Executive). They
    shouldn't be footnotes in this story, but I don't have much
    public to point to. There might have been others who advocated for
    this idea that I don't know about.

[^4]: [The previous
    year](https://presspage-production-content.s3.amazonaws.com/uploads/2658/4.1.annualreport2022.pdf?10000)
    it made $54 million and lost $34 million. That doesn't square with
    growth or improvement in margin. I'm likely misunderstanding
    something, but I do know that trading losses aren't trading
    profits.

[^5]: I'm going to link to [Steve Yegge's platform
    rant](https://gist.github.com/kislayverma/d48b84db1ac5d737715e8319bd4dd368),
    but I won't go into detail about how it applies. I have a whole
    'nother post about it that I might or might not finish.

[^6]: Markdown is used anywhere programmers have had a say in design:
    Stack Overflow (natch), GitHub, Discourse and Discord. Even Slack
    and Microsoft Teams support subsets of Markdown formatting.
