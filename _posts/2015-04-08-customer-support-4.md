---
layout: post
title:  Building a customer support system
subtitle: Adding a honeypot
comments: yes
tags: support
---

[Last time]({% post_url 2015-04-06-customer-support-3 %}) I focused on
social solutions to customer support problems. Today I will look at an
interface solution that worked for us.

When your site contains the answers to millions of questions, as does
the [Stack Exchange network](https://stackexchange.com/sites#answers),
and when those answers frequently turn up in Google searches, it's
inevitable that some lost souls will mistake you for the official
product support system of some other company. So we get hundreds of
support tickets each month that have nothing to do with our sites. It
doesn't help when we actually tried (and failed) to be the official
support channel for
[Facebook developers](https://blog.stackoverflow.com/2011/08/facebook-stackoverflow/).

To give you a taste of the tickets we get, here's one I dug out of the
archive:

> Hello, I have been using my password for over 15 years and I am 61
> years old and that is my password that I can easily remember
> **[password redacted]**. Please put my password on my account

Even if we did know what product he was talking about there's nothing
we can do to help. So we used a macro that sends this reply:

> You may have contacted the wrong party. This email address provides
> support for the Q&A web sites at stackexchange.com, but we are not
> in a position to provide customer support for 3rd-party products or
> services. I'm sorry, but I am not familiar with their support
> options, so I do not have an address to forward your message. You
> will need to contact the correct support channels for help with your
> issue.

(We also warned against mailing passwords to strangers.)

Not having an account on our site is the primary calling card of a
3<sup>rd</sup> party request. Occasionally a user will lose access to
their account and sometimes people create accounts thinking it will
help them solve their problem with the Apple store or whatnot. In the
main, however:

    registered : anonymous :: our user : not our user

Since June 14, 2013, when we first started collecting these
statistics, here's how many of each user type[^1] visited our contact form
and how many actually sent a message:

    user_type contact.visit     contact.send
    --------- -------------  ---------------
    Anonymous       337,057  14,007  (4.16%) 
    Registered       39,872  20,245 (50.77%)

So the people most likely to benefit from contacting us (our
registered users) actually followed through about half the
time. That's a respectable conversion rate for this form:

> [![Contact Support](https://i.stack.imgur.com/GMlAl.png)](https://meta.stackexchange.com/contact)

These tend to be fairly motivated users who really do need our
help. Meanwhile, better than 95% of anonymous users figure out they
are in the wrong place. So in broad strokes, the statistics show what
we'd like: our users reach us and other people's users
don't. Unfortunately _so many_ anonymous users visit our contact page
it doesn't take much of a conversion rate for 3<sup>rd</sup> party
tickets to dominate.

In some ways, these aren't difficult issues to solve. It only takes a
moment or two to diagnose the problem and send the appropriate
reply. But that process steals a little bit of mental energy that
should be put to use elsewhere. Personally, I find these requests
particularly draining since I'm utterly powerless to do anything to
help. 

My brother and I used to stay up late reading or watching TV when I
came home from college. Once in a while, he'd ask me a question and
while we were in the middle of the conversation, I'd realize he was
asleep. Answering these tickets is a bit like that. They are just
coherent enough that you gotta take them seriously. But the further
you go, the more dreamlike the interaction turns out. Your best bet is
to immediately <strike>dash their hopes</strike> let them know they
might be in the wrong place.

So on March 20 we added this notice to the top of the contact form:

> [![Honeypot (text only)](https://i.stack.imgur.com/R6B3F.png)](https://meta.stackexchange.com/contact)

It communicates that the first place to go for help is Meta or the
Help Center. I purposely point people to the
[top bar](https://blog.stackoverflow.com/2013/12/a-new-top-bar-for-stack-exchange/)
rather than a direct link so that they have a chance to see the other
items hidden there. The banner also makes clear what sort of help we
provide, which isn't so obvious from the rest of the page. Based on
the types of tickets we get, I've added links to various help or
contact pages for other products. Ideally, at least a few people will
get the hint that we aren't going to be able to help with
non-Stack-Exchange problems. After running that copy for eleven days,
the results were:

    Anonymous         8,429     245  (2.91%)
    Registered          950     500 (52.63%)

So adding the blurb decreased the rate that anonymous users contacted
us without discouraging registered users. For our bottom line, this
should decrease our 3<sup>rd</sup> party tickets by a quarter or
so. The actual decrease was about 30%.[^2] That's pretty good, but
we wondered if adding logos would improve our results:

> [![Honeypot (logos)](https://i.stack.imgur.com/rAcwz.png)](https://meta.stackexchange.com/contact)

After eight days of testing this version we saw further improvement:

    Anonymous         6,702     169  (2.52%)
    Registered          603     302 (50.08%)

I'm pleased with a potential 40% decrease in tickets intended for
other products, but there's more we can do. We designed the system so
that every site can have its own custom notification. Sometimes people
find our [Christianity](https://christianity.stackexchange.com) and
send requests like:

> May I submit my prayer request to you?

We don't get nearly as many people looking for Facebook help from that
site because questions tend to the theological rather than the
technological. So I added
[this banner](https://christianity.stackexchange.com/contact) in place
of the list of logos:

> **PLEASE NOTE:** despite the name, this is a
> [secular site](https://meta.christianity.stackexchange.com/questions/193/brothers-we-are-not-christians). We
> cannot answer your religious questions personally.

In the next few weeks, I plan to customize more banners starting with
single-product sites such as:

* [Ask Ubuntu](https://askubuntu.com/contact)
* [Ask Different](https://apple.stackexchange.com/contact)
* [Ask Patents](https://patents.stackexchange.com/contact)

I suspect these will only be incremental gains for us, but the links
could become valuable for many anonymous users who stumble onto our
sites. Ultimately, we are most interested in getting people the
resources they need with as little fuss as possible and that includes
when they try to contact us directly.

# Update (April 12)

Reporting the results in terms of Zendesk tickets proved difficult
initially because not all the tickets had been handled last
week. Thankfully, at the end of March, we hired two Community Growth
Operations Specialists who reduced our backlog from nearly a thousand
tickets. So we now have enough data to show the effect in terms of
people actually handling new tickets:

![Rate of third-party tickets](/images/3rd_party-rate.png)

I used a 4-day rolling average to smooth the data. If I didn't do
that, there'd be weird spikes on days with a dozen or more third-party
tickets or sudden cliffs if a day happened to get none. I also
eliminated all the tickets from one of our agents who got so sick of
3<sup>rd</sup> party tickets they just archived them without
responding.[^3] The X-axis represents the date tickets were submitted,
so the drop around March 20 is directly related to the addition of the
honeypot. To put it in more practical terms, the honeypot saves us
from about 2 fruitless tickets a day:

    Period       3rd party per day per week per year
    ------------ ----------------- -------- --------
    Pre-honeypot               6.3       43     2288
    Honeypot                   4.1       29     1493
    Saving (35%)               2.2       15      795

I extrapolated the savings out to a year because the savings is
[all about scale](https://meta.stackoverflow.com/questions/251175/stack-overflow-is-not-yet-a-vast-wasteland-a-history-of-moderator-tooling). As
I mentioned above, one
[context switch](https://www.joelonsoftware.com/articles/fog0000000022.html)
really isn't that big of a deal. But saving 800 or so over the course
of a year is. Real progress can be made with seemingly modest
improvements.

**Next time:** Last fall we tackled a much bigger problem than
  3<sup>rd</sup> party tickets: manual account merges and deletions.


---

Footnotes:

[^1]: For those who are wondering, we also have unregistered and
      moderator user types. Neither is significant in relative terms,
      so we can safely ignore those types.

[^2]: Initially I was confused why the decrease was greater than what
      I predicted. After sort though some tickets in that date range,
      it occurred to me that many of the anonymous tickets are blocked
      as spam. Spammers are unlikely to read our contact form. And
      yes, we do get a lot of spam via our contact form.

[^3]: It's a tossup whether or not it's a kinder course of action to
      ignore these tickets or to use our macro. It's nearly impossible
      to send a reply that's both honest and not going to rub a
      handful of people the wrong way. I imagine many people send
      these tickets with some vague hope that they will get lucky and
      forget about it a few minutes later. On the other hand, this did
      screw with our data a bit.

<!--  LocalWords:  Zendesk LocalWords login Shog heyer  wikipedia api
 -->
<!--  LocalWords:  Spolsky's html OpenID unbanned Uber Uber's uber
 -->
<!--  LocalWords:  http png stackexchange url
 -->
