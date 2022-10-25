---
layout: post
title: Working on a Discourse theme
subtitle: Setting up your environment
tags: discourse
comments: true
---

Over at College Confidential we recently hired [Student
Ambassadors](https://talk.collegeconfidential.com/t/introducing-the-2022-student-ambassadors/3620097). As
we perused the resumes, we noticed many candidates have computer
science backgrounds. So I interviewed a few more people and we hired
two more Student Ambassadors who will be focused on helping us improve
our user interface.[^1] Now I'm like the teacher who is thrust into a
new-for-them class and has to learn each lesson a week before teaching
it. So let's jump into the world of Discourse theme development.

The first step is to read [the
documentation](https://meta.discourse.org/t/beginners-guide-to-using-discourse-themes/91966). It'
not necessary to understand everything at one go, but it does help to
have an idea of what a theme consists of and how to manage them on
your own Discourse server.

Speaking of which, we're going to install Discourse locally so that we
can make and test changes without breaking anything for other
people.[^2] In [my time at
EDB](https://jlericson.com/2022/06/13/year_at_edb.html) I got
initiated into the cult of Docker. It's amazing to be able to spin up
an entire virtual machine with a few commands. Docker sidesteps all
the complications of [hunting down
prerequisites](https://jlericson.com/2021/05/14/install_pg.html) for
native installation.[^3]

## Installing Docker

Discourse has [a terse set of
instructions](https://meta.discourse.org/t/install-discourse-for-development-using-docker/102009#step-1-install-docker-2)
for installing Docker. I'd add a few notes:

* My [process for setting up a
Mac](https://gist.github.com/jericson/16f4cc5045dde50c3263064eae339686)
includes [getting Homebrew](https://brew.sh/), so that's the easiest
way for me. Presumably the packaged `.dmg` option is just as easy, but
you'll probably want to use Homebrew to install other tools
later. Unless you have a good reason to avoid it (not on Mac, for
instance), that's the way I'd recommend.

* If you have an M1 Mac, you might need to do the [native
install](https://meta.discourse.org/t/install-discourse-on-macos-for-development/15772),
unfortunately. I don't have any experience with that route.

* [My PC install
process](https://gist.github.com/jericson/b4f8199b24f7265f818a843a9a114b24)
includes [sharing a home directory between Windows and
WSL](https://jeremyskinner.co.uk/2018/07/27/sharing-home-directory-between-windows-and-wsl/).
Windows Subsystem for Linux (WSL) makes Windows nearly as good as macOS
for developers.

Once you have Docker installed, it's probably a good idea to [test it
out](https://docs.docker.com/get-started/#start-the-tutorial) so that
if you have problems later you know it's not something basic related
to Docker. (Trust me. This is still easier than a native install.)

## A quick note on organization

We're going to do several `git clone` commands that pull down code
from GitHub. It's pretty easy to get confused about where your working
code is if you run these commands willy-nilly. So I've gotten in the
habit of putting code that I intend to work on in `~/src`. So from the
command line, I start by creating the directory:

```
$ mkdir ~/src
```

(This only needs to be done once.)

And when I'm about to clone a repository, I move do that directory first:

```
$ cd ~/src
$ git clone https://github.com/some/repository
```

That way I can always find my work later on. If you ever clone
something elsewhere, you can always move it later. Git repositories
maintain their own context wherever you move them:

```
$ mv repository ~/src
```


## Configuring Discourse

If you don't already have `git` installed, now is a good time [to do
that](https://git-scm.com/downloads). [Starting the
container](https://meta.discourse.org/t/install-discourse-for-development-using-docker/102009#step-2-start-container-6)
will take a few minutes, if all goes well. You'll know it worked if
you visit http://localhost:4200/ and see "Congratulations, you
installed Discourse!" Unfortunately, you won't have an admin account
registered, so we'll need to [do
that](https://meta.discourse.org/t/create-admin-account-from-console/17274). Those
instructions are for Discourse hosted somewhere else, but we are using
a local Docker. So from wherever you have the Discourse repository[^4]
downloaded, run `d/rake admin:create` instead:

```
$ d/rake admin:create
Email:  jon@jlericson.com
Password:  
Repeat password:  

Ensuring account is active!

Account created successfully with username jon
Do you want to grant Admin privileges to this account? (Y/n)  y

Your account now has Admin privileges!
```

[Probably use _your_ email and not mine!]

At this point you have a local installation of Discourse! Take moment
to bask in your own glory.

Note that you'll be running:

1. The `discourse_dev` Docker container.
2. `d/rails s` in a terminal.
3. `d/ember-cli` in another terminal.

If you stop the container, the other processes will stop too. When you
start it up again, you'll need to restart those processes.

## Installing a custom theme

College Confidential's theme is in a private repository. For the sake
of this post, I'm going to pretend that we are hacking on the
[Graceful
theme](https://meta.discourse.org/t/a-graceful-theme-for-discourse/93040). Anytime
you see the string `graceful` below, substitute the correct string for
the theme you are actually working on.

Begin by cloning the theme repository:[^5]

```
git clone https://github.com/discourse/graceful
Cloning into 'graceful'...
remote: Enumerating objects: 283, done.
remote: Counting objects: 100% (123/123), done.
remote: Compressing objects: 100% (53/53), done.
remote: Total 283 (delta 76), reused 78 (delta 68), pack-reused 160
Receiving objects: 100% (283/283), 186.07 KiB | 1.11 MiB/s, done.
Resolving deltas: 100% (128/128), done.
```

At this point, you can use the `zip` command to zip up the directory
and install the theme via http://localhost:4200/admin/customize/themes
. But there's a better way! I recommend using the [Discourse Theme
CLI](https://meta.discourse.org/t/install-the-discourse-theme-cli-console-app-to-help-you-build-themes/82950):

```
$ gem install discourse_theme
$ discourse_theme watch ~/src/graceful
```

The second command will prompt for a few bits of information:

1. Use `http://localhost:4200` for the URL when using Docker locally.
2. Get an API key from http://localhost:4200/admin/api/keys . Make sure you:
   * Use a descriptive description so you remember what this key is for.
   * The key should be set for a single user&mdash;your admin user.
   * It should be `Glocal` scope.
3. Go ahead and save your inputs so that you won't need do the whole
   process over again next time.
4. Allow the script to create a new theme on your Discourse server.
   
Now if you change anything in theme directory, it automatically
updates the theme. The only downside is that you'll need to have _yet another_ process running:

1. The `discourse_dev` Docker container.
2. `d/rails s` in a terminal.
3. `d/ember-cli` in another terminal.
4. `discourse_theme watch PATH` in yet another terminal.

The plus side is you can use your favorite IDE[^6] to change the theme
and see the results update live.

---

Footnotes:

[^1]: It's similar to a paid internship, which [how I got my
    start](https://jlericson.com/2015/04/22/cs_females.html). 
    
[^2]: We can use [Oracle
    Cloud](https://jlericson.com/2021/04/06/oracle_discourse.html),
    but that's an unnecessary complication when the goal is to work on
    our theme.
    
[^3]: I even use Docker to [preview posts for this very
    blog](https://github.com/jericson/jekyll-serve).


[^4]: Hopefully `~/src/discourse`. Hint, hint!

[^5]: Don't forget to `cd ~/src` first! If already forgot, just move
    the `graceful` directory there.
    
[^6]: [Visual Studio Code](https://code.visualstudio.com/download) is
    a good place to start if you haven't got a favorite yet.

<!--  LocalWords:  Homebrew
 -->
