---
layout: post
title: Docs 2.0
subtitle: An overnight success 15 months in the making
comments: yes
tags: documentation
---

I wrote a short series for our internal blog at
[EDB](https://www.enterprisedb.com/company/about) last the fall. It's
an introduction to our [updated documentation
system](https://www.enterprisedb.com/docs/). 

1. [Everyone can contribute](/2022/04/04/docs2_contribution.html)
2. [An overnight success 15 months in the making](/2022/04/05/docs2_success.html)
3. [The beginning of a beautiful friendship](/2022/04/06/docs2_edb_cloud.html)

---


Over the course of a couple of weeks in August the documentation team
added [EDB Cloud](https://www.enterprisedb.com/docs/edbcloud/latest/)
and [BDR ](https://www.enterprisedb.com/docs/bdr/latest/) plus three
third-party integration guides
([Liquibase](https://www.enterprisedb.com/docs/partner_docs/LiquibaseGuide/),
[Nutanix](https://www.enterprisedb.com/docs/partner_docs/NutanixGuide/)
and
[Thales](https://www.enterprisedb.com/docs/partner_docs/ThalesGuide/))
to Docs 2.0.  Each came with its own challenges, but the new platform
has proven itself to be flexible and capable of hosting a variety of
content. More importantly, documentation kept pace with product
development both for major releases and dozens of minor releases
happening concurrently.


## Many hands make hard work go faster

Since we use Git, it's possible to construct a holistic history of
development before the final product. We're pretty proud of what we
accomplished in August, but when you dig below the surface, it's also
a validation of a year and a half of effort:

![Docs 2.0 repository history](/images/docs2_timeline.png)

This chart shows:

1. Number of commits each day (blue). A commit represents work saved
   to the repository. It could be anything from a single character
   typo fix to adding an entire new section of content. The rate of
   commits increased greatly in 2021 because more people were working
   on the project in preparation for deploying Docs 2.0.
2. Total number of authors who contributed up to that moment
   (red). It's a running total of everyone who contributed so far. A
   contribution could be as small as fixing the wording of a sentence
   or as large as documenting a whole new product.
3. Number of production releases on a day (black). Our first release
   was in January 2021 and by February we were in the habit of
   publishing two to three times a week. Each release rolls up all the
   work that has been committed to our development branch so far and
   makes those changes public. We have a robust review process to make
   sure we always have the best and most up-to-date content available
   to our customers.
4. Key events are labeled on the date they occurred. For instance, you
   can see the first EDB Cloud commit happened in late June and that
   documentation was published in August. The 5 events I mentioned
   above (EDB Cloud, Thales, BDR, Liquibase and Nutanix) overlap on
   the chart as different teams completed documentation in parallel.

Of course, this chart doesn't show the work that went into planning
before the first commit to our [GitHub
repository](https://github.com/EnterpriseDB/docs). But it does show a
small group of people who set up the framework in 2020 followed by a
growing team of contributors refining the platform for the first half
of 2021. Finally, starting this summer, the list of authors grew as
more people from around the company made the push to release the EDB
Cloud preview.


## Speedy delivery of the documentation our customers need

Putting documentation on GitHub, an early decision [I wrote about last
time](/2022/04/04/docs2_contribution.html),
enabled the developers, designers, writers and product managers to
contribute to different branches of documentation
simultaneously. Changes don't have to wait for other, unrelated work,
to be finished. Increasing the rate of change in documentation allows
us to deliver better products to our customers more quickly.

