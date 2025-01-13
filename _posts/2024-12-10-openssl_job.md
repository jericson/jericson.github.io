---
layout: post
title: Communities Manager at the OpenSSL Foundation
comments: yes
tags: community openssl
---

An abbreviated timeline of the last year of  my life:

* November 7, 2023: [I was laid off.](https://meta.jlericson.com/t/giving-thanks/237)
* December 2, 2024: [I wrote about my year of Jubilee.](https://meta.jlericson.com/t/jubilee/323)
* December 5, 2024: I got word that I'd been hired as [Communities
  Manager for
  OpenSSL](https://openssl-foundation.org/post/2024-10-22-communities-manager/).

For a view of my mental state after a year of scrapping for work,
consider a dream I had the night after I got the news. In my dream,
the offer was generous---at the top of my expected salary range. But
there was a catch: I would be paid entirely with sugar. I mean they
would ship bags of sugar to my house.[^1] As I considered the offer in
my dreams, it occurred to me that I could use one bag for consuming,
but I'd need to find a way to sell the rest.[^2]

Thankfully the actual offer turned out to be easily convertible to
other goods and services so I will be part of the OpenSSL Foundation
team soon. What will I be doing? Well, here's the [OpenSSL
mission](https://openssl-mission.org/):

> We believe everyone should have access to security and privacy
> tools, whoever they are, wherever they are or whatever their
> personal beliefs are, as a fundamental human right.

OpenSSL _already_ provides security and privacy tools. Using the [`openssl`
command](https://docs.openssl.org/master/man1/openssl/), it's possible
to:

* [generate a pseudo random number](https://docs.openssl.org/master/man1/openssl-rand/),
* [determine if a specific number is prime](https://docs.openssl.org/master/man1/openssl-prime/),
* [compute a password hash](https://docs.openssl.org/master/man1/openssl-passwd/),
* [create a public/private key pair](https://docs.openssl.org/master/man1/openssl-genpkey/),
* [verify a certificate chain](https://docs.openssl.org/master/man1/openssl-verify/),
* [test the speed of various cryptographic algorithms](https://docs.openssl.org/master/man1/openssl-speed/) and, of course,
* [encrypt or decrypt messages](https://docs.openssl.org/master/man1/openssl-enc/).

This is just a sample of the security and privacy tools OpenSSL
already offers free of charge. Anybody can use the OpenSSL software
library and even modify it under [a permissive, open source
license](https://www.apache.org/licenses/LICENSE-2.0) to build code
that looks like:

[![Launch Control Center vestibule blast door. (National Park
Service)](/images/MIMI-blast-door.jpg)](https://www.nps.gov/articles/delta-01-501429.htm#4/31.80/-78.13)

So mission accomplished, right? Unfortunately OpenSSL, like all
software, has bugs. Generally bugs are minor and don't cause
problems. But a decade ago researchers discovered the [Heartbleed
bug](https://heartbleed.com/) in OpenSSL.[^3] This bug hid in the code
for over two years, so it's fortunate that white hat researchers found
it first. As a result, [The Linux
Foundation](https://www.linuxfoundation.org/) invested in [OpenSSL
developers and a security
audit](https://openssl-foundation.org/post/2023-08-08-finances/) to
maintain it as a core part of the internet's infrastructure.

[Modern
cryptography](https://en.wikipedia.org/wiki/Public-key_cryptography)
depends on the difficulty of computing the prime factorization of huge
numbers. In a 1977 Mathematical Games column entitled ["A new kind of
cipher that would take millions of years to
break"](https://fermatslibrary.com/s/a-new-kind-of-cipher-that-would-take-millions-of-years-to-break),
Martin Gardner published an encrypted message with a $100 price for
deciphering it. He wrote "It is this practical impossibility, in any
foreseeable future, of factoring the product of two large primes that
makes the M.I.T. public-key cipher system possible." In 1994, or 17
years after the message was published, a team of volunteers using 1600
computers [solved the
riddle](https://web.archive.org/web/20010924035059/http://www.crypto-world.com/announcements/RSA129.txt)
in 8 months. In 2015, [Nat
McHugh](https://natmchugh.blogspot.com/2015/03/the-magic-words-are-squeamish-ossifrage.html)
broke the code in 4 hours. In the future, quantum computers might use
[Shor's algorithm](https://en.wikipedia.org/wiki/Shor%27s_algorithm)
to break much stronger algorithms in a fraction of that time. Just
today [Google announced a new quantum
computer](https://www.nytimes.com/2024/12/09/technology/google-quantum-computing.html)
which sounds like science fiction, but could bring us a step closer to
[technological
breakthrough](https://blog.google/technology/research/google-willow-quantum-chip/).[^4]

In other words, improvements in computer technology, can make
previously unbreakable code start to look like this:

![Janky lock wrench situation](/images_raw/wrench_lock.jpg)

The National Institute of Standards and Technology (NIST) recently
published [four post-quantum encryption (PQE)
algorithms](https://www.nist.gov/cybersecurity/what-post-quantum-cryptography)
that might thwart decryption from quantum computers and [OpenSSL has
begun work on implementing
them](https://openssl-corporation.org/post/2024-09-17-post-quantum/). Continuing
to develop the library increases the odds that privacy and security
tools will continue to be available in the future.

I'm usually suspicious of organizations claiming their specific
concern is "a human right". It's too easy to pull out that trump card
to move to the front of the concern line. The right to security and
privacy, however, has roots in English common law and was expressed in
[the Fourth Amendment of the US
Constitution](https://constitution.congress.gov/constitution/amendment-4/):

> The right of the people to be secure in their persons, houses,
> papers, and effects, against unreasonable searches and seizures,
> shall not be violated, and no Warrants shall issue, but upon
> probable cause, supported by Oath or affirmation, and particularly
> describing the place to be searched, and the persons or things to be
> seized.

We tend to keep our private information in electronic documents rather
than physical papers, which the founders could not have
anticipated. The government needs a warrant to search my papers and,
by analogy, the files I send across the internet should enjoy similar
protection. 


Footnotes:

[^1]: This dream was almost certainly inspired by [this story about a
    truck-load of
    rice](https://www.boredpanda.com/rice-story-truck-lorry-india/).
    
[^2]: At the moment I can buy 4 pounds of sugar for $3.14 at
    Walmart. That's 78.5¢ a pound. Depending on my exact expected
    salary, I'd receive between 150,000 to 200,000 pounds of
    sugar. Depending on [the type of
    sugar](https://www.bhg.com/recipes/how-to/bake/how-many-cups-in-one-pound-of-sugar/)
    my salary would be between 300,000 and 800,000 cups. In cubic
    meters: 71 to 198. A [40 foot High Cube shipping container has a
    max capacity of 72
    m<sup>3</sup>](https://www.icontainers.com/cubic-meter-calculator-cbm/)
    so my employer would need to deliver at least 1 shipping container
    of granulated sugar or up to 3 shipping containers of powdered
    sugar a year to employ me. As my daughter pointed out, we could
    make and sell candy to get rid of all that sugar. In the meantime,
    I believe I could park the container on my driveway, though there
    might be a city ordinance against parking literal tons of sugar at
    my house.
 

[^3]: To my mind this vulnerability benefited from exceptional
    branding. Attackers could access private data by exploiting a
    memory leak in the implementation of the heartbeat extension.

[^4]: To be clear, this isn't really of any practical use and there's
    [some question](https://x.com/skdh/status/1866352680899104960)
    whether it's genuine progress toward any application at all.

<!--  LocalWords:  cryptographic decrypt OpenSSL
 -->
