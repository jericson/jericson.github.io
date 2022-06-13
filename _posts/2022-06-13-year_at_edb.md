---
layout: post
title: My year at EDB
tags: career
comments: yes
---

When I joined EDB, [I
wrote](https://jlericson.com/2021/04/30/developer_advocate.html):

> In six months I'll read this and laugh and laugh at how naive I once was.

After six months, I did reread that post and it surprised me how much
time of my time as a Developer Advocate was focused on
[documentation](/2022/04/04/docs2_contribution.html) and
[git](/2021/08/24/git_rewrite_1.html). Looking back after a full year,
it occurred to me that I could find traces of most of my
accomplishments [on
GitHub](https://github.com/EnterpriseDB/docs/commits?author=jericson-edb):

* [Moving binary files to LFS to speed up Git operations.](https://github.com/EnterpriseDB/docs/issues/1673)
* [Helping the documentation team do daily builds.](https://github.com/EnterpriseDB/docs/releases)
* [Automate integration of documentation from other projects' repositories.](https://github.com/EnterpriseDB/docs/blob/develop/.github/workflows/sync-and-process-files.yml)
* [Oracle compatibility demo.](https://www.enterprisedb.com/docs/biganimal/latest/using_cluster/06_demonstration_oracle_compatibility/)
* [BigAnimal quickstart guide.](https://www.enterprisedb.com/docs/biganimal/release/free_trial/quickstart/)
* [Installation guide template system.](https://github.com/EnterpriseDB/docs/tree/develop/install_template)

This bullet point list, which I probably should drop into [my
resume](https://jlericson.com/resume/), reminds me that I worked with
[an exceptional
team](https://github.com/EnterpriseDB/docs/graphs/contributors?from=2021-05-01&to=2022-06-06&type=c). Maybe
[resumes should include
co-authors](https://academia.stackexchange.com/questions/110918/how-to-cite-oneself-as-co-author-without-all-names-for-resume-or-presentation). There's
nothing quite like working on a team where each person trusts everyone
else. It's all too rare.

So that's why it's so hard to say goodbye. Friday was my last day at
EDB. My access to Slack, Gmail and so on was removed. All that is
left is to pack up my laptop and ship it back to the office.

![My EDB laptop](/images/edb_laptop.jpg)

EDB was _almost_ entirely an ideal working environment. If you want to
apply for a job there, I have one concern that I'd share in
private. Unfortunately, that one little thing was enough for me to
start looking for other options. I just didn't believe that I could be
successful in my goals at EDB.

Which leads me to perhaps the most import thing I learned over the
last year. I've known, of course, that documentation in some form
(often _many forms_) is critical to successfully using a product. But
working with documentation last year, I realized that's just not
enough. Instead, and I believe this strongly enough to give it a
blockquote:

> **Excellent documentation gives people confidence they will be
> successful.**

If you've ever opened a manual and seen a long list of commands
without context, you know what I'm talking about. It's not enough to
have all the tools of a master carpenter if you don't know what they
are for or how to get started using them. Unless you are satisfied
with customers who are already experts on your product, you must show
them the way.

Further, if given the option between something that looks easy and
something difficult, few people will try the harder route. User
research shows time and time again that even _reading_ can be too
burdensome for most. I myself have observed that I skip reading
something if I think I can avoid it. It's not because we are lazy
(though we are). Rather we are usually focused on a problem that's
only tangentially related to the documentation we are reading.

Mistaken assumptions must be anticipated by documentation and
corrected in advance. Otherwise the reader will hit a wall and assume
they can't move forward in that direction. Since your documentation is
but one path among many, it doesn't pay to let readers fend for
themselves. Give them the resources to succeed and reassure them help
is available.

To take a specific example, shortly after joining EDB, I decided to
[install PostgreSQL](/2021/05/14/install_pg.html) so that I could play
around with baseball data. Frequently I'd run into some error that I
didn't understand which made me wonder if I'd hit a dead end. Now I
intentionally picked a hard way to install PostgreSQL, so that
shouldn't be a surprise. But even though I was committed to the idea,
I found it tough to press on when some unexpected barrier popped up. I
came quite close to just using a pre-build PostgreSQL.

The principle applies not just to customers, but even
internally. EDB's documentation tech stack (GitHub, Netlify, Gatsby,
Nunjucks, Pandoc and Docker) presented challenges to everyone on the
team. As the Experience Team wound down and the Documentation Team
took over, it was important that they feel confident they can use
these technologies successfully.

Technology can be a powerful time and cost multiplier. Netlify and
GitHub means published documentation can be updated nearly as quickly
as the edits themselves. Nunjucks means we don't need to handcraft
hundreds of installations guides to cover all permutations of product,
version and platform. Pandoc means we can provide up-to-date PDFs for
any of our products. Gatsby gave our team the tools to create a
professional, modern site for documentation. But those gains will
quickly be abandoned for the "tried and true" if the team working with
them isn't confident they can be successful.

Today [I returned to College
Confidential](https://talk.collegeconfidential.com/t/cc-updates-for-june-2022/3613536). It
will be a job full of challenges and I'm excited to rejoin the
community and the team I left a little over a year ago. The lessons I
learned from EDB will serve me well in my new/old role. Most
importantly, I will strive to show people I interact with that they
can be successful too. And if they do run into a wall, do my best to
knock it down.

<!--

> One of the things you may have noticed with some of, I'll call it, the
> departure/changes on the X-Team is we're trying to land, a lot of
> those folks into the right places.
>
> We have a couple people we're talking to and I can't say a lot about
> it, but I expect that to get resolved next week and you know going
> forward there really won't be a separate X team.  And that's been
> something, I'd say it worked out that way, and it was intentional
> so. ... People saw the news about Jon Ericson this morning.
>
> And the good news is everybody on that team, who was formally hear has
> landed something new that they're excited about and it's good.  So good folks
> and I'm happy they've landed. We're talking to the final two folks
> about landing them.

-->
