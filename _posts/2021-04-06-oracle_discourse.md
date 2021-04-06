---
layout: post
title: Hosting Discourse for free!
tags: community discourse
comments: true
---

Last year I got to know Discourse by [moving a community to the
platform](/2021/03/18/leaving_cc.html). Having left that job, I feel a
sense of withdrawal. So I decided to start my own Discourse
server. But since I'm unemployed (and don't have a solid use for it
just yet), I sought out a way to host for free.[^1] 

## Prerequisites

I'm going to assume you know how to ssh into a server and you have a
[an ssh key](https://www.ssh.com/ssh/keygen/). For most people,
getting one is as simple as using this command:

```
$ ssh-keygen
```

Later on, you'll need to copy and paste the contents of your public
key. On a Mac you can use this command:

```
$ cat ~/.ssh/id_rsa.pub | pbcopy
```

On Windows, [these
instructions](https://phoenixnap.com/kb/generate-ssh-key-windows-10)
should help.

## Start an Oracle compute instance

I started down this track when I found [this
article](https://blogs.oracle.com/developers/install-run-discourse-for-free-in-the-oracle-cloud)
about hosting Discourse on Oracle Cloud for free. Unfortunately that
article is a bit out of date, so I'm going to share what I learned
about the process. Get started by [signing up for an Oracle Cloud
account](https://www.oracle.com/cloud/free/) and create a VM instance.

Perhaps most important missing instruction is **don't use the default
server image**. Discourse requires 1GB of RAM (or [there
abouts](https://github.com/discourse/discourse/pull/7368)) and the
Oracle Linux image doesn't leave enough memory for some reason. I
don't know whether CentOS will work, but the Ubuntu image is
fine. Just be sure to pick the full install[^2] rather than the
"Minimal" install:

![Canonical Ubuntu (not "Minimal")](/images/oracle_image.png)

This page is where you need to paste your public SSH key:

![Paste public key](/images/oracle_ssh_key.png)

And you should be good to create the instance:

![Create button](/images/oracle_create.png)

I have no idea what "Create as Stack" means, so I just picked the
"Create" button. Seems to work so I can't be bothered to learn
the difference. It will take a minute or two, but you are looking to
get an IP address to start the next step.

If a free Oracle VM isn't your thing, DigitalOcean offers a similar
service for $5 a month. They call it a Droplet and if you [use this
referral link](https://m.do.co/c/c18cde9666ab), you'll get a credit to
get started. Full-disclosure: I will also get a referral fee if you
spend $25 or more.

## Get a domain from Freenom

Once you have an IP, it's time to get a domain. Domains [need not be
expensive](/2019/05/15/domain.html), so you might already have
one. Since the premise of this post is setting up Discourse _for
free_, even an inexpensive domain is too much. Fortunately there are
[5 top level domains](https://www.freenom.com/en/pricechart.html) that
offer free subdomains:

| TLD | Country | 
| :-- | :------ |
| .tk | [Tokelau](https://en.wikipedia.org/wiki/Tokelau) |
| .ml | [Mali](https://en.wikipedia.org/wiki/Mali) |
| .ga | [Gabon](https://en.wikipedia.org/wiki/Gabon) |
| .cf | [Central African Republic](https://en.wikipedia.org/wiki/Central_African_Republic) |
| .gq | [Equatorial Guinea](https://en.wikipedia.org/wiki/Equatorial_Guinea) |

For the purposes of this article, I created jlericson.tk. I suppose
.tk stands for the same thing it does in
[Tcl/Tk](https://www.tcl.tk/): "toolkit". It's a place for me to do
testing, so sign up is by invitation only. (Not that there's anything
to see there.)

By the way, if you do plan on paying for a domain, I don't recommend
Freenom for that. I use [Porkbun](https://porkbun.com/), but there are
many other domain name services that have a good set of features for a
low cost.

Whatever service you use, there should be a way to add a DNS entry:

| Type | Host | Answer | TTL |
| :--- | :--- | :----- | --: |
| A    | discourse.jlericson.tk | 129.159.44.210 | 300 |

Obviously use your own domain and IP as Host and Answer. Use the IP of
the server you created in the previous step (either from Oracle or
DigitalOcean). A low TTL will help if you decide to change IPs. I spun
up new VMs to make sure I had these instructions correct and it was
helpful to only need to wait 300 seconds or so when making
changes. Speaking of which, let's set up a mail server while we wait
for the DNS record to propagate.

## Set up a mail server on Mailjet

In the ongoing saga of "Why can't we have nice things?", spammers have
spoiled email service. Thankfully there are [several services suited
for
Discourse](https://github.com/discourse/discourse/blob/master/docs/INSTALL-email.md).[^3]
I picked Mailjet, which, as of this writing, allows me to send up to
200 emails a day for free. That's not a ton, of course. But I don't
expect I'll need to send that many emails. And if I do, that'd mean I
have a fair number of users and I'd be willing to stop being so cheap.

Once you sign up for an email server, make sure you can use it to send
emails from the address you intend to use for sending emails from
Discourse. Usually that's a `noreply@` email from your domain. With
Mailjet, I can validate my entire domain by adding a DNS TXT
record. That way I can use an email address that doesn't receive
email. There are also optional SPF and DKIM records to allow emails to
be authenticated which decreases the odds they will go to spam. While
waiting for that record to propagate, it's time to install Discourse.

## SSH into your server and install Discourse

If you set up your domain properly and if the Oracle VM is up and
running, you should be able to log in via SSH:

```
$ ssh ubuntu@discourse.jlericson.tk
```

If it doesn't work, the error should point to a DNS issue, a problem
with the VM or something wrong with your SSH key. Assuming you get in,
it's time to set up the firewall rules using [these
instructions](https://meta.discourse.org/t/self-hosting-for-free-with-oracle-cloud/139184/15). You
can test if everything is working using netcat. On the server set up a
listener on port 443:

```
$ sudo nc -l 443
```

From another machine, test the port with:

```
$ nc -z -v discourse.jlericson.tk 443
```

If everything is working, you'll get a response like this:

```
Connection to discourse.jlericson.tk port 443 [tcp/https] succeeded!
```

And now you should be all set to [install
Discourse](https://github.com/discourse/discourse/blob/master/docs/INSTALL-cloud.md). When
everything is set up, be sure to create the admin user
account. Consider toggling the `disable digest emails` setting so that
you aren't sending out digest emails which will eat into the Mailjet email quota.

## Using Discourse as for comments on a Jekyll blog

At the moment Oracle limits non-paying customers to two VMs, so I
might as well put up another Discourse instance at
https://discourse.jlericson.com/ . A really nice feature of Discourse
is that it allows people to [embed comments on a static site with a
bit of
JavaScript](https://meta.discourse.org/t/embedding-discourse-comments-via-javascript/31963). Up
til now, I've been using [GitHub issues for comments](/comment.html),
which has worked out fine for a technical audience. Lately, however,
I've been thinking about how to reach non-technical people who want to
understand online communities. So I'm experimenting with Discourse for
comments.

The instructions for embedding are very clear if you go to
`/admin/customize/embedding` on your Discourse site. Since I want to
allow _any_ page or post on my domain to have comments, my setup looks
like this:

| Allowed Hosts | Class Name | Path Allowlist | Post to Category |
| :------------ | :--------- | :------------- | :--------------- |
| jlericson.com | comments   |                | Blog Comments 	 |


The page will show an HTML block with some JavaScript embedded. That
needs to be included at the bottom of every page with comments. I'm
using a file called
[`_includes/comments.html`](https://github.com/jericson/jericson.github.io/blob/master/_includes/comments.html)
which I add at [the bottom of every
post](https://github.com/jericson/jericson.github.io/blob/e152e494ea41d32537b65390ed82d64bed99c0c5/_layouts/post.html#L27). That
lets me exclude some posts from having comments, if needed. It also
allows me to swap out my comment functionality when I, say, begin
hosting Discourse.

The one trick is I need to replace the string `REPLACE_ME` in the
embedded JavaScript wit the URL of the post I want comments
for. That's easy enough with [Jekyll
variables](https://jekyllrb.com/docs/variables/) and [Liquid
templates](https://jekyllrb.com/docs/liquid/):

```
  DiscourseEmbed = { discourseUrl: 'https://discourse.jlericson.com/',
                     discourseEmbedUrl: '{{ site.url }}{{ page.url }}' };
```

If I set all this up correctly, you should be able to see an option to
comment below the footnotes.[^4]

---

Footnotes:

[^1]: Obviously there is a _caveat lector_: you get what you pay
    for. For a fun side project that isn't critical, these free
    services are fine. But I'm going to mention some very low cost
    options along the way that are more appropriate for people who
    need Discourse to be up and running all the time. If nothing else,
    paying for a service means you will have some leverage (your
    recurring revenue) to get help if things go wrong.

[^2]: This will save you from running these two commands need to get
    missing and necessary packages.

    ```
    ubuntu@discourse:~$ sudo unminimize 
    ubuntu@discourse:~$ sudo apt-get install git
    ```

    Again, no need to run these commands if you pick the full install.

[^3]: Email is critical on Discourse because it's [how people create
    an account](https://blog.codinghorror.com/the-god-login/). In a
    real sense, email is the key to an online identity. Even Slack,
    which aspires to kill email, uses email address to validate users. 

[^4]: For now this is only for posts that don't already have a GitHub
    issue for comments. I'm not sure if I will ever convert them, but
    it largely depends on whether I build an active comment culture.
