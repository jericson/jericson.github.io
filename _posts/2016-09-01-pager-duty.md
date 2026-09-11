---
layout: post
title: When a Crisis Hits, Who Manages the Managers?
comments: yes
tags: pagerduty
---

The last time something went wrong, which was more
stressful&mdash;technological or human factors? If you run a
sufficiently complex and interesting system, your future will include
at least one incident, which could range from a few minutes of
unplanned downtime to a full-on security breach. And when it happens,
you are probably prepared for the technical challenges. But if you are
like me, you dread the inevitable communication breakdowns and
finger-pointing. Luckily, you can take steps while things are calm
that can reduce everyone’s stress when technical problems arise.


## Have an emergency plan before you have an emergency

You should already have a plan for how to assemble your team of DevOps
professionals when something goes wrong. (And, hopefully, a plan to
[avoid alert
fatigue](https://web.archive.org/web/20250523111243/https://www.pagerduty.com/blog/reduce-alert-fatigue/).)
You no doubt have a range of monitors checking all of your vital
functions—including monitoring. But you might have forgotten to have a
plan for people who aren’t going to help fix things.

My parents had a rule for us kids at Disneyland&mdash;meet at the
firehouse near the entrance if you get lost. You should have a place
to meet during an emergency too. Where do people go when they notice a
problem with your system? Do all the stakeholders know where to go? Is
there enough information there for everyone to know whether they ought
to get involved or just let DevOps do its thing?

There’s nothing more distracting when you are trying to solve a
problem than a stream of people reporting that same problem. For a
publicly-facing product, Twitter can be a very effective way to
broadcast reports. Everyone can access it, no one expects long updates
with just 140 characters to work with, and it’s easy to automate new
incidents. When more detail is needed, or for internal systems,
integrating with StatusPage.io or Status.io gives people a better way
to keep up-to-date than contacting the DevOps team directly.

Honesty and transparency matter. Don’t make the mistake of not
reporting problems because “nobody will notice” or because you solved
the issues quickly. As long as people trust they will get the
information they need from your status reporting mechanism, they will
be comfortable relying on it. But the moment someone suspects you are
withholding information, they will stop using it. And where do you
suppose they will turn next?


Only when reporting an incident risks making it worse&mdash;such as a
break-in that exploits an unpatched hole in your security&mdash;should
you withhold information. If you are fortunate enough to have several
people on your team, it can really help to assign someone to run
interference for the people working on the problem. Have them answer
questions from managers and co-workers and assign them to update your
status page. On the other hand, if you are all on your own, it really
helps to come up for air once in awhile. That’s a good time to give an
update. Who knows? It might even help you [rubber
duck](https://en.wikipedia.org/wiki/Rubber_duck_debugging) your way to
a solution.


<a title="Odkq, CC BY-SA 4.0 &lt;https://creativecommons.org/licenses/by-sa/4.0&gt;, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:Rubber_duck_at_work.jpg"><img width="330" alt="Rubber duck at work" src="https://thumb.wikimedia.org/wikipedia/commons/thumb/9/99/Rubber_duck_at_work.jpg/330px-Rubber_duck_at_work.jpg?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail"></a>


## When an emergency is over, it isn’t over

When you finally get back to regular operations, take some time to
wind down and enjoy your refreshing beverage of choice.

But know that the job isn’t quite done yet.

If you don’t take the time to reconstruct the events that lead to the
mess, you won’t be able to fix the root cause. Equally as important,
the people affected by the incident can’t be confident that it won’t
happen again without a clear explanation of what happened and how you
plan to prevent recurrences. Perhaps the best solution to both
problems is an incident report or postmortem. On [an episode of
Sysadmin
Casts](https://web.archive.org/web/20251114061902/https://sysadmincasts.com/episodes/20-how-to-write-an-incident-report-postmortem),
Justin Weissig suggests the format Google uses:

* Issue Summary
* Timeline
* Root Cause
* Resolution and Recovery
* Corrective and Preventative Measures

You don’t have to get fancy; just a few paragraphs about what went
wrong, and why and how you plan to fix it will go a long way toward
establishing trust with stakeholders. Plus, reading about other
people’s flubs can be entertaining. Drawing more attention to your
mistakes seems counterintuitive, but whenever I read a well-written
postmortem, my respect for the organization increases. That’s true
even when the root cause was easily avoided. It takes courage to admit
a mistake.

Don’t include the names of individuals in your incident
report. Generally, the person responsible feels bad enough as it is,
so it doesn’t help to heap extra shame on that person. And it will
make the next incident that much harder to resolve. No one will want
to own up to their slip-ups.

In the long run, being transparent during and after an incident gives
you a better shot at fixing latent problems in your system. In my
experience, it’s a lot less stressful to be honest and open.

_Originally posted somewhere on the [PagerDuty
blog](https://www.pagerduty.com/blog/)._
