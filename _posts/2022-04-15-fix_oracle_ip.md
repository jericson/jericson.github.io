---
layout: post
title: The mystery of the  missing Oracle Cloud IP 
tags: community discourse oracle
comments: true
---

This morning I decided to look at my blog comments hosted on [Meta
Jon](https://meta.jlericson.com/), which is a [free Discourse instance
on Oracle Cloud](/2021/04/06/oracle_discourse.html). I discovered my connection
had timed out. So I tried to log in directly using `ssh`:

```
$ ssh ubuntu@meta.jlericson.com
ssh: connect to host meta.jlericson.com port 22: Connection timed out
```

Next step, I visited the [Oracle Cloud compute instances
report](https://cloud.oracle.com/compute/instances), which showed both
of my instances running. (I've got [a second Discourse for
testing](https://beta.jlericson.com/).) Since I've been getting emails
reminding me to renew [my domain](/2019/05/15/domain.html), I wondered
if there was [a problem with DNS
configuration](https://www.cyberciti.biz/humour/a-haiku-about-dns/). That
seemed in order, so went back to the Oracle Cloud page to see if maybe
my IP had changed. That's when I discovered I no longer have a public
IP for Discourse:

![Public IP address: -](/images/oracle_missing_ip.png)

(I'm using a screenshot from my beta Discourse instance, which I haven't
fixed yet.)

I followed the [reserved public IP
link](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/managingpublicIPs.htm#assign-reserved)
and fixed the problem by reserving a new IP and using it for my
Discourse compute instance. Then I had to update DNS (using my domain
registrar's website) and wait a few minutes for the change to
propagate.

So why did I lose my IP? A search of my email revealed the problem:

>  Oracle Cloud Infrastructure Customer,
> 
> We have identified an issue affecting a subset of customers who have
> become unable to access their Oracle Cloud Infrastructure resources.
>
> Customer Impact: Some customers with Free Tier accounts, using
> Ephemeral or Reserved Public IPs will be unable to access their
> resources due to the unintentional reclamation of the IPs associated
> with their Virtual Machines.
> 
> While we have taken steps to ensure no further impact occurs, any
> affected Public IPs will need to be re-established by reassigning a
> new Public IP through the Oracle Cloud Infrastructure Console, REST
> API, SDK CLI or other tools, as described in the following
> documentation:
> 
> https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/managingpublicIPs.htm
>
> If a preferred public IP is configured, the public IP assignment may
> still be reassigned subject to its availability.
>	
> > Production Event Notification
> > 
> > Time Detected: April 14, 2022 03:50 UTC
> > 
> > Service(s): Oracle Cloud Infrastructure Virtual Cloud Network
> > 
> > Tenant Name: jlericson 

Mystery solved and a fairly informative notification. More than I'd
expect from a free service, if I'm honest. 
