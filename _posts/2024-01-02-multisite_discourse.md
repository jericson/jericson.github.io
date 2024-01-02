---
layout: post
title: Running multiple Discourse sites on a single server
tags: discourse programming civitas
comments: yes
---

I used to host comments on [a free Discourse
server](/2021/04/06/oracle_discourse.html), but after [starting a
consulting business](/2023/11/14/building_civitas.html), I've decided
to move to a paid service. At the moment I'm using DigitalOcean
because I can get a virtual machine capable of running Discourse for
$12 a month. It's also easy to spin up new machines (AKA Droplets) and
only pay for the time they are active. I got $200 credits for the
first 2 months in order to try out the service. (If you want get the
same deal, use [my referal link](https://m.do.co/c/0a8e90d7247a).)

Now that the trial period is running out, I've decided to consolidate
my test servers onto one virtual machine in order to save money. At
the moment, I have:

* `beta.jlericson.com`, which is a copy
  of [my meta site](https://meta.jlericson.com/) for
  [staging](https://meta.discourse.org/t/set-up-a-staging-server/225951).
* `beta.buildcivitas.com`, which is a secret project I'm starting.[^1]

One solution would be to set up a completely separate Docker container
for each site. Another is to create [multiple sites on a single
Docker
container](https://meta.discourse.org/t/multisite-configuration-with-docker/14084). Those
instructions note:

> Also, if you plan to run HTTPS, you will need a proxy in front of
> the site to handle it as the built in letsencrypt functionality will
> not work in a multisite scenario.

I do want HTTPS, for [obvious
reasons](https://developers.google.com/search/blog/2014/08/https-as-ranking-signal). Having
a proxy server also allows me to set up [a page for when Discourse is
down for whatever
reason](https://meta.discourse.org/t/add-an-offline-page-to-display-when-discourse-is-rebuilding-or-starting-up/45238). A
drawing shows what I'm aiming for:

![Two URLs going to a single Droplet that's hosting two distinct
Discourse sites in a single
container.](/images/multisite_discourse.svg)

Both of the URLS are linked to a single DigitalOcean Droplet by
setting up [DNS A
records](https://support.google.com/a/answer/2576578?hl=en#zippy=%2Chow-a-records-work%2Cconfigure-a-records-now)
pointing to the same IP. Then a proxy Nginx server outside the Docker
container routes traffic via a web socket to Discourse. Finally
Discourse selects which database[^2] to read based on which host was
in the requested URL.

The big advantage of this setup is that we can run on a single Droplet
without the overhead of running a second Docker container. The more
forums you want to host, the bigger the potential savings. The
downside is that both sites need to be updated in tandem, share email
settings and have the same set of plugins. For small forums, this is
not likely to be a problem.[^3]

## Start by setting up the proxy

I used the [standard Docker
install](https://github.com/discourse/discourse/blob/main/docs/INSTALL-cloud.md)
to set up a new Discourse instance. That way I could have a simple
test without risking any data I cared about. Then I restored a recent
backup from my comment site to become `beta.jlericson.com`. Next I
used [these
instructions](https://meta.discourse.org/t/run-other-websites-on-the-same-machine-as-discourse/17247)
to install Nginx and change app.yml to:

1. Remove SSL related templates,
2. Add in `- "templates/web.socketed.template.yml" and
3. Remove any exposed ports.

At this point I did a `sudo /var/discourse/launcher rebuild app` to
make sure the settings worked and I hadn't messed up the YAML
formatting.

I configured `/etc/nginx/sites-available/beta.jlericson.com`[^4] so
that Nginx passes along traffic to the web socket with the proper
`Host` header set:

```
        server_name beta.jlericson.com;

        location / {
                proxy_pass http://unix:/var/discourse/shared/standalone/nginx.http.sock:;
                proxy_set_header Host $http_host;
                proxy_http_version 1.1;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Forwarded-Proto $scheme;
                proxy_set_header X-Real-IP $remote_addr;
        }
```

This rule only applies to traffic headed toward
`beta.jlericson.com` and it uses a special file Discourse creates for
web socket traffic. With this in place, it's just a matter of running
`certbot --nginx` and checking with your browser that the proxy
redirects traffic to your Discourse site. **Don't move on until you
know this part is working properly!**

## Add a second site to Discourse

The [official
instructions](https://meta.discourse.org/t/multisite-configuration-with-docker/14084)
give _just_ enough detail to figure out what's going on. Instead of
running multiple Discourse servers, the multisite system creates a
second database that represents all the data needed to run a second
site. There's no logical limit to the number of sites that can be
served this way, though it's not hard to imagine running out of
various resources along the way.

The first change is to create a database for `beta.buildcivitas.com` called `civitas`:

```
hooks:
  after_postgres:
     - exec: sudo -u postgres createdb civitas || exit 0
     - exec:
          stdin: |
            grant all privileges on database civitas to discourse;
          cmd: sudo -u postgres psql civitas
          raise_on_fail: false

     - exec: /bin/bash -c 'sudo -u postgres psql civitas <<< "alter schema public owner to discourse;"'
     - exec: /bin/bash -c 'sudo -u postgres psql civitas <<< "create extension if not exists hstore;"'
     - exec: /bin/bash -c 'sudo -u postgres psql civitas <<< "create extension if not exists pg_trgm;"'

```

Then it creates `multisite.yml` configuration that directs
`beta.buildcivitas.com` traffic to the new `civitas` database inside
the Docker container:

```
  before_bundle_exec:
    - file:
        path: $home/config/multisite.yml
        contents: |
         civitas:
           adapter: postgresql
           database: civitas
           pool: 25
           timeout: 5000
           db_id: 2
           host_names:
             - beta.buildcivitas.com
```

Finally, when the app is rebuilt it needs to migrate data from the old
container to the new one:
```
 after_bundle_exec:
    - exec: cd /var/www/discourse && sudo -E -u discourse bundle exec rake multisite:migrate
```

Once again, rebuild the app before moving on.

## Add the second site to the proxy

Finally, I copied `/etc/nginx/sites-available/beta.jlericson.com` to
`/etc/nginx/sites-available/beta.buildcivitas.com` and update contents
to have the proper server name. I also made sure a DNS lookup of both
sites point to the same Droplet. When I was done, all I needed to do
was re-run the `certbot` to create an SSL certificate for the second
site.

## Testing both sites

For some reason, my first account on `beta.buildcivitas.com` wasn't an
admin for some reason. So I needed to use the [multisite directions to
update my
account](https://meta.discourse.org/t/create-an-admin-account-from-the-console/17274#instructions-for-multisite-5). In my case, I used:

```
RAILS_DB=civitas rake admin:create
```

Than I changed some settings on the new site and verified that things
seemed to be working. So far so good!

---

[^1]: Nothing to see just yet. I'm hoping to tease more soon. ;-)

[^2]: In this setup, both sites are hosted on the same PostgreSQL
    database server, which runs in the same container as Discourse. If
    [this were
    Oracle](https://dba.stackexchange.com/questions/37012/difference-between-database-vs-user-vs-schema),
    I'd say "Discourse selects which _scheme_".

[^3]: Hosting a test server in the same container as a production
    system would be a problem. I'm eventually going to bring
    `meta.jlericson.com` to the same Droplet and I suspect the solution
    will be to set up a new container behind the outside nginx
    server.

[^4]: I tried using [config.d rather than
    sites-engabled](https://serverfault.com/questions/527630/difference-in-sites-available-vs-sites-enabled-vs-conf-d-directories-nginx),
    but it didn't seem to work with `cerbot` for whatever reason.
