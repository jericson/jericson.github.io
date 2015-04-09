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
the [Stack Exchange network](http://stackexchange.com/sites#answers),
and when those answers frequently turn up in Google searches, it's
inevitable that some lost souls will mistake you for the official
product support system of some other company. So we get hundreds of
support tickets each month that have nothing to do with our sites. It
doesn't help when we actually tried (and failed) to be the official
support channel for
[Facebook developers](http://blog.stackoverflow.com/2011/08/facebook-stackoverflow/).

To give you a taste of the tickets we get, here's one I dug out of the
archive:

> Hello, I have been using my password for over 15 years and I am 61
> years old and that is my password that I can easily remember
> **[password redacted]**. Please put my password on my account

Even if we did know what product he was talking about there's nothing
we can do to help. Se we used a macro that sends this reply:

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

> [![Contact Support](http://i.stack.imgur.com/GMlAl.png)](http://meta.stackexchange.com/contact)

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

My borther and I used to stay up late reading or watching TV when I
came home from college. Once in a while, he'd ask me a question and
while we were in the middle of the conversation, I'd realize he was
asleep. Answering these tickets is a bit like that. They are just
coherent enough that you gotta take them seriously. But the further
you go, the more dreamlike the interaction turns out. Your best bet is
to immediately <strike>dash their hopes</strike> let them know they
might be in the wrong place.

So on March 20 we added this notice to the top of the contact form:

> [![Honeypot (text only)](http://i.stack.imgur.com/R6B3F.png)](http://meta.stackexchange.com/contact)

It communicates that the first place to go for help is Meta or the
Help Center. I purposely point people to the
[top bar](http://blog.stackoverflow.com/2013/12/a-new-top-bar-for-stack-exchange/)
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

> [![Honeypot (logos)](http://i.stack.imgur.com/rAcwz.png)](http://meta.stackexchange.com/contact)

After eight days of testing this version we saw further improvement:

    Anonymous         6,702     169  (2.52%)
    Registered          603     302 (50.08%)

I'm pleased with a potential 40% decrease in tickets intended for
other products, but there's more we can do. We designed the system so
that every site can have its own custom notification. Sometimes people
find our [Christianity](http://christianity.stackexchange.com) and
send requests like:

> May I submit my prayer request to you?

We don't get nearly as many people looking for Facebook help from that
site because questions tend to the theological rather than the
technological. So I added
[this banner](http://christianity.stackexchange.com/contact) in place
of the list of logos:

> **PLEASE NOTE:** despite the name, this is a
> [secular site](http://meta.christianity.stackexchange.com/questions/193/brothers-we-are-not-christians). We
> cannot answer your religious questions personally.

In the next few weeks, I plan to customize more banners starting with single-product sites such as:

* [Ask Ubuntu](http://askubuntu.com/contact)
* [Ask Different](http://apple.stackexchange.com/contact)
* [Ask Patents](http://patents.stackexchange.com/contact)

I suspect these will only be incremental gains for us, but the links
could become valuable for many anonymous users who stumble onto our
sites. Ultimately, we are most interested in getting people the
resources they need with as little fuss as possible and that includes
when they try to contact us directly.

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

<!--  LocalWords:  Zendesk LocalWords login Shog heyer  wikipedia api
 -->
<!--  LocalWords:  Spolsky's html OpenID unbanned Uber Uber's uber
 -->
<!--  LocalWords:  http png
 -->
