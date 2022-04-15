---
layout: post
title: Docs 2.0
subtitle: The beginning of a beautiful friendship
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

[Our last post](/2022/04/05/docs2_success.html) pointed out that EDB Cloud
documentation was added to Docs 2.0 in August in parallel with 4 other
products. As with other aspects of EDB Cloud, it was a heroic effort
and many people pitched in to help. I interviewed some of the people
involved in creating that documentation to find out what went well and
what we might improve. This post summarizes some of our findings.

![Humphrey Bogart and Claude Rains in _Casablanca_: "Louis, I think
this is the beginning of a beautiful
friendship."](/images/docs2_casablanca.png)

## "The way it worked back then was... one doc person for the whole company."

The EDB Cloud product represents an important shift in company
strategy. But it's also just one product that needs to be
documented. In order to keep our customers up-to-date on new and
improved features, it's important that **documentation work happens in
parallel**. Just about everyone I talked to pointed out that Docs 2.0
streamlined the process for having multiple in-progress documentation
projects going on. Since Git branches can be modified independently
and merged once the work is completed, it's not unusual for multiple
products to be released at the same time.


## "I'm just a developer. I don't have experience writing docs."

The EDB Cloud project didn't start with a dedicated documentation
position. But that isn't to say documentation was an
afterthought. Aislinn Wright, the product manager, put together the
information architecture and structure for documentation. Sergey
Krivov, a developer, stepped up to write the initial draft. Dee Dee
Rothery, the documentation manager, helped edit the content. With the
preview deadline approaching, Amrita Suresh (Product Management
Intern) and Kelly Poole (VP, Product Management) pitched in. Those are
just the people I interviewed. Especially toward the end, this was a
cross-team effort.

When **everyone is involved**, splitting up tasks can be
challenging. EDB Cloud's model, which emerged as the team came
together, was for developers to write the first draft, documentation
experts to edit the copy and PMs to review the final product before
publication. That's not the only way to divide responsibility, but it
does play to the strengths of each member of the team. If we want
accurate and engaging documentation, we need people who are adept at
both technical writing and are familiar with the specifics of our
products. Developers documenting their own work which is edited by
professional writers produces better outcomes than either on its own.


## "I honestly couldn't imagine if a year ago we tried to do this."

I also interviewed Bobby Bissett who is the self-described "EFM
guy". Bobby showed me the Google Pages site the EFM developers used to
track changes to documentation needed for a release. In my interviews,
I found that other people used a combination of email, Slack, Jira
tickets, Google docs and Google sheets to coordinate their work. The
problem with using so many forms of communication is that it can be
hard to find, or even know about, discussions that have happened in
the past.  By contrast, [GitHub is a communication
tool](/2022/04/04/docs2_contribution.html) that focuses the conversation on the content
being discussed. A pull request (PR) not only includes suggested
changes, but also allows other people to comment on the complete set
of changes or individual lines. Keeping all that discussion in the
same place makes it easier to keep track and helps reviewers
understand why changes were made.

Using GitHub has opened up Docs 2.0 so that anyone can see how things
are progressing. (I [wrote about that
previously](/2022/04/04/docs2_contribution.html).) Since many people are already
familiar with Git from other projects, using it for documentation
wasn't a major hurdle. GitHub facilitates a **transparent editorial
process** from writing the first draft to copy editing to review to
final publication.


## "Do you mind just suggesting an edit instead?"

Kelly pointed out that when customers run into problems with our
products that might be a sign of a gap in our documentation. Instead
of solving each customer's issue with back-and-forth emails, it's more
efficient for us to fix the documentation once for
everyone. Especially for typos, there doesn't need to be an involved
process to make changes. With Docs 2.0, it's now possible to **make
changes directly**. Every change to documentation gets reviewed in the
pull request (PR) process, so contributors don't even need to worry
about making a mistake.

After reading [the first post in this series](/2022/04/04/docs2_contribution.html),
Bobby noticed a minor problem with the EFM documentation and decided
to fix it using GitHub's web interface:

![Patch with minor wording changes](/images/docs2_bobby_update.png)

When I asked him about the process, he told me:

> You've got all the changes in one place. I really do like using
> source code control for doing it that way.

## Let's build this friendship together

For many customers, documentation is the face of our products. It's
critical to our collective success. Interviewing documentation
contributors helped us gather all sorts of feedback we can use to make
Docs 2.0 more useful to users and more efficient for
contributors. We're not done! Your feedback is critical to the success
of documentation, [so we want to hear from you
too](https://github.com/EnterpriseDB/docs/issues/new/choose).
