---
layout: post
title: Docs 2.0
subtitle: Everyone can contribute
comments: yes
tags: documentation
---

I wrote a short series for our internal blog at
[EDB](https://www.enterprisedb.com/company/about) last the fall. It's
an introduction to our [updated documentation
system](https://www.enterprisedb.com/docs/). 

1. [Everyone can contribute](docs2_contribution)
2. [An overnight success 15 months in the making](docs2_success)
3. [The beginning of a beautiful friendship](docs2_edb_cloud)

---

What if I told you that _anyone_ can make EDB products better? I don't
mean "anyone with deep knowledge of PostgreSQL internals" or "anyone
with a technical background". I mean _anyone and everyone_. My story
starts with a fairly mundane announcement. EDB is switching from [our
previous documentation
system](https://web.archive.org/web/20210228033358/https://www.enterprisedb.com/edb-docs)
to what we call [Docs 2.0](https://www.enterprisedb.com/docs/):

[![EDB Docs 2.0 homepage](/images/docs2_homepage.png)](https://www.enterprisedb.com/docs/)

## Inviting readers to fix documentation

The design facelift signals to our users that EDB products will work
with modern development environments. We've also added interactive
demos to allow customers (and potential customers) to see features in
action. However, I think there's an even more important feature that
isn't immediately obvious: the **Docs 2.0 content and source code is
[on GitHub](https://github.com/EnterpriseDB/docs)**. Users won't
notice unless they press this button on the top right of (nearly)
every page:

!["Edit this page"  button](/images/docs2_edit_button.png)

This takes you to GitHub where anyone can edit the source of the page
directly. "Wait", I imagine you are saying, "What about Spam Guy?"
(Spam Guy is the name my kids have given to whoever calls during
dinner that my phone labels as "possible spam".) Fortunately, any
change to documentation sources must go through the regular GitHub
pull request process. Spam Guy can add nefarious links, but they won't
show up on the page because the documentation team will reject the
changes.

Other than the joy of rejecting spam, is there any reason to let
outsiders edit our documentation? Well, in [2017 GitHub surveyed
developers](https://opensourcesurvey.org/2017/#insights) and found
that 93% encountered "Incomplete or confusing documentation". There
are many reasons for this, but one solution is to encourage
documentation users to give feedback. Speaking of which, we also give
users two options for providing feedback if they aren't comfortable
editing the page:

!["Report a problem" and "Give product feedback" menu](/images/docs2_report.png)

Both of these options open a GitHub issue using a custom
template. That way the Experience Team can help customers understand
our products (including documentation) better.  As a bonus, issues are
publicly searchable so that other users can learn from our
responses. (And, yes, we can delete issues if they are spammy or
contain non-public information.)

The process is a little different for [Cloud Native
PostgreSQL](https://www.enterprisedb.com/docs/kubernetes/cloud_native_postgresql/)
since the source for its documentation is currently on an internal
repository. Instead of an edit button we offer a simple feedback
button that opens a GitHub issue:

!["Feedback" button](/images/docs2_feedback.png)

Since they're hosted on our public repository, anyone can respond. In
addition, someone from the Experience or Documentation teams can
elevate the issue internally so that we can address customer problems
efficiently. We've built EDB Docs to flexibly handle a variety of use
cases.

## Working together even when we are a world apart

Recently we added [EDB
Cloud](https://www.enterprisedb.com/docs/edbcloud/latest/) to Docs 2.0
which required people across the company and around the world to edit
documentation. Fortunately, GitHub is built on the world's most
popular distributed version control system. It allows anyone to get a
copy of the entire source tree, make changes to the part they are
responsible for, submit their changes to the central repository and
make them available to the world. Generally speaking, this all just
works. When there are conflicts that need to be merged, Git provides
tools that greatly simplify the process.

Even better, GitHub provides a web interface that works well for
people who don't already know Git. People who need to edit
documentation frequently can clone the repository on their own machine
and use the tools they are most familiar with. And people who only
need to edit documentation occasionally can use an intuitive editor on
the web. GitHub continues to improve the experience. (By the way, have
you tried the new [Codespaces
editor](https://docs.github.com/en/codespaces/developing-in-codespaces/web-based-editor)?)
All of this functionality came with the decision to use GitHub.

Of course none of this matters if people aren't actually contributing
to the project. Getting ready for EDB Cloud put the system to the
test. There was certainly a learning curve for us all, but we had 25
authors from around the world make [393 commits to production
documentation](https://github.com/EnterpriseDB/docs/pulse/monthly):


![Docs repository activity report](/images/docs2_activity.png)

## GitHub: Not just for developers

Developers use GitHub as a simple interface to their source control
software. And it is that. But we like to say that **GitHub is
primarily a communication tool**. Because the tools were originally
built for developers, they have an aura of requiring real technical
skill to use. But when you look past the surface, GitHub isn't so
different from any other collaboration tool. Issues are nothing more
than a way for people to talk about the source. Pull requests are
nothing more than a suggested edit. Think of it as Google Docs with a
particular focus on what matters most to our customers.

GitHub makes it easier for anyone in the company to know what has
changed in the EDB documentation and, more importantly, why it
changed. Literally anyone (with internet access) can suggest edits to
improve documentation. Remember how I said 93% of developers
encountered "Incomplete or confusing documentation"? Well I'm willing
to bet 7% of developers were too embarrassed to admit on an anonymous
survey that they were confused. A big problem in documentation,
perhaps _the_ big problem, is gathering feedback from people who don't
get it.

I'm not saying _you_ are confused by our documentation. But I am
saying your feedback could help many people who are using or
considering EDB products. Hit the edit button if you see anything from
a technical inaccuracy to a typo. And if you are reading the
documentation and something seems incomplete or confusing, send us
that feedback. It will help more than you know.
