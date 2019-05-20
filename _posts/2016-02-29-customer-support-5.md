---
layout: post
title:  Building a customer support system
subtitle: Automated responses
comments: yes
tags: support
---

[Honeypots](/2015/04/08/customer-support-4.html)
have been catching 3<sup>rd</sup> party tickets for the better part of
a year. As I explained then, I measure success by comparing the send
rate for anonymous and registered users. We want to minimize anonymous
contacts without reducing contacts from our existing users who benefit
from our help. Here are the results so far:

Period     | user_type  | contact.visit | contact.send |     rate
:-----     | :--------  | ------------: | -----------: |     ---:
**Pre-**   | Anonymous  |       337,057 |      14,007  |  (4.16%) 
trap       | Registered |        39,872 |      20,245  | (50.77%)
**Post-**  | Anonymous  |       225,624 |       7,621  |  (3.38%)
trap       | Registered |        23,583 |      11,688  | (49.56%)

Both before and after we introduced
[the blurb](http://stackoverflow.com/contact), about half of registered
users followed through with sending. The ~1% decrease seems
concerning, but we don't have a
[large enough sample size](http://www.evanmiller.org/ab-testing/sample-size.html#!4.16;80;5;0.78;0)
to be too worried. It's also possible that some registered users
really did need help with their Facebook/Yahoo/Google accounts. Small
changes aren't as concerning as dramatic decreases that might indicate
we are losing legitimate tickets.

Meanwhile the reduction in anonymous contacts is both
[statistically significant](http://www.evanmiller.org/ab-testing/sample-size.html#!4.16;80;5;0.78;0)
and the direction we were hoping for. My initial testing (with tiny
samples) suggested that we'd see rates between 2.5% and 3%. So 3.38%
is a big improvement, but a little higher than I'd hoped. Looking at
the rate of 3<sup>rd</sup> party tickets in the Zendesk confirms there
are more of them than expected. I asked
[our Community Growth Operations Specialists](https://blog.stackoverflow.com/2015/04/jnat-and-animuson-workin-on-ur-problemz/)
for ideas on what might be producing these tickets.

[Kyle](http://stackexchange.com/users/89201/animuson) suggested our
[Web Applications](http://webapps.stackexchange.com/) site produced
more than its fair share. Indeed since we began tracking in September
of 2013, there have been 997 tickets from that site and at least[^1]
509 were intended for some other support system (usually Google or
Facebook). It's pretty much the ur-case for helpful answers fooling
people into thinking we can solve their problems on unrelated sites.

These folks haven't read the
[contact us form](http://webapps.stackexchange.com/contact) very
closely since it already says we can't help them recover their Google
account or whatnot. I added the bold bit recently in hopes that it
will make the message more noticable and clear. Shortly afterward,
someone emailed us their Gmail password. So I decided to test another
option: automated responses.

Now there are a few things I think need to be true of automatic emails
to avoid being a jerk about it:

1. They must, with almost dead certainty, be targeted to the right
   people. It's tempting to send it everyone who writes to us from
   WebApps with an account problem. Odds are, we'd be accurate at
   least half the time. But it really sucks for the other half who are
   legitimate users that we could help.

2. The message must politely, but firmly point the user to the
   specific help channel that has authority over their specific
   problem. If the problem is with Facebook, we should avoid pointing
   them to Google.

3. If, by some remote chance, we send a response in error, it must be
   possible for the hapless user to reply and get in touch with a
   human.

Fortunately, Zendesk supports
[triggers](https://support.zendesk.com/hc/en-us/articles/203662246-About-triggers-and-how-they-work). I
set up one for Google and one for Facebook[^2] that are triggered when
the page the user came from indicates the user has Google or Facebook
problems. First, it checks that the ticket is new which allows
responses through. Then it checks that the request came from
`http://webapps.stackexchange.com/`. Next, it looks for specific
referrer URLs that strongly signal the problem is with some other
site.

For instance, we get requests from questions such as[^3]:

* [Where to report Gmail problems?](http://webapps.stackexchange.com/q/24238/43374)
* [How do I recover my Google account (or Gmail) password or username?](http://webapps.stackexchange.com/q/52706/43374)
* [What do I do if I forgot my Gmail password?](http://webapps.stackexchange.com/q/9217/43374)

If we got a thousand tickets from these questions, I'd be shocked if
we could address more than one or two. So I feel extremely comfortable
sending an automated reply:

> Hello,
>
> You may have contacted the wrong party. This email address provides
> support for the Q&A web sites at stackexchange.com, but we are not
> in a position to provide customer support for 3rd-party products or
> services. If you have an issue with a Google product, please contact
> them directly at:
>
> http://www.google.com/contact/
>
> Sorry about the confusion.
>
> Regards,  
> Stack Overflow Team

There's a similar email sent to folks trying to recover their Facebook
accounts.

Digging a bit deeper using the
[Zendesk search API](https://developer.zendesk.com/rest_api/docs/core/search),
I also noticed tickets coming from the
[[gmail]](http://webapps.stackexchange.com/questions/tagged/gmail),
[[google-account]](http://webapps.stackexchange.com/questions/tagged/google-account)
and
[[facebook]](http://webapps.stackexchange.com/questions/tagged/facebook)
tag pages were invariably false alarms. So I added those pages
too. But I didn't add the
[Ask Question page](http://webapps.stackexchange.com/questions/ask). _Most_
of those correspondents would benefit from this auto-response, but
some should just ask their question and others have Stack Exchange
account problems.

In the last four days since I implemented it, the trigger has fire
four times (not counting my own tests). One ticket a day won't really
make a notable difference for the people handling team@. But it should
make the job a tiny bit more pleasant and be a bit helpful a bit
quicker to people who have lost access to their Gmail account.

---


[^1]: This doesn't count tickets that were duplicates. People trying
    to recover credentials for sites that essentially control their
    online identity can (understandably) be very anxious for a reply.

[^2]: For whatever reason Yahoo users don't seem to contact us for customer support as much.

[^3]: We also get a surprising number of referrers from a deleted
    question: 
    <a href="http://webapps.stackexchange.com/questions/51875/i-have-forgotten-my-old-google-username-and-password-how-do-i-recover-my-accoun" data-proofer-ignore>I have forgotten my old Google username and password, how do I recover my account?</a>
    My best guess is that some popular site linked to it before deletion.


    
<!--  LocalWords:  problemz animuson LocalWords ur WebApps  http
 -->
<!--  LocalWords:  accoun username Zendesk gmail google facebook
 -->
<!--  LocalWords:  noticable
 -->
