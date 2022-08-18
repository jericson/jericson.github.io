---
layout: post
title: Prototyping with shell scripts
comments: true
tags: programming
---

I posted [a thread on
Twitter](https://twitter.com/jlericson/status/1431434792147435522)
about how I was adding my [Board Game
Geek](https://boardgamegeek.com/threads/user/2073052?forumname=reviews&parenttype=boardgame&sort=recent)
and [Steam
reviews](https://steamcommunity.com/id/jlericson/recommended) to this
blog. I mentioned how much I enjoy using shell scripts for prototyping
ideas and [Steve Bennett
replied](https://twitter.com/stevage1/status/1431848408285782018):

> Huh, I find bash much worse for prototyping because no good
> debuggers, no libraries etc. But maybe if you are super familiar
> with it...

Since my answer doesn't fit in 240 characters, I decided to write a
post.

To start, being familiar with the Unix shell does make a difference in
how easy it is to build prototypes. I wouldn't necessarily say it's
worth learning shell scripting just for that purpose. But it is an
incredibly powerful tool that more people (especially programmers)
could benefit from using. For instance, I'm writing [a series about
cleaning up a Git repository](https://jlericson.com/tag/git.html) and
we needed to drop down into the command line _many times_ in order to
finish the work. Expertise with shell commands regularly saves me
hours of tedious work.[^1]

To demonstrate how I deal with the lack of debugger, libraries and
other niceties, I'll walk through building a script to import my Steam
reviews. The first step is to find my reviews on the web. Luckily,
there is a view of just my reviews:
`https://steamcommunity.com/id/jlericson/recommended`. There are
several ways to pull data from the internet, but the two most common
are:

* [`wget`](https://www.gnu.org/software/wget/) and
* [`curl`](https://curl.se/).

You might recognize `curl` from `libcurl`. Both were [created by
Daniel
Stenberg](https://stackoverflow.com/questions/55884514/what-is-the-incentive-for-curl-to-release-the-library-for-free/55885729#55885729). It's
reasonable to think of `curl` as a wrapper for using `libcurl` on the
command line. But it would be equally valid to think of `libcurl` as
tool for using `curl`'s functionality within other programming
languages. There are many commandline tools that are developed in
tandem with libraries. Here's a sample of commands I've used in my
shell scripts that mirror functionality often found in libraries:

* [`tr`](https://man7.org/linux/man-pages/man1/tr.1.html),
  [`sed`](https://www.gnu.org/software/sed/manual/sed.html),
  [`awk`](https://www.gnu.org/software/gawk/manual/gawk.html) and
  [`perl`](https://www.perl.org/)&mdash;String manipulation (and
  more!).
* [`pandoc`](https://pandoc.org/)&mdash;Markup format conversion.
* [ImageMagick](https://imagemagick.org/script/command-line-tools.php)&mdash;Image manipulation.
* [`ffmpeg`](https://ffmpeg.org/ffmpeg.html)&mdash;Audio and video editing.
* [`jq`](https://stedolan.github.io/jq/) and
  [`yq`](https://mikefarah.gitbook.io/yq/)&mdash;JSON and YAML
  processing.
* [`bc` and
  `dc`](https://unix.stackexchange.com/questions/124518/how-is-bc-different-from-dc)&mdash;Math
  libraries.

[Unix philosophy](https://en.wikipedia.org/wiki/Unix_philosophy) means
these commands interact with each other in ways their creators could
never imagine. I'll also demonstrate how easy it can be to create a
script that can be combined with other commands to accomplish quite
complex tasks. I'm going to use `curl` to pull down a list of my
reviews. Just passing a URL to `curl` outputs the contents of the
page:

```
$ curl https://steamcommunity.com/id/jlericson/recommended

```

If you run that command, you should see an HTML document that shows my
reviews. As it happens, [the site is
down](https://twitter.com/SteamStatus/status/1432087893904961540) as I
write this. So I can show off a critical debugging tool:

```
$ curl https://steamcommunity.com/id/jlericson/recommended \
| less

```

Piping[^2] output to [`less`](https://en.wikipedia.org/wiki/Less_(Unix))
allows you to examine and search at your leisure. So I was able to
search for "error" by typing `/error` and cycle through the results
with `n` until I found:

```
    <div id="error"><img id="image" src="#" alt="sticker"></div>
    <div id="headline">Something Went Wrong</div>
    <div id="message">
        We were unable to service your request. Please try again later.
    </div>
```

Checking [Down for Everyone or Just
Me](https://downforeveryoneorjustme.com/steamcommunity.com?proto=https)
proved the problem wasn't that I'd violated a rate limit or somesuch.[^3]

Related debugging tools:

* [`head`](https://en.wikipedia.org/wiki/Head_(Unix))&mdash;Show the
  first `-n` lines of input.
* [`tail`](https://en.wikipedia.org/wiki/Tail_(Unix))&mdash;Show the
  last `-n` lines of input. Or, with the `-f` option, monitor lines
  appended to a file.
* [`tee`](https://en.wikipedia.org/wiki/Tee_(command))&mdash;Pipe
  input to a file and to standard output.
* [`grep`](https://man7.org/linux/man-pages/man1/grep.1.html)&mdash;Filter
  input using a regular expression.

When Steam isn't down, I can also use `less` to help me pinpoint the
data I want to extract. For now, I just want to get a list of URLs of
my reviews. With a little searching, I found:

```
<div class="title"><a href="https://steamcommunity.com/id/jlericson/recommended/246620/">Not Recommended</a></div>
```

This markup is a bit more complicated than the [`read`
trick](https://twitter.com/jlericson/status/1431679246489960456) can
handle. So I'll need to use one of the dozens HTML of parsers
available for the command line. I chose
[`pup`](https://github.com/ericchiang/pup), which has a simple,
flexible syntax. After a few tries, I extracted just the URLs I need:

```
$ curl https://steamcommunity.com/id/jlericson/recommended \
| pup '.title > a  attr{href}'

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 86426    0 86426    0     0   153k      0 --:--:-- --:--:-- --:--:--  153k
https://steamcommunity.com/id/jlericson/recommended/246620/
https://steamcommunity.com/id/jlericson/recommended/646570/
https://steamcommunity.com/id/jlericson/recommended/951940/
https://steamcommunity.com/id/jlericson/recommended/226960/
https://steamcommunity.com/id/jlericson/recommended/225540/
https://steamcommunity.com/id/jlericson/recommended/357070/
https://steamcommunity.com/id/jlericson/recommended/91200/
https://steamcommunity.com/id/jlericson/recommended/862920/
https://steamcommunity.com/id/jlericson/recommended/374940/
https://steamcommunity.com/id/jlericson/recommended/613120/
```

The first thing to do is eliminate the progress meter that `curl`
outputs. Typically the option is either `-q` (for "quiet") or `-s`
(for "silent"). Checking `man curl`, the answer in this case is `-s`. 

Meanwhile, the `pup` command looks for HTML tags with the "title"
class (`.title`) with a child (`>`) hyperlink (`a`). Then it prints
the "href" attribute (`attr{href}`). There are other ways to get to
this data, but as long as Steam doesn't change the template for user
review listings, this'll work.

I have 42 reviews, but this command only shows 10. That's because
Steam puts 10 reviews on a page. To get to the second page, I can
append `?p=2` on the URL:

```
curl -s https://steamcommunity.com/id/jlericson/recommended?p=2 \
| pup '.title > a  attr{href}'

zsh: no matches found: https://steamcommunity.com/id/jlericson/recommended?p=2
EOF
```

Now we see one of the truly annoying aspects of shell scripting: quote
madness. The problem is that `zsh` (and other [Bourne shell
variants](https://en.wikipedia.org/wiki/Unix_shell#Bourne_shell))
interprets `?` as a single-character wildcard. Since I don't have any
files that match, the shell rejects the command. Fortunately, it's
easy to fix with judicious use of single-quotation marks:

```
$ curl -s 'https://steamcommunity.com/id/jlericson/recommended?p=2' \
| pup '.title > a  attr{href}'
```

Sadly, it's not always so easy to fix. What if you need to [quote a
string that includes a quotation
mark](https://unix.stackexchange.com/questions/30903/how-to-escape-quotes-in-shell)?
It's enough of a problem when writing `perl` oneliners that Perl
provides [an array of quote-like
operators](https://perldoc.perl.org/perlop#Quote-Like-Operators). Debugging
this sort of problem really is shell hell.

Now that I can access each of the 5 pages individually, I'm going to
want to run a command to get the links from all 5 pages. I could write
a loop in shell, but as it happens, `curl` has a trick up its sleeve:

```
$ curl -s 'https://steamcommunity.com/id/jlericson/recommended?p=[1-5]' \
| pup '.title > a  attr{href}'
```

This time I used `[1-5]`, which `curl` expands to five URLs:

```
https://steamcommunity.com/id/jlericson/recommended?p=1
https://steamcommunity.com/id/jlericson/recommended?p=2
https://steamcommunity.com/id/jlericson/recommended?p=3
https://steamcommunity.com/id/jlericson/recommended?p=4
https://steamcommunity.com/id/jlericson/recommended?p=5
```

I can verify that the new command produces 42 URLs by piping the out
put to the `wc` (short for "word count") utility:


```
$ curl -s 'https://steamcommunity.com/id/jlericson/recommended?p=[1-5]' \
| pup '.title > a  attr{href}' \
| wc -l

      42
```

This sort of testing of partial results is extremely common. More
formally, the Unix shell implements a [read-eval-print loop
REPL)](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop). In
fact, it's the world's tightest read-eval-print loop since each
command is evaluated instantly and automatically after the user
presses "Return". Sometimes (such as when using `curl` to connect to a
slow service) the results take a moment to be printed, but the shell
doesn't add any delay. Often I spot my mistake, edit the command and
try again within seconds of seeing the output. It's an ideal
environment for building a quick prototype.

Eventually I'll want to save commands into a file so that I can run
them later. It can be helpful to use the `history` command to find
previously executed commands. Then copy them to a file with the
appropriate [hashbang](https://en.wikipedia.org/wiki/Shebang_(Unix)):

```
#!/usr/bin/env zsh
```

I prefer [KornShell over
bash](https://stackoverflow.com/questions/74844/bash-or-kornshell-ksh/76773#76773),
but these days [Zsh](https://www.zsh.org/) would be my choice. After
you save that file and make it executable, it can be run just like any
other shell command. To jump right to the chase, I wrote
[`steam_review_import.sh`](https://github.com/jericson/jericson.github.io/blob/master/steam_review_import.sh)
which takes the URL of a Steam review and converts it to a Markdown
file in the _posts directory:

```
$ ./steam_review_import.sh https://steamcommunity.com/id/jlericson/recommended/250600/
https://steamcommunity.com/id/jlericson/recommended/250600/

$ ls -l _posts/2018-08-24-the_plan.md
-rw-r--r--@ 1 jericson  staff  499 Aug 29 21:03 _posts/2018-08-24-the_plan.md
```

The import script constructs the filename from the date the review was
posted and the name of the game reviewed. Next, it writes the [YAML
front matter that Jekyll is looking
for](https://jekyllrb.com/docs/front-matter/). It also converts the
HTML body of the review into something more like Markdown.[^4] I tried
to handle spoiler tags, but there are a few oddities I haven't yet
resolved. Good enough for government work, as we used to say when I
worked for the government.

So I have a command pipeline that spits out the URLs of my reviews and
a script that takes a URL of a review and turns it into a post. Again,
I might use a `for` loop, but there's an even better way:

```
curl -s 'https://steamcommunity.com/id/jlericson/recommended?p=[1-5]' \
| pup '.title > a  attr{href}' \
| xargs -n 1 ./steam_review_import.sh
```

The `xargs` command takes each line of the output of the `curl | pup`
pipeline and passes it to my shell script. Since the script is written
to take just one value,[^5] the `-n 1` option tells `xargs` to only pass
one parameter at a time. So this spawns off one execution of the
script per review URL.[^6]

Obviously this is a topic I'm excited about. I'd love to write about
[how useful the xtrace option
is](https://stackoverflow.com/questions/43877146/is-there-an-equivalent-of-shell-scriptings-xtrace-option-for-ruby)
or how it can be useful create shell commands to pipe into another
shell instance. Instead I'll summarize the things that make shell
commands useful for prototyping:

* If you already use the command line regularly, writing scripts
  doesn't demand much more from you.
* There's a command for just about any specialized task you can
  imagine. Often the command is just a wrapper for a library used in
  another programming language.
* Having a tight read-eval-print loop makes finding and fixing
  mistakes much quicker.
* Piping intermediate data into a tool like `less` simplifies the
  process of writing code to process that data.
* Pipes make chaining commands easy and potentially quite powerful.

Even with the disadvantage of need to work around quoting oddities, I
find prototyping in shell to be quicker than in other languages. Quite
often I find rewriting is another language goes smoother because of
insight into my data. For some tasks ([editing audio, for
instance](https://github.com/jericson/edit_podcast.rb)) I don't see
much advantage to using another language at all.

Will I continue to write prototypes on the command line? Yes I shell.

---

Footnotes:

[^1]: In particular, text manipulation. It can be quite aggravating to
    see people struggle with manual tasks that could be solved with a
    one-liner.

[^2]: The `|` character is called a pipe. It feeds the output of the
    first command into the input of the second command. For this post,
    I use the `\` line continuation character to put the pipe command
    on a new line. It's typical to just append a pipe to the end of a
    command, but using a newline is a lot clearer since you don't have
    to scroll. Pipes are a useful metaphor that allows commands to be
    combined without the need for intermediate temporary files.


[^3]: Or I somehow executed a [DoS
    attack](https://en.wikipedia.org/wiki/Denial-of-service_attack),
    which seems unlikely.

[^4]: Since Markdown is allowed to contain HTML tags, both the
    original body and the modified result are techinically
    Markdown. As I write this, it occurs to me that I should have used
    `pandoc` to do a more comprehensive conversion. Next time!
    
[^5]: There's an easyish way around this. Just add a loop to the script:
    ```
    for f in "$@"; do
        # Use $f instead of $1
    done
    ```
    That way we can drop the `-n 1` option and `xargs` will pass all 42 files to the script. Another option is to [use a stdin as a fallback](https://stackoverflow.com/questions/20351261/bash-script-read-pipe-or-argument/23493222#23493222):
    ```
    for f in ${*:-`cat`}; do
        # Use $f instead of $1
    done
    ```
    That way we can pipe into the script without using `xargs` at all.

[^6]: Sorry about all the footnotes, but there are so many cool things
    you can do with `xargs`. Since you are spawning all these
    independent processes, you can do a bit of parallel processing
    with the `-P` command. For maximum throughput, use the number of
    cores your machine has available.
