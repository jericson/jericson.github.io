---
layout: post
title: Using Conway's Law for good
tags: conways_law openssl
comments: yes
---

During my [first week at
OpenSSL](https://openssl-library.org/post/2025-01-17-introducing-jon/),
I've been learning more about the organizational structure. A question
has gnawed at me since I first learned about the job: Why was the
Foundation split off from the Corporation? I can [read about the
decision](https://openssl-library.org/post/2024-07-24-openssl-new-governance-structure/),
but as an outsider I don't really have the background needed to truly
understand how OpenSSL got here.

## A brief history of OpenSSL

The OpenSSL project is synonymous with the SSL protocol [developed by
Netscape in
1995](https://en.wikipedia.org/wiki/Transport_Layer_Security#SSL_1.0,_2.0,_and_3.0). This
enabled secure communication between the Netscape Navigator browser
and the Netscape Commerce Server.^[You can read the [Netscape Commerce
and Communications Servers Administrator’s
Guide](https://irix7.com/techpubs/007-2909-001.pdf) on the internet.]
Unfortunately, some of the cryptographic algorithms required to
implement the protocol were [illegal to export from the
US](https://web.archive.org/web/19991012050824/http://www.columbia.edu:80/~ariel/ssleay/ssleay-legal-faq.html)
at the time.^[As an act of civil disobedience, some people put copies
of the RSA algorithm in [their email signatures, on T-shirts and
tatoos](http://www.cypherspace.org/rsa/). It was a strange time.] So
two engineers from Australia, Eric A. Young and Tim J. Hudson
[developed SSLeay](https://en.wikipedia.org/wiki/SSLeay) as an
open-source library that could be used by developers around the world.

In 1998 the developers of SSLeay were hired by [RSA
Security](https://en.wikipedia.org/wiki/RSA_Security) and stopped
working on the project. In order to continue to have an open source
SSL library, a group of volunteers forked SSLeay to start OpenSSL. The
new project relied on donations which amounted to [~$2,000 a
year](https://groups.google.com/g/mailing.openssl.users/c/-P4T62ml_1I/m/cOgioSoOUPEJ). Clearly
that's not enough to support even one programmer, so the project was
largely developed by volunteers donating their time. So an integral
part of the internet subsisted on a shoestring budget, the kindness of
strangers and some consulting work.

Then the world of internet security changed. A subtle bug introduced
in the OpenSSL code was revealed with the catchy label
[Heartbleed](https://en.wikipedia.org/wiki/Heartbleed). It's not often
a bug can be clearly explained in a cartoon:

[![Are you still there, server? It's me,
Margaret.](https://imgs.xkcd.com/comics/heartbleed_explanation.png)](https://xkcd.com/1354/)

Given the importance of the project, Heartbleed prodded many people
and organizations to take action to reduce the odds of future
vulnerabilities. In particular, the Linux Foundation started the [Core
Infrastructure
Initiative](https://en.wikipedia.org/wiki/Core_Infrastructure_Initiative)
which funded two full-time OpenSSL developers for three years. But the
problem remained. How does a complicated and critically-important
open-source project retain the expertise needed to fulfill its
mission?

According to a [2023 post on the OpenSSL
blog](https://openssl-foundation.org/post/2023-08-08-finances/):

> So since 2020, our main source of income is by selling support
> contracts. Companies can purchase a contract if they need technical
> help with OpenSSL or if they need access to support for older end of
> life versions such as OpenSSL 1.0.2. Another driver for taking out
> such contracts is FIPS, where companies may wish to have FIPS
> compliant products with OpenSSL by rebranding our OpenSSL 3 FIPS
> certificate.

So OpenSSL now has a sustainable source of income to pay for a team to
manage the library for the foreseeable future.

## Conway Judo

I've [written about Conway's Law in the past](/tag/conways_law.html)
in the past, but I think it's helpful to quote a summary from [the
paper](https://www.melconway.com/Home/pdf/committees.pdf) it came
from:

> The very act of organizing a design team means that certain design
decisions have already been made, explicitly or otherwise. Given any
design team organization, there is a class of design alternatives
which cannot be effectively pursued by such an organization because
the necessary communication paths do not exist. Therefore, there is no
such thing as a design group which is both organized and unbiased.

One reading of the final sentence implies that Conway's Law always
produces sub-optimal results. Would not an _unbiased_ design group be
preferred to a biased team? Well, we know of several exceptions such
as [adversarial legal
systems](https://en.wikipedia.org/wiki/Adversarial_system) in which
the parties are represented by lawyers who specifically advocate for
their interests. Yes both representatives are biased, but the system
as a whole is designed to give both the prosecution and defense the
best possible arguments for their side of the case.

WE can see another example in the sometimes unseemly world of
politics: [special-interest
groups](https://en.wikipedia.org/wiki/Advocacy_group). By advocating
for a specific policy, issue or cause, lobbyists behave in a biased
way that benefits people who agree with the groups' aims. As long as
an organization [avoids mission
creep](/2024/12/31/warrant_canary.html), bias gives the group's
purpose the best chance to overcome competing or opposing interests. 

Everybody involved in OpenSSL cares about providing an excellent
library of cryptography tools that will minimize catastrophic bugs
such as Heartbleed. Securing a sustainable income stream to pay
developers to work on the library aided that cause. But there's always
a risk that meeting the needs of paying customers could distract from
the larger goal of providing security and privacy tools to _everyone_. 

Last year OpenSSL turned off [GitHub sponsorship for the
project](https://github.com/sponsors/openssl) while it evaluated its
own organizational structure. It's hard to know what to do with
donations when the project can sustain itself commercially. The
practical answer was to split OpenSSL into two pieces:

* The [OpenSSL Corporation](https://openssl-corporation.org/), which
  focuses on commercial interests, and
* The [OpenSSL Foundation](openssl-foundation.org), which focuses on
  individuals, other open-source projects and academics.
  
As a result, the [Foundation accepted GitHub sponsors
again](https://openssl-foundation.org/post/2024-12-11-individual-sponsorship/),
which allows small donations. Those donations, in turn, fund parts of
the mission that risk being overlooked in a unified structure. Our
funding source changes our communication paths so that we can
effectively work on features that might not have any commercial
application.

<!--  LocalWords:  Heartbleed OpenSSL SSL
 -->
