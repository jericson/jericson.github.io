---
layout: post
title: Rewriting a Git repository
subtitle: Dealing with distribution
tags: git documentation
comments: yes
image: /images/Caro-Kann_clone.png
---

This is part three of a series:[^1]

* [Unlimited growth (in a bad way)](/2021/08/24/git_rewrite_1.html)
* [How we stopped making everything worse](/2021/09/06/git_rewrite_2.html)
* [Dealing with distribution](2023/09/01/git_rewrite_3.html)

[Previously](/2021/08/24/git_rewrite_1.html) I made an analogy that
Git repositories are like saving complete chess board states rather
than merely saving each move as it happens. With Git it's always
possible (and quick!) to recover all previous states. Despite some
clever compression techniques, that feature creates a situation where
repositories grow unreasonably large if you happen to save binary
files and update them frequently. Fortunately we can save these files
efficiently outside of Git, as I discussed [last
time](/2021/09/06/git_rewrite_2.html).

In this post I'm going to throw another difficulty in the mix:
distributed Git repositories. Suppose we are storing a chess opening:

![One chess game](/images/Caro-Kann.png)

This is the main line of the [Caro-Kann
Defence](https://en.wikipedia.org/wiki/Caro%E2%80%93Kann_Defence)
which is the start of innumerable chess games. No doubt people were
using these moves organically since the modern game of chess was
invented. But after [Horatio Caro published his analysis of the
opening](https://www.chesshistory.com/winter/winter86.html), players
have been essentially making copies of that standard opening. It's the
chess version of reusing code.

Git is specifically designed to let people create copies of
repositories. If anyone wants to work on the code, they simply clone
the repository on their own machine. Perhaps more frequently, Git
facilitates cloning a complete copy on a virtual machine, which might
be hosted anywhere (including a volume on your local machine). By
default, cloning produces a new repository identical to the original:

![Two parallel identical chess games](/images/Caro-Kann_clone.png)

People use chess openings to save time and avoid doing complicated
analysis of the early moves. The _real game_ doesn't start until one
of the players diverges from the main line and makes a less common
move. It doesn't take long for a game to be unique in the annals of
chess after that point. Playing out a new set of moves makes chess
exciting.

![Two parallel chess games that diverge](/images/Caro-Kann_split.png)

GitHub allows [forking a
repository](https://docs.github.com/en/get-started/quickstart/fork-a-repo)
so people can make changes that may or might not be brought back to
the source repository. It's sorta like copying a standard chess
opening and adapting an ["out of
book"](https://www.chess.com/terms/book-move-chess) line for your own
games. If the original repository changes, owners of forks can take
those changes. If you want to submit a change for consideration by the
original developer, the standard method is to fork a repository and
ask the owner to accept a pull request with your changes. The chess
analogy would be to submit an off-book line for consideration in the
next edition of [_Modern Chess
Openings_](https://en.wikipedia.org/wiki/Modern_Chess_Openings) (MCO).

Since it's so easy to get a copy of a repository, there's likely to be
tons of copies of especially useful code spread around the world. The
EDB Docs repository has [177 forks on
GitHub](https://github.com/EnterpriseDB/docs/network/members) and been
cloned hundreds, if not thousands, of times. All of these numbers are
bound to go up by the time you read this. The point is, there are many
copies of the repository each of which includes the entire history of
the project.

Distributed data is generally a great thing. If one copy gets deleted,
it's handy to be able to consult another copy. Gone are the days of
shipping backup tapes to offsite storage. Just `git push` to the world
and `git clone` to restore the backup. On the downside it's nearly
impossible to put the genie back in the bottle once you've put a
change into the world. At one of my previous employers, a developer
accidentally pushed hundreds of user emails to a public repository. By
the time it was discovered, the repository had been cloned and forked
several times. Removing that data was [not at all
easy](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository).

---

In 1962, Fritz Leiber wrote a short story for _Worlds of If Science
Fiction_ called ["The 64-Square
Madhouse"](https://www.gutenberg.org/cache/epub/61213/pg61213-images.html)[^2]
in which a chess-playing Machine was entered in a tournament. The
Machine seemed unbeatable, but one opponent discovered a strategy to
win one game:

> "Shut up, everybody!" Dave ordered, clapping his hands to his
> face. When he dropped them a moment later his eyes gleamed. "I got
> it now! Angler figured they were using the latest edition of MCO to
> program the Machine on openings, he found an editorial error and
> then he deliberately played the Machine into that variation!"

Of course the programmers were able to fix the error in the Machine
overnight, but it'd be impossible to correct all the copies of MCO
distributed around the world. And replaying all the games that went
down the mistaken line? That's another science fiction story
altogether.

Do you remember [footnote #2 from the first post in the
series](https://jlericson.com/2021/08/24/git_rewrite_1.html#fn2)[^3]
where I mentioned [_5D Chess With Multiverse Time
Travel_](https://en.wikipedia.org/wiki/5D_Chess_with_Multiverse_Time_Travel)?
Now is the time to show its true potential since the game allows chess
pieces to travel back in time. For instance, here's game where a white
knight goes back to the start of the game. In order to resolve the
time travel paradox, a new timeline is created _with_ the knight while
the original timeline is left _without_ the knight. 

![A very strange way to rewrite history in chess](/images/Caro-Kann_rewrite.png)

Not perfectly analogous to distributed source control, but you can see
the trick is to hunt down and eliminate all the alternate timelines so
that only the one you want to preserve is left. In _5D Chess_, this is
accomplished by maneuvering your opponent into a losing position which
they cannot escape even using the power of time travel. With GitHub,
the task can be more complicated.

Remember every clone[^4] has a full history of every commit pushed to
the remote repository. So removing files with `git rm` doesn't
help. Even using the unholy commands to rewrite history will only work
on repositories you control. Clones and forks you don't control will
have copies of the history you removed which could be remerged into
your GitHub repository. That'd put you in a worse place then when you
started.

Rewriting Git history, in other words, risks the equivalent of time
travel paradoxes. If you're the only person to have ever made a copy,
you'll probably be alright using one of the [many available
tools](https://git.github.io/rev_news/2019/08/21/edition-54/#an-introduction-to-git-filter-repo--written-by-elijah-newren).[^5]
As the only observer, the only paradoxes are philosophical. Does a
memory exist when the cause of that memory has been wiped from
history?  But if you are on a team of people who all use the same
GitHub repository, the job is more complicated.

It's not so much a technically complicated job as socially
difficult. In order to pull it off, you need to communicate with all
sorts of people who may or may not care about your problems. My
co-workers were motivated to help, but what about the random user who
[contributed a typo fix](/2022/04/04/docs2_contribution.html) and
forgot about their fork? I wrote up [this set of
instructions](https://github.com/EnterpriseDB/docs/issues/1711) and
sent out emails to everyone I had a reason to suspect had make a
copy. And then I moved on content in the knowledge that only some disk
space, and not the space-time continuum itself, was at risk.

---


[^1]: I [no longer work at EDB](/2022/06/13/year_at_edb.html), but I
    found this draft and decided to finish writing it. Hopefully I
    remember enough to be informative!

[^2]: I owe a debt of gratitude to [this question and
    answer](https://scifi.stackexchange.com/questions/256855/man-playing-computer-in-chess-uses-a-book-opening-with-known-typo-to-win-one-u)
    on Science Fiction & Fantasy&mdash;Stack Exchange for showing me
    that it wasn't Asimov who wrote it. Leiber's story was [prophetic
    in some
    ways](https://www.belgianchesshistory.be/cipc-275-fritz-leiber-the-64-square-madhouse/)
    since it foresaw [Deep
    Blue](https://en.wikipedia.org/wiki/Deep_Blue_(chess_computer)) 35
    years or so in advance.

[^3]: You wouldn't unless you'd just read the first post and skipped
    the second for some reason. It was a rhetorical question. Sue me.

[^4]: Every clone, that is, that doesn't somehow limit the depth of
    the
    clone. [JourneymanGeek](https://meta.jlericson.com/t/rewriting-a-git-repository/70/4)
    pointed out that you can do a shallow clone that only takes the
    most recent commit. Trouble is most people won't do that or even
    know that it's a possibility. 

[^5]: [We used BFG Repo-Cleaner](https://github.com/EnterpriseDB/docs/issues/1673), but as that
    article suggested, I'd probably use
    [git-filter-repo](https://github.com/newren/git-filter-repo) these
    days.
