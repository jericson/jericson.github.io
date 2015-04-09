---
layout: post
title:  Building a customer support system
subtitle: Training
comments: yes
tags: support
---

[Last time]({% post_url 2015-03-13-customer-support-1 %}) I wrote
about the transition from using a shared email account to
Zendesk. Like most of the things we've tried it's a technical
solution. This time I want to write about something far trickier:
people.

Stack Exchange sites are a little unusual since the community runs
them. That's not just a nice way to say that a few users sit on the
[Star Chamber](http://en.wikipedia.org/wiki/Star_Chamber). Our
community has authority to do just about everything through a system
of reputation, privileges, elected or appointed moderators, review
queues, and flagging. As a result, hardly any of the problems that
crop up on our sites make it to `team@`. The major exceptions involve
account problems that require more access to personal information than
we give to our volunteer moderators.

Since I had experience as a moderator before being hired, I was about
as well prepared to handle Stack Exchange customer support as anyone
can be. Even so, I needed a few weeks of training in order to take on
a solo shift. The few first shifts consisted of a ride along with an
experienced Community Manager using screen sharing on Google
Hangouts. Like pair programming, the mentor starts by driving while
asking the trainee what they would do on each ticket.

Later, the roles switch so that the more senior of the pair observes
as the new CM handle tickets. Eventually, the new employee is ready to
fly solo. But they aren't completely on their own. We have an internal
chat room dedicated to helping each other with tough Zendesk
tickets. If any of us get stuck, we drop a link in chat and the rest
of the team chimes in with suggestions.

Our approach to customer support takes inspiration from Joel Spolsky's
["Seven steps to remarkable customer service"](http://www.joelonsoftware.com/articles/customerservice.html). We
aren't doing customer support over the phone for a company that sells
software, however, so we apply some of the principles a bit differently:

## 1. Fix everything two ways

For the my first year or so on the job, we did day-long `team@`
shifts. Typically, the day would start by forgetting that it was my
day already. "Didn't I just finish my shift a day or two ago? No? It's
been a week already? Well, I guess I better get started _after_ I wrap
up that thing from yesterday."

When I finally _did_ start my shift, it would be nearly time for
dinner and my family would be ready for work time to end and Daddy
time to start. Around midnight, I'd give up and promise to finish the
next day. (This is probably why it never seemed like it had been more
than a day or two since I'd handled support tickets.)

As you can imagine, I was so busy struggling to fix everything once, I
didn't have time to think about underlying problems.

So a few months ago, we bit the bullet and tried week-long
shifts. While we still are swamped with tickets, the change has given
us time to take a big picture view every now and then.

Last week, for instance, I noticed a strange ticket from an Uber
customer reporting problem with a particular driver. Oddly, the person
identified themselves as an employee of Disney working Disney employee
was so confused!

Now that I knew what the underlying problem was, I set about fixing it:

1. I contacted the Uber API support email to let them know about the
   tag name and give them our standard advice about using
   [Stack Overflow for product support](http://meta.stackoverflow.com/questions/3966/is-it-okay-to-use-stack-overflow-as-the-support-forum-for-a-product-or-project)
   and

2. I created a tag synonym from [uber] to [uber-api].

The next person who follows the Uber API link will see some questions
that clearly have nothing to do with Uber drivers. With any luck,
they'll know they are in the wrong place and find the correct support
channel more efficiently.

## 2. Suggest the [account recovery page](http://meta.stackexchange.com/users/account-recovery)

We don't do hardware support, but we do have lots of problems with
people forgetting how to log into our sites:

* OpenID can be one level of indirection too far for some folks.
* Our login system is pretty good, but it could
  [probably be better](http://blog.codinghorror.com/the-god-login/).
* OpenID providers go down or go out of business on occasion.
* Since we log people in automatically, there's often no need to
  remember your credentials until you get a new computer or device.

So people can get locked out of there account without any idea how to
get back in.

In those cases, an account recovery email can be a lifesaver. It
provides detailed and individualized instructions about how to use
your own set of credentials.

But those instructions can _also_ be useful in other situations:

* When a user will writes in to ask why they can't comment on their
  question any more or where their reputation has gone, it might be
  because they are logged out.
* People occasionally try to use their Gmail address to sign into
  Stack Exchange OpenID when they used Google OpenID or vice versa.
* Sometimes people forget they even have an account with us.


In cases like these, I'll send them the link to the account
recovery page and ask them to follow the directions.

I was planning on writing out the other 5 steps, but it's my `team@`
week and this has turned into procrastination time.

**Next time:** [more of Joel's Seven Steps]({% post_url 2015-04-06-customer-support-3 %}).



<!--  LocalWords:  Zendesk LocalWords login Shog heyer  wikipedia api
 -->
<!--  LocalWords:  Spolsky's html OpenID unbanned Uber Uber's uber
 -->
<!--  LocalWords:  codinghorror
 -->
