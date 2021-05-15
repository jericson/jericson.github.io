---
layout: post
title: Installing PostgreSQL the hard way
tags: 
comments: yes
image: 
---

Since [I joined EDB](/2021/04/30/developer_advocate.html), I figured it
was time to learn how to install Postgres. I techinically did it when
I [installed Discourse](/2021/04/06/oracle_discourse.html). And at
some point I seem to have typed `brew intstall postgres` on my
MacBook. But I'm talking installing it the hard way. I'm talking
[installing from the source
code](https://www.postgresql.org/docs/9.3/installation.html). Yeah!

I've always found that the only way to learn new technology is to have
a reason to use it. Work-related requirements suffice, but it's even
better to have a hobby-related reason. For example, [creating a
baseball
database](https://billpetti.github.io/2019-08-10-build-retrosheet-event-roster-database-rstats-baseballr/). If
you want to do research on baseball history, a great place to start is
[Project Retrosheet](https://www.retrosheet.org/site) which has
detailed play-by-play files going back to 1916. So if you load this
data into a database, you can do all sorts of queries to find out how
often (or even whether) certain events have happened. For instance,
has anyone ever hit two grand slams in an inning?[^1]

## Prerequisites

The instructions for installing Postgres and for setting up a
Retrosheet database are incomplete for a very simple reason:
prerequisites. People who have correctly set up their environment
already have everything they needed. People who are getting started
don't know what they are missing. Critically, it takes a lot of effort
to figure out which of the many possible prerequisites are actually
required. So what's needed is either someone to start from scratch and
document everything they needed to install.

I got a PC for my new job and this is the first time in nearly a
decade that I've used Windows in earnest. So I have some adjustments
to make. I started documenting them [over
here](https://gist.github.com/jericson/b4f8199b24f7265f818a843a9a114b24),
but I have a feeling this list will grow over time.[^2]

One of the reasons I'm documenting these steps is that I'm going back
and testing the installation process using a pristine [Windows virtual
machine](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/quick-create-virtual-machine). That
way I can test what things are really needed and what is optional or
unnecessary. Or, at least I could in theory and maybe will in practice.

## Getting Retrosheet data

Retrosheet's data has an idiosyncratic format, so it helps to have
software to parse it. So the next step is to download the
[command-line tools](http://chadwick.sourceforge.net/doc/cwtools.html)
maintained by the [Chadwick Baseball
Bureau](http://chadwick-bureau.com/). Then I move them to
`C:\Users\[username]\bin` and add that to my PATH environment
variable. That way I can use those executables without specifying the
full path. More importantly, so can R scripts.

Since the instructions I'm following use R, the next step is to
[download a recent version of R](https://cran.rstudio.com/). While not
strictly necessary, I also grabbed
[RStudio](https://www.rstudio.com/products/rstudio/download/), which
is a fantastic IDE that uses [R
Markdown](https://rmarkdown.rstudio.com/). It's a form of [literate
programming](https://en.wikipedia.org/wiki/Literate_programming) that
allows both a data-centric article and the script that generated the
data to live in the same document.[^3]

Next you gotta install a bunch of R libraries the script need. Start
with
[`devtools`](https://www.r-project.org/nosvn/pandoc/devtools.html) and
then run the following commands from the RStudio console window:

```
install.packages("devtools")
install.packages('h2o')
install.packages('emayili')
install_github("BillPetti/bpettir")
install.packages("purrr")
```

I made a few tweaks to the script Bill Petti uses to parse and load
Retrosheet data. One problem is that several packages must be loaded
first:

```
require(bpettir)
require(future)
require(furrr)
require(purrr)
```

This can go at the top of the script where the other `require`
statements live for simplicity. I also changed `
"~/Desktop/retrosheet"` to `"~/retrosheet"` and added `setwd` commands
to make sure the script is in the right directory for each input file
it needs. For some reason, RStudio actually puts its output in
`~/Documents/retrosheet`. I think it uses a
[sandbox](https://en.wikipedia.org/wiki/Sandbox_(computer_security)) for R 
that has `~/Documents` for a home directory.

I checked all the steps right up to populating Postgres database
tables. While its certainly possible to use R to analyze the data, my
goal was to have a reason to install Postgres. Somewhat annoyingly for
the purposes of this post, [the short
version](https://www.postgresql.org/docs/current/install-short.html)
worked almost perfectly using [WSL
2](https://docs.microsoft.com/en-us/windows/wsl/install-win10#simplified-installation-for-windows-insiders). 

The only problem I had was that I don't know the password for the
Administrator account so I couldn't use `su`. Thankfully, I found that
I could [use `sudo su`
instead](https://stackoverflow.com/questions/37609356/windows-10-bash-ubuntu-su-root-password/37609466#37609466). That
confused me until I read some [answers on Ask
Ubuntu](https://askubuntu.com/questions/376199/sudo-su-vs-sudo-i-vs-sudo-bin-bash-when-does-it-matter-which-is-used). Turns
out `su` asks for the password of the account you want to switch to
and `sudo` asks for the password of the current account. 

Since I wanted to install Postgres the _hard way_ I decided to try
installing it on Windows using the Microsoft toolchain. Since I'm not
a big fan of GUI installers, I was pleased to find I could use
[Chocolatey](https://docs.chocolatey.org/en-us/choco/setup) to install
the prerequisites.[^4] After installing Chocolatey, open a PowerShell
window (as an administrator) and run the following command:

```
choco install ActivePerl git openssl winflexbison python archiver -y 
```

That should install all of the third-party tools you'll need to build
Postgres. You might need to add `C:\Perl64\bin` to your `PATH` and run
`refreshenv`. Then install the Visual Studio tools you'll need to
build:

```
choco install visualstudio2019community windows-sdk-10.1 -y
```

(The `-y` is optional and simply avoids prompting for confirmation by
automatically saying "yes" to any questions the installer might
ask. You normally want to just say yes.)

While you are at it, you can install all sorts of useful software from the command line:

```
choco install Emacs vim texlive
```

And even some of the software I installed by downloading a GUI installer:

```
choco install R.Studio wsl2
```

There is one feature that I haven't figured out how to install via
Chocolatey. It's the Visual Studio C++ build tools, which can be
installed via the Visual Studio Installer. You can start it up
from the Visual Studio 2019 menu system:

```
Tools => Get Tools and Features...
```

You can also just run it independently. Either way, you'll want to modify your version of Visual Studio:

```
Modify => Desktop development with C++ =>  MSVC v142 - VS 2019 C++ x64/x86 build tools
```

By the way, I'm including the version numbers I used, but it probably
will work fine with newer (and perhaps older) versions. Another
constant problem with installing software is that sometimes new
releases break stuff that used to work. For instance, [Ruby 3 came out
recently](https://www.ruby-lang.org/en/news/2020/12/25/ruby-3-0-0-released/)
and it [breaks the way I build my
site](https://github.com/jekyll/jekyll/issues/8523). This is a
constant problem with guides about software and closely related to the
prerequisites problem. Most of the time "install X" is helpful, but
sometimes you need to say "install version Y of X" instead.

At this point we're finally ready to start building Postgres! I'm
going to show how to do that in PowerShell. But not just any
PowerShell. For this you need to start up _Developer PowerShell for VS
2019_. Regular PowerShell doesn't work because the build tools aren't
readily available.[^5] There's also a Developer Command Prompt, but I
prefer PowerShell for a few Unix-like enhancements. The following
commands, create a `pg` directory for playing in, move into that
directory, get the Postgres source code, extract the files and move to
directory where we'll build:

```
mkdir pg
cd pg
wget https://ftp.postgresql.org/pub/source/v13.2/postgresql-13.2.tar.bz2 -OutFile postgresql-13.2.tar.bz2
arc unarchive .\postgresql-13.2.tar.bz2
cd .\postgresql-13.2\src\tools\msvc\
```

Now PowerShell is really handy, but notice how the `wget` command
requires an `-OutFile` parameter. If you leave it off, the command
reads the URL, shows some metadata and [_doesn't save the
file_](https://unix.stackexchange.com/questions/359972/wget-not-saving-file-after-download). It's
just an alias for [`Invoke-WebRequest
-Uri`](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-webrequest?view=powershell-7.1#syntax). It's
like they get it, but they don't get it. I'm not sure what's the point
of fetching files from the internet and immediately throwing them away.

Anyway, if you've set everything up right, you should be able to run
the `.\build` command. If you haven't installed all the right
prerequisites or aren't running in the Developer PowerShell, you'll
get an error like this:

```
PS C:\pg\tmp\postgresql-13.2\src\tools\msvc> .\build
Unable to determine Visual Studio version: The nmake command wasn't found. at C:/pg/tmp/postgresql-13.2/src/tools/msvc/Mkvcbuild.pm line 93.
```

Otherwise, the output will end something like:

```
FinalizeBuildStatus:
  Deleting file ".\Release\euc2004_sjis2004\euc2004_sjis2004.tlog\unsuccessfulbuild".
  Touching ".\Release\euc2004_sjis2004\euc2004_sjis2004.tlog\euc2004_sjis2004.lastbuildstate".
Done Building Project "C:\pg\postgresql-13.2\euc2004_sjis2004.vcxproj" (default targets).

Done Building Project "C:\pg\postgresql-13.2\pgsql.sln" (default targets).


Build succeeded.
    0 Warning(s)
    0 Error(s)

Time Elapsed 00:04:01.81
```

Once the build succeeds, it's time to install:

```
.\install \pg
```

By the way, it doesn't much matter where you install Postgres. It can
help to put it somewhere you will remember later. The [EDB
installer](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)
puts it in `C:\Program Files\PostgreSQL\13`, which probably is a
better choice. Wherever you install it, you'll find a `bin` directory
that has all the commands you'll need to start the database. You'll
need to create a `data` directory to hold, well, all your data. While
you could run using your own account, it's [better to run it under
another user
account](https://www.postgresql.org/docs/current/postgres-user.html). (A
good choice is"postgres".) Either way, make sure your data directories
(but not the executables) are owned by the account that will run Postgres.

In the `bin` directory, you can find the commands to initialize a
database directory, start a Postgres server using that data storage
and create a database called "retrosheet":

```
.\initdb.exe -D \pg\data
.\pg_ctl -D \pg\data -l logfile start
.\createdb.exe retrosheet
```

Then go ahead and make sure the database exists and is empty:

```
PS C:\pg\bin> .\psql retrosheet
psql (13.2)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

retrosheet=# \d
Did not find any relations.
retrosheet=#
```

Poor retrosheet database. Let's give it family, shall we?

Now I have to admit something kinda embarrassing here. Building Postgres
from source was surprisingly easy, but I made connecting to the
database from R incredibly hard. My only excuse is that the last time
I had to set up a database connection on my own was over a decade
ago. Pretty much the only thing I remembered was that ODBC was
involved somehow. When I mentioned how frustrating ODBC _still is to
install_, a colleague kindly pointed out it's not necessary anymore.


What makes this especially embarrassing is that back in 2006, I wrote
[a Perl script to connect to arbitrary database
servers](https://github.com/jericson/exec_sql.pl/blob/master/exec_sql.pl)
using the [DBI module](https://metacpan.org/pod/DBI) which is
exeedingly similar to the [R DBI package](https://dbi.r-dbi.org/). Not
only do you not need ODBC, DBI is a competitor.[^6] Connecting to our
new database via R is as simple as installing two packages:

```
install.packages('DBI')
install.packages('RPostgres')
```

And using the appropriate connection string:

```
require(DBI)

retrosheet_db <- dbConnect(RPostgres::Postgres(), 
                           dbname = 'retrosheet', 
                           host='localhost', 
                           port='5432', 
                           user='postgres')
```

By default, you don't need to specify the [postgres
password](https://chartio.com/resources/tutorials/how-to-set-the-default-user-password-in-postgresql/)
when connecting via the same machine. If you do need a password, it's
good practice to save it in an environment variable and use something
like `password=Sys.getenv('PG_PWD')` so you don't hardcode the
secret. And with that, you can execute the `dbWriteTable` and
`dbGetQuery` commands list in [Bill Petti's
instructions](https://billpetti.github.io/2019-08-10-build-retrosheet-event-roster-database-rstats-baseballr/). It
takes a while, but when everything is done, you can see two new tables
have been created:

```
=retrosheet=# \d
             List of relations
 Schema |     Name      | Type  |  Owner
--------+---------------+-------+----------
 public | retro_pbp     | table | postgres
 public | retro_rosters | table | postgres
```

And if you are really lucky, they will have data:

```
retrosheet=# select count(*) from retro_pbp;
  count
----------
 13792467
(1 row)

retrosheet=# select count(*) from retro_rosters;
 count
-------
 92727
(1 row)
```

Now we can start doing some baseball research. For instance, if you
know that a grand slam is the only way to get 4 RBIs in a single play,[^7]
it's not hard to find all the batters who have hit at least two grand
slams in a game:

```
select game_id, bat_id, count(*) 
from retro_pbp p
where rbi_ct = 4
group by game_id, bat_id
having count(*) > 1;
 ```
 
   game_id    |  bat_id  | count
--------------|----------|-------
 BOS199905100 | garcn001 |     2
 CLE196806240 | nortj101 |     2
 CLE199808140 | hoilc001 |     2
 LAN199904230 | tatif001 |     2
 MIL200907270 | willj004 |     2
 MIN196105090 | gentj101 |     2
 PHA193605240 | lazzt101 |     2
 PHA193907042 | taboj101 |     2
 SFN196607030 | clont101 |     2
 SLA194607270 | yorkr101 |     2
 TEX199509040 | ventr001 |     2
 TEX200307290 | muelb001 |     2
 WS2197006260 | robif103 |     2
(13 rows)

While you might not understand the significance of this report, I
did. It meant I had not only managed to install Postgres, but also
load it up with over a 100 years of baseball history. One particular
`bat_id` stands out as the player I'm looking for. Next, I queried
for all the times when a batter has hit two grand slams in a single
inning:


```
select game_id, inn_ct, bat_id, count(*) 
from retro_pbp 
where rbi_ct = 4 
group by game_id, inn_ct, bat_id 
having count(*) > 1;
 ```
 
   game_id    | inn_ct |  bat_id  | count
--------------|--------|----------|-------
 LAN199904230 |      3 | tatif001 |     2
(1 row)


Now you can take that `game_id`, plug it into the nearest search
engine and discover [St. Louis vs the Dodgers on April 23,
1999](https://www.baseball-almanac.com/box-scores/boxscore.php?boxid=199904230LAN). There,
in the third inning, Fernando Tatis slams twice. If you feel like it,
you can watch [a crude
animation](https://www.backtobaseball.com/playballregularseason.php?page=19&IDindex=LAN199904230&date=April+23%2C+1999)
of how it happened. Think about the series of events that had to
happen just so in order for Tatis to get up with the bases loaded
twice.

Meanwhile, think of all the little things that needed to initiated to
get a working database sever up and running. Thankfully software can
be quite a bit easier to manipulate than a baseball game.

<!--
```
select game_id, pit_id, sum(event_outs_ct) 
from retro_pbp 
group by game_id, pit_id 
order by sum(event_outs_ct) desc 
limit 10;
```
   game_id    |  pit_id  | sum
--------------|----------|-----
 BSN192005010 | oescj101 |  78
 BSN192005010 | cadol101 |  78
 BSN192705170 | smitb110 |  66
 BSN191808010 | nehfa101 |  63
 CHA192905240 | lyont102 |  63
 CHA192905240 | uhleg101 |  60
 PHI191904300 | oescj101 |  60
 PHI191904300 | grimb101 |  60
 PHA194507210 | muell101 |  59
 BSN192005030 | filld101 |  57
(10 rows)
 


https://sabr.org/gamesproj/game/may-1-1920-an-extreme-exercise-in-futility-braves-dodgers-play-26-innings-to-no-decision/
-->

---

[^1]: If you've watched as much baseball as I have, you know the
    answer. Don't spoil it for everyone else!
    
[^2]: The #1 revelation was that Windows uses the Control key for most
    of the stuff Mac uses the Command key for. To make life more
    complicated, Mac keyboards have an Option key that functions like
    Alt _and_ it's in the same position where the Windows key is on a
    PC keyboard. Eventually I realized I just want to be able to use
    my thumb rather than my pinkie to copy and paste things. So making
    Alt into another Control key and making the Windows key the new
    Alt solved my problem.

[^3]: That said, it's a little much in R Studio when it also puts the
    output of the scripts in the window where the source
    is. Fortunately you can turn that off by going to Tools => Global
    Options => R Markdown => Basic => Show output line for all R
    Markdown documents.

[^4]: A big hat-tip to
    [@JourneymanGeek](https://twitter.com/JourneymanGeek) who [pointed
    this out to me](https://twitter.com/JourneymanGeek).

[^5]: There is certainly some way of setting up environment variables
    to make this work, but this post is way too long already and I
    can't be bothered to figure it out. Just use the Developer
    PowerShell.

[^6]: Interestingly, DBI can connect with a database connected to
    ODBC. This fact made my searches misleading since it's entirely
    _possible_ (but rarely _desirable_) to connect to Postgres that
    way.

[^7]: I later doublechecked I got the same result if I included only
    place that [cwevent coded as a home
    run](http://chadwick.sourceforge.net/doc/cwevent.html).
