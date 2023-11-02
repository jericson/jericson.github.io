---
layout: post
title: 'How Stack Overflow for Teams Fits into the Community&mdash;Stack Overflow Blog'
tags: blogoverflow
---

[Originally published on Blog
Overflow.](https://stackoverflow.blog/2018/05/23/how-stack-overflow-for-teams-fits-into-the-community/)


Back when I was a full-time programmer and there was some code someone
struggled with, it was a common practice to ask around in cubicle
land. Sometimes you'd get lucky and find someone who know the answer
right away or knew where to look in the documentation. When Stack
Overflow launched, I cultivated a habit of asking and immediately
answering questions I'd heard discussed at the office on the site. To
this day, I get upvotes on questions like "[How can you untar more
than one file at a
time?](https://stackoverflow.com/questions/583889/how-can-you-untar-more-than-one-file-at-a-time)"
It doesn't just add to my reputation score—it also feels great to know
I've helped dozens[^1] of strangers. How often can you say that about an
hour or so of effort?


Meanwhile, most of the questions people on my team had were more like,
"How do I check the current state of `resource_server`?" If you don't
know what that means, don't feel bad. `resource_server` was a part of a
proprietary system our company built. Maybe a dozen people could ever
use that answer. Instead of posting on Stack Overflow, I'd either send
it in an email or, if I thought it was important enough, add it to the
enormous Word document that we called "the manual". The manual was
more or less write-only judging by the number of times people would
re-ask questions _that were clearly documented in section 6,
paragraph 19!_ Sometimes I'd stare at the hardcopy version on my
desk and wonder where I'd gone wrong in life.


For _entirely unrelated reasons_, I left that job and joined Stack
Overflow as a community manager. Much of what I needed to know was
documented on our meta site for questions about the network. But
imagine my dismay when I discovered our team also had a Google Docs
version of "the manual" for non-public information. This seemed crazy
since we had access to the world's best Q&A system. Later, we switched
to our own internal [Enterprise
instance](https://stackoverflow.com/enterprise), which worked pretty
well for a few weeks. But after the initial wave of questions, things
slowed down.


This wasn't unexpected. Since Stack Overflow Enterprise exists on a
separate site, making it part of your workflow requires a constant
supply of new content. Based on our experience with public sites and
Enterprise customers, we estimate a standalone site needs about 500
total users. Fewer than that and there's just not enough activity to
keep people regularly engaged. As the name implies, the Enterprise
product serves larger organizations that need features such as single
sign-on and moderation roles. On Enterprise sites [privilege
levels](https://stackoverflow.blog/2010/10/07/membership-has-its-privileges/)
are tuned for larger groups of active users.[^2] Our entire company
doesn't exceed our definition of an Enterprise organization.


We've tried other solutions, including wikis, forums, Slack and
Trello. Nothing works as well as the question and answer format. But a
Q&A site needs some minimal level of activity so that people who have
answers will keep visiting. And that's where
[Teams](https://stackoverflow.com/teams) comes in. Instead of going to
a separate site, Stack Overflow for Teams puts your private Q&A on the
site most programmers visit routinely as a part of their job. We've
been using our internal Team instance for half-a-year, and I think
we've finally got a viable replacement for "the manual".


This is great news for organizations who are signing up for Teams
right now, but what about everyone else? Won't this mean more of the
world's knowledge is locked away in private silos? If you've been
around the network for a while, you might recall we had a "too
localized" close reason. Teams are a perfect place to ask questions
without universal answers. Coding standard questions don't work well
on a public site since every organization has their own brace style
(as an example). Sensitive information can't be posted publicly either
but is safe in Stack Overflow for Teams. In other words, much of the
content posted in Teams isn't appropriate for the public site
anyway.  If you do have a question that makes sense outside of your
organization, the breadth of potential answers mean it's best to ask
in public instead.


What's more, we're hearing that some organizations use the Q&A format
(both Teams and Enterprise) to preserve all sorts of other
organizational information such as business logic, onboarding
procedures, customer support questions and all kinds of
documentation.[^3] These type of questions _really_ won't fly on the
public site. But, you know, that's fine. The more reason people have
to visit the site, the more useful it will be for everyone in the
organization. And, of course, the more people who use the site, the
more likely questions will get answered from someone in the know. It's
a virtuous cycle.


This leads me to our super secret strategy for making the public site
better as well. Along with your Team content, we mix in public content
whenever appropriate. For instance when you do a search, you'll find
not only posts from your team, but also posts from the rest of the
site:


![](/images/pickles-1.png)


Ok, that might not be the most useful example. But more than once,
I've searched for an answer on my Team and found a corresponding
public answer. Even though I work with some pretty great programmers,
answers from outside my Team have been vetted by a more diverse group
of developers. So more people become familiar with our [sometimes
quirky](https://www.joelonsoftware.com/2018/04/13/gamification/)
system, and by exposing them to the whole site, we expect some will
take the plunge to start editing and answering in public.


Now the observant among you might have already noticed a catch: Team
culture might be very different than the traditional Stack Overflow
way of doing things. What's going to happen, for instance, if some
pointy-haired boss asks how to "utilize blockchain in container
virtualization"? The UI goes to some lengths to make clear where your
question will be posted, so one would hope this question will be
restricted to the boss's own team (who are presumably used to that
sort of thing).


![](/images/pickles-2.png)


Connecting questions with people who can answer them can be more
challenging when the audience is small. So we're working on features
that address discoverability. Within a Team, people can notify
colleagues about questions. We don't see that system scaling on the
public side, but we have done some work to improve tag subscriptions
that will soon be available for everyone. We're also developing a
feature for saving custom question views. Teams, Enterprise, Stack
Overflow and the entire Stack Exchange network share a codebase, so
improvements made in one context can be transferred to another.


![](/images/create-a-custom-view-527x675.png)


Normally, changes make me worried. Teams, however, don't bother me
much. Don't get me wrong: Stack Overflow for Teams promise to be a
real boom for companies that sign up. But if you aren't on a Team just
now, they are pretty much invisible to you. In the long run, it
certainly doesn't hurt that they provide some extra revenue for more
developers, designers and community managers. (By the way, [we're
hiring
now](https://stackoverflow.com/company/work-here/1161802/community-manager)!)
We're grateful to have [other lines of
business](https://stackoverflow.blog/2016/11/15/how-we-make-money-at-stack-overflow-2016-edition/),
but it sure is a pleasure to be refocused on our communities and Q&A
more directly.


<hr/>

[^1]: And maybe it's a lot more; the question has been viewed over 50k
    times.


[^2]: There's a little guesswork here, but sociobiology suggests the
    upper limit is [about 150
    individuals](https://en.wikipedia.org/wiki/Dunbar%27s_number) for
    a site to work without hierarchical privileges.


[^3]: We even use our Team for scratch space to prepare drafts of
    public announcements.


