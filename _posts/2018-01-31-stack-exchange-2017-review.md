---
layout: post
title: 'Stack Exchange 2017 in Review&mdash;Stack Overflow Blog'
tags: blogoverflow 
---

[Originally published on Blog
Overflow.](https://stackoverflow.blog/2018/01/31/stack-exchange-2017-review/)

> It's a life's work to see yourself for what you really are and even
> then you might be wrong&mdash;Cormac McCarthy, _No Country for Old
> Men_


You know the old saw about how 90% of an iceberg is hidden under
water? At Stack Overflow, we strive to be a reverse iceberg by sharing
as much as possible about what's going on. 2017 presents a bit of a
problem since the big news is that we've seen a lot of interest in
companies [paying for private
Q&A](https://www.stackoverflowbusiness.com/enterprise). The other two
legs of our [revenue
tripod](https://stackoverflow.blog/2016/11/15/how-we-make-money-at-stack-overflow-2016-edition/)
(ads and job placement) are stable. But it turns out Stack Overflow is
best known for providing a platform for people to share knowledge with
each other. So our most exciting developments didn't get much
visibility last year.


We offer both self-hosted and remote-hosted Enterprise instances. Both
varieties are full-fledged sites that take a fair amount of investment
from the customer to be successful. Smaller organizations have asked
for private Q&A as well, which brings us to
[Channels](https://stackoverflow.blog/2017/07/11/introducing-channels-private-qa-team/). By
hosting private Q&A for smaller teams right on Stack Overflow, we hope
to [simplify signup and
security](https://stackoverflow.blog/2017/11/09/why-channels/) for
them. From our experience using our own Enterprise instance, I'm
excited to move to Channels in order to skip the VPN and to have
notifications go right to my Stack Exchange global inbox. Many of [the
design changes needed for
Channels](https://stackoverflow.blog/2017/12/04/designing-channels/)
will **benefit the public sites as well**.




|**Site**|**Questions**|**Answers**|**Edits**|**Comments**|**Accepted Answers**|**Upvotes**|**Downvotes**|**Reviews**|
|:---|---:|---:|---:|---:|---:|---:|---:|---:|
|Stack Exchange|921,144|1,201,731|2,090,053|3,983,934|365,990|7,802,169|1,126,699|1,317,965|
|Stack Overflow|2,462,137|2,958,692|4,761,335|9,513,114|1,041,406|16,710,692|2,549,588|2,638,016|
|International SO|134,518|138,584|211,904|509,545|59,173|394,001|88,297|163,089
|Total|3,517,799|4,299,007|7,063,292|14,006,593|1,466,569|24,906,862|3,764,584|4,119,070|




<!-- #tablepress-1 from cache -->


The observant among you might notice these statistics are slightly
down from 2016. One of the great things about an open Q&A network is
that answers to the askers' specific questions can be discovered by
other people with the same question. So a big reason we don't have
more _new_ questions is because we have so many _existing_ answered
questions for people to find before they ask. Most of the millions of
questions asked each year are only ever seen by the handful of people
who have the very rare problem asked about. (In other words, [the
network has a very long
tail](https://stackoverflow.blog/2011/01/05/the-wikipedia-of-long-tail-programming-questions/).)
That said, some questions are seen by hundreds of thousands of
people. Here are the top 5 viewed questions across the network asked
in 2017:






|**Question**|**Views**|**Site**
|:---|---:|:---|
|[What does "covfefe" exactly mean?](http://english.stackexchange.com/q/391945)|467,235|[English Language and Usage](http://english.stackexchange.com/)|
|[Is it unethical for me to not tell my employer I've automated my job?](http://workplace.stackexchange.com/q/93696)|438,343|[The Workplace](http://workplace.stackexchange.com/)|
|[Why does man print "gimme gimme gimme" at 00:30?](http://unix.stackexchange.com/q/405783)|283,666|[Unix and Linux](http://unix.stackexchange.com/)|
|[No 'Access-Control-Allow-Origin' header is present on the requested resourcewhen trying to get data from a REST API](http://stackoverflow.com/q/43871637)|188,548|[Stack Overflow](http://stackoverflow.com/)|
|[What happens if someone becomes Excommunicado?](http://movies.stackexchange.com/q/69031)|178,090|[Movies](http://movies.stackexchange.com/)|




<!-- #tablepress-2 from cache -->


(Full disclosure: I've tried to automate my job, but I haven't
achieved full covfefe.)


Questions are only useful if they prompt helpful answers and Stack
Exchange users regularly provide just that. While most of the
accumulated value of the network's content (available under [a
Creative Commons
licence](https://creativecommons.org/licenses/by-sa/3.0/)) is spread
out over millions of clear answers to obscure questions, there are a
few answers that just about anyone can appreciate. Here are the top 5
answers from 2017 ordered by score:




|**Answer**|**Score**|**Site**|
|:---|---:|:---|
|[Why does man print "gimme gimme gimme" at 00:30?](http://unix.stackexchange.com/q/405874)|1948|[Unix and Linux](http://unix.stackexchange.com/)|
|[Build a digital clock in Conway's Game of Life](http://codegolf.stackexchange.com/q/111932)|863|[Code Golf](http://codegolf.stackexchange.com/)|
|[Which word begins with "y" and looks like an axe in this picture?](http://english.stackexchange.com/q/395385)|831|[English Language and Usage](http://english.stackexchange.com/)|
|[Should a new employee be disciplined for not recognising a superior?](http://workplace.stackexchange.com/q/99789)|643|[The Workplace](http://workplace.stackexchange.com/)|
|[Why do all the C files written by my lecturer start with a #?](http://stackoverflow.com/q/45629209)|553|[Stack Overflow](http://stackoverflow.com/)|



<!-- #tablepress-3 from cache -->


The only question to appear in both lists started as a pun based on
[an ABBA song](https://www.youtube.com/watch?v=3wCK6INQcHs), which is
one reason to be thankful for 2017.


One of the downsides of having a bunch of popular websites built
entirely from community-created content is that we attract a lot of
spam. Over the years, we've added systems to block and slow down
unwanted submissions, but some still get through. The last line of
defense is flags from individual users. A few years ago, a dedicated
team of users ([Charcoal](http://charcoal-se.org/people.html)) built a
rather remarkable early warning system called the
[SmokeDetector](https://github.com/Charcoal-SE/SmokeDetector). Initially,
it was just a chatbot that dropped messages about potential spam for
users to flag. Over time, the system's accuracy increased to be _even
better than human flaggers_. So recently, the system started
[automatically flagging
spam](https://meta.stackexchange.com/questions/291301/can-a-machine-be-taught-to-flag-spam-automatically). The
program has substantially reduced the number of times an actual human
needs to look at spam and other nonsense. For more details, please see
the [2017 spam
report](https://meta.stackexchange.com/questions/305338/2017-a-year-in-spam). And
just so it's clear, this was entirely a community-led development. We
love giving our users agency to fix problems.


Even when we are doing the development work, we do best when we
communicate early and often with users. (This was the most important
thing we learned from Documentation.) For instance, the team working
on improvements to the network publishes a [monthly
update](https://meta.stackexchange.com/questions/301449/2017-teamdag-project-updates)
and takes [community
feedback](https://meta.stackoverflow.com/questions/354125/help-set-qa-teamdag-product-development-priorities)
as one important input to its priority list. I mentioned last year
that we _didn't_ listen to potential customers who wanted to pay for
an [Enterprise Q&A
site](https://www.stackoverflowbusiness.com/enterprise). A variety of
organizations have successfully deployed these sites, which in
retrospect shouldn't be a surprise. It hurts to consider the
opportunities we missed simply by not listening.


Annual events help turn a random collection of humans into a cohesive
culture. As a sampling:


* TeX – LaTeX Stack Exchange [elected representatives to the TeX Users
  Group](https://tex.meta.stackexchange.com/questions/7212/tug-representatives-for-2017).
* Graduated sites customized advertisements for the year to
  come. (Mathematics has some [interesting
  submissions](https://math.meta.stackexchange.com/questions/25812/community-promotion-ads-2017).)
* We [redesigned the top
  bar](https://stackoverflow.blog/2017/02/14/why-stack-overflow-redesigned-the-top-navigation/). (Ok,
  that only _seems_ annual.)
* Judaism hosted ["Purim Torah"
  questions](https://judaism.stackexchange.com/questions/tagged/purim-torah-in-jest).
* The [Stack Overflow Developer
  Survey](https://stackoverflow.blog/2017/03/22/now-live-stack-overflow-developer-survey-2017-results/)
  results were revealed.
* We [danced like
  fools](https://stackoverflow.blog/2017/03/30/stack-overflow-unveils-next-steps-computer-security/)
  for April Fool's Day.
* Users hunted down their favorite digital skull decorations in
  [Winter Bash
  2017](https://stackoverflow.blog/2018/01/10/farewell-winter-bash-2017/).
* Over $56,600 was [donated in the name of our
  moderators](https://stackoverflow.blog/2017/12/27/stack-overflow-gives-back-2017/). ($100
  per moderator, if you are curious.)

I'm not the only one posting about the year that was. [Christianity
has a statistics-heavy
post](https://christianity.meta.stackexchange.com/questions/6461/year-in-review-2017)
that follows the format of this post—it's like a fractal! There's an
introspective question on [The Workplace in
2017](https://workplace.meta.stackexchange.com/questions/5000/2017-year-in-review).  If
you want more adventure in your life, you might look at some of the
community's [favorite Science Fiction and Fantasy
questions](https://scifi.meta.stackexchange.com/questions/11426/favorite-questions-and-answers-from-third-quarter-of-2017)
from the past year. (I'm still waiting for the fourth quarter post!)
Classicists in the house might appreciate the [best Latin(!)
answers](https://latin.meta.stackexchange.com/questions/322/rewarding-the-best-answers-of-the-second-half-of-2017?noredirect=1&lq=1)
of the second half of 2017. If your language preferences tend toward
the programming variety, take a look at [the
submissions](https://codereview.stackexchange.com/questions/tagged/community-challenge)
to Code Review's 2017 community challenge: [design your own
programming
language](https://codereview.meta.stackexchange.com/questions/8442/code-review-2017-challenge-entries). The
highlight for [2017 on
Bricks](https://bricks.meta.stackexchange.com/questions/416/bricks-se-year-in-review-2017):
it became a [recognized LEGO User
Group](https://lan.lego.com/clubs/59-bricks-stack-exchange/).  My
colleague, Shog9,  looked at [question closing statistics in
2017](https://meta.stackexchange.com/questions/306197/2017-a-year-in-closing). Thanks
to the the efforts of _la gente hispana_, [Stack Overflow en Español
became a fully graduated
site](https://stackoverflow.blog/2017/05/20/stack-overflow-en-espanol-graduated/).


Meanwhile Stack Overflow employees keep busy with everything from
[semi-regular podcasts](https://stackoverflow.blog/podcasts/) to
[reaching out](https://www.stackoverflowbusiness.com/talent) to
companies who are hiring programmers. Our data team spent much of 2017
[digging up insights](https://stackoverflow.blog/insights/) from our
unique data about developers. They also introduced [Stack Overflow
Trends](https://stackoverflow.blog/2017/05/09/introducing-stack-overflow-trends/)
to facilitate your own research and released an [improved salary
calculator for
programmers](https://stackoverflow.blog/2017/09/19/much-developers-earn-find-stack-overflow-salary-calculator/). After
years of planning, the SRE team [moved to HTTPS
everywhere](https://stackoverflow.blog/2017/05/22/stack-overflow-flipped-switch-https/). In
addition to the Stack Exchange app, we now have a [Stack Overflow
mobile
app](https://stackoverflow.blog/2017/05/16/stack-overflow-official-app-launches-ios-android/)
for Apple and Android phones. Finally,  Jess Pardue explained [how
remote work really
works](https://stackoverflow.blog/2017/09/29/making-remote-work-behind-scenes/).


I'm not going to spin it; 2017 was not a terrific year for Stack
Exchange Inc. Remember the Documentation feature [I was so excited
about last
year](https://stackoverflow.blog/2017/01/26/year-in-review-2016/)? We
[shut it
down](https://meta.stackoverflow.com/questions/354217/sunsetting-documentation)
in August. It's still a good idea and there's a huge opportunity, but
our real strength is user-curated questions and
answers. Unfortunately, we also [lost a number of outstanding
colleagues](https://meta.stackexchange.com/questions/303005/what-happened-with-the-stack-overflow-layoffs). (It
was strictly a business decision and we miss them tremendously.) So
it's more important than ever to focus on what we do best: enable our
talented communities to answer the internet's questions.

