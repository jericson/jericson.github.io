---
layout: post
title: Rewriting a Git repository
subtitle: Unlimited growth (in a bad way)
tags: git documentation
comments: yes
image: /images/Caro-Kann.png
---

In order to understand this story, we'll need an appropriate mental
model of [Git](https://en.wikipedia.org/wiki/Git). At their core,
version control systems save previous states of a project. That way
programmers can wind back time to figure out how bugs were
introduced. An analogy could be recording a chess game so that
interested observers could analyze important moves. Take, for
instance, [Deep Blue versus Kasparov, 1997, Game
6](https://en.wikipedia.org/wiki/Deep_Blue_versus_Kasparov,_1997,_Game_6).

The traditional approach is to [record each
move](https://www.chessgames.com/perl/chessgame?gid=1070917):[^1]

```
1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Nd7 5.Ng5 Ngf6 6.Bd3 e6 7.N1f3 h6 8.Nxe6 Qe7 9.O-O fxe6 10.Bg6+ Kd8 11.Bf4 b5 12.a4 Bb7 13.Re1 Nd5 14.Bg3 Kc8 15.axb5 cxb5 16.Qd3 Bc6 17.Bf5 exf5 18.Rxe7 Bxe7 19.c4 1-0
```

Finding the board state at a moment in time requires beginning at a
known state (usually the standard setup) and applying one move at a
time. This is pretty much the approach used by traditional source
control systems such as
[SCCS](https://en.wikipedia.org/wiki/Source_Code_Control_System),
[RCS](https://en.wikipedia.org/wiki/Revision_Control_System) and their
many decedents. It's called the changeset storage method and it's [the
most common
approach](https://en.wikipedia.org/wiki/Comparison_of_version-control_software#Technical_information)
used by version control systems. The system saves the difference
between individual files each time they are changed.

Git, by contrast, saves a snapshot of the entire project at each state
in the past. In chess, the equivalent would be saving a copy of the
complete board after every move:[^2]

![The first four moves of Deep Blue versus Kasparov, 1997, Game 6 displayed as 5 separate boards.](/images/Caro-Kann.png)


There's even a way to encode board states with the delightful name of
[Forsyth
Notation](https://en.wikipedia.org/wiki/Forsyth%E2%80%93Edwards_Notation). Here
are the first four moves of game 6 using that system:[^3]


```
rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR
rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR
rnbqkbnr/pp1ppppp/2p5/8/4P3/8/PPPP1PPP/RNBQKBNR
rnbqkbnr/pp1ppppp/2p5/8/3PP3/8/PPP2PPP/RNBQKBNR
rnbqkbnr/pp2pppp/2p5/3p4/3PP3/8/PPP2PPP/RNBQKBNR
```

Obviously this approach requires much more storage space. A lot of
that space is used to record pieces (such as the `a2` and `a7` pawns)
that are rarely moved. The advantage is that it's a lot easier to
return to a previous state. Instead of applying changesets one at a
time, you can get previous states all at once.

Now Git has some tricks up its sleeves to reduce the storage
problem. According to the [_Pro
Git_](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects):

> Git is a content-addressable filesystem. Great. What does that mean?
> It means that at the core of Git is a simple key-value data
> store. What this means is that you can insert any kind of content
> into a Git repository, for which Git will hand you back a unique key
> you can use later to retrieve that content.

To go back to the chess analogy, suppose I wanted to store many games
where each move is a snapshot of the board. One way to do this would
be to assign a number to each unique board position as they are
added. So the initial state could be labeled `0` and the state after
`1. e4` could be called `1`. After storing the first four moves of
game 6, I'd have a table that looked like this:

Key | Value
--: | :----
0   | `rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR`
1   | `rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR`
2   | `rnbqkbnr/pp1ppppp/2p5/8/4P3/8/PPPP1PPP/RNBQKBNR`
3   | `rnbqkbnr/pp1ppppp/2p5/8/3PP3/8/PPP2PPP/RNBQKBNR`
4   | `rnbqkbnr/pp2pppp/2p5/3p4/3PP3/8/PPP2PPP/RNBQKBNR`

This is convenient because every game starts with position `#0`
instead of the 44 character Forsyth string. Then if white uses [the
most common opening move](https://www.365chess.com/opening.php), the
next position is `#1`. Now for chess, this strategy is limited because
there are something like [2.2 * 10<sup>46</sup> board
diagrams](https://math.stackexchange.com/questions/1406919/how-many-legal-states-of-chess-exists)
and the [maximum Forsyth code is 71
characters](https://chess.stackexchange.com/questions/30004/longest-possible-fen). So
this sort of coding wouldn't save all that much space.

Fortunately, the situation is different for Git repositories. Every
file, no matter how large, can be assigned a 40-digit hexadecimal
number that is (quite likely) to be unique to that file.[^4] The keys
are generated using the [Secure Hash Algorithm
1](https://en.wikipedia.org/wiki/SHA-1) designed for cryptography. The
number (usually called a "SHA" and pronounced "Shaw") is generated
from each file's contents and even the smallest change results in a
new number. So when a new file is added, Git can generate a key and
look up in the index whether another file with the same contents has
already been stored. And that means every version of every file, no
matter how large, is stored only once.[^5]

Git uses SHAs _everywhere_. When you [commit
changes](https://git-scm.com/docs/git-commit), Git takes a snapshot of
the working directory and generates a unique SHA for that
commit. Again, this number is (virtually) guaranteed to be unique to
the _exact_ details of the state of the working directory. This is
important because it means any change to the working tree will result
in a different commit. For more details, see ["Commits are snapshots,
not
diffs"](https://github.blog/2020-12-17-commits-are-snapshots-not-diffs/)
on the GitHub blog.

## Failing to heed the warnings

[_Pro
Git_](https://git-scm.com/book/en/v2/Git-Internals-Maintenance-and-Data-Recovery)
helpfully explains:

> There are a lot of great things about Git, but one feature that can
> cause issues is the fact that a `git clone` downloads the entire
> history of the project, including every version of every file. This
> is fine if the whole thing is source code, because Git is highly
> optimized to compress that data efficiently. However, if someone at
> any point in the history of your project added a single huge file,
> every clone for all time will be forced to download that large file,
> even if it was removed from the project in the very next
> commit. Because it’s reachable from the history, it will always be
> there.

Truth is, Git does just fine storing large files. I use it for [images
on this very
blog](https://github.com/jericson/jericson.github.io/tree/master/images)
and I saved episodes of [a podcast I did at Stack
Overflow](https://github.com/unicorn-meta-zoo/unicorn-meta-zoo.github.io)
directly in my repository. It's handy to have these binary files
stored along side of the rest of those projects. Yes they make the
repository larger, but you gotta store them somewhere.

At my job as a [Developer Advocate for
EDB](/2021/04/30/developer_advocate.html), I've been looking at
speeding up the build of our [new documentation
site](https://github.com/EnterpriseDB/docs). It can take [over an
hour](https://github.com/EnterpriseDB/docs/runs/3313222785?check_suite_focus=true)
with 6 minutes or so of that was just checking out the branch from the
repository. Depending on what was cached, it might take a little more
or a little less, but that's a lot more time than it really should
take.

Cloning the entire repository took a lot of time too. If your internet
connection isn't especially fast, it could take 45 minutes to
clone. The reason isn't complicated. Our repository weighed in at 10
gigabytes. A large portion of that sum came from screenshots, icons
and other miscellaneous images. Yes, they were larger than the source
files Git is designed to store, but they were not the bulk of the
problem. The real problems started when we committed PDF versions of
our documentation.

Git isn't optimized to deal with images, but they tend to be
static. Every once in a while you might redo a screenshot or a
diagram, so it's a bit of overkill to keep them in Git, but not the
worst. On the other hand, we generate PDFs from our HTML
documentation. Every time we merged a branch into `develop`, we built
all the PDFs at the same time so they would match the web
versions. And then we _committed the changes to Git_.

For those of you who haven't turned away from the screen in revulsion,
let's review why this is, to use polite words, sub-optimal. Every time
we committed a change to our documentation, Git would compare all the
staged files in our working directory to the copies that already exist
in the repository. It would do this using a cryptographic key (SHA-1)
that registered even the smallest change as a completely new
file. Then it would save the entire project as a single commit. At any
point in time we could go back to each version of the PDFs, so Git
keeps every copy forever. And it's not very good at compressing this
type of file.

This is _unlimited linear growth_. Each time we built out we increased
the size of the repo by roughly the size of our PDFs after [zlib
compression](https://en.wikipedia.org/wiki/Zlib). By design, Git
repositories never get smaller. It's a ratcheting effect that needless
chewed up disk space and bandwidth for everyone who contributes to the
project. It had to stop.

Next time: we stop digging.

---

Footnotes:

[^1]: The full [Portable Game Notation
    (PGN)](https://en.wikipedia.org/wiki/Portable_Game_Notation) for
    this game is:

     ```
     [Event "IBM Man-Machine"]
     [Site "New York, NY USA"]
     [Date "1997.05.11"]
     [EventDate "?"]
     [Round "6"]
     [Result "1-0"]
     [White "Deep Blue (Computer)"]
     [Black "Garry Kasparov"]
     [ECO "B17"]
     [WhiteElo "?"]
     [BlackElo "?"]
     [PlyCount "37"]

     1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Nd7 5.Ng5 Ngf6 6.Bd3 e6 7.N1f3 h6 8.Nxe6 Qe7 9.O-O fxe6 10.Bg6+ Kd8 11.Bf4 b5 12.a4 Bb7 13.Re1 Nd5 14.Bg3 Kc8 15.axb5 cxb5 16.Qd3 Bc6 17.Bf5 exf5 18.Rxe7 Bxe7 19.c4 1-0
     ```

     Most of this code is metadata with only the final line (`1.e4 c6
2.d4 d5 ...`) being the actual recording of the game. Version control
systems carry around a lot of meta data too, but it's not important to
our story just now.

[^2]: This is a screenshot from [5D Chess With Multiverse Time
    Travel](https://store.steampowered.com/app/1349230/5D_Chess_With_Multiverse_Time_Travel/)
    which is a [not-entirely successful chess
    varient](https://www.rockpapershotgun.com/actual-5d-chess-proves-that-time-travel-should-not-be-allowed). Since
    it shows a certain type of branching, I suspect I'll use it in
    future posts of this series.

[^3]: Again, I've simplified this from the full Forsyth-Edwards
    Notation (FEN):

    ```
    rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1
    rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1
    rnbqkbnr/pp1ppppp/2p5/8/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2
    rnbqkbnr/pp1ppppp/2p5/8/3PP3/8/PPP2PPP/RNBQKBNR b KQkq d3 0 2
    rnbqkbnr/pp2pppp/2p5/3p4/3PP3/8/PPP2PPP/RNBQKBNR w KQkq d6 0 3
    ```

    The first part of each line (up to the space) was originally
    invented by [David
    Forsyth](https://www.chessscotland.com/documents/history/biographies/forsyth.htm)
    in 1883 to facilitate his chess column in the _Glasgow Weekly
    Herald_. [Stephen
    J. Edwards](https://www.chessprogramming.org/Steven_Edwards)
    expanded the system to include:
    
    * Which side is currently on the hook to move.
    * Whether each king can castle and on which side(s).
    * If a pawn is open to _en passant_ capture.
    * The number of moves since the last capture or pawn advance.
    * The curent move number.
    
    All of this meta data is necessary for giving chess programs the complete state of the game at that moment in time. In the Git analogy, the full FEN notation is something like a commit and the simple board diagram is like the current working tree.
    
[^4]: Technically Git saves the _contents_ of a file as a
    [blob](https://en.wikipedia.org/wiki/Binary_large_object). The
    distinction is that a blob doesn't include the filename. That
    means you can change the name of a file in Git without generating
    a new copy of the contents.

[^5]: Git also compresses blobs and uses
    [packfiles](https://git-scm.com/book/en/v2/Git-Internals-Packfiles)
    to reduce the size of the repository. Interestingly, packfiles
    work on a similarly to changesets except they can group similar
    content even if it's not strictly speaking the same file.
