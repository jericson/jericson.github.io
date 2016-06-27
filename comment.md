---
layout: default
subtitle: Comments
comments: yes
permalink: /comment.html
---

I don't expect a lot of comments on this site. If you want to interact
with me, you'll need to use one of the contact options in the footer
or create a GitHub issue. (I first learned of this idea from, no
surprise, a
[Stack Overflow answer](http://stackoverflow.com/a/33745584/1438) that
came up in a Google search.) If you follow the link at the bottom of
one of my posts and have a GitHub account, you'll be able to let
me know what you think. If this system gets used (and the comments aren't
junky), I'll probably do some automation to pull in comments to the
page itself.

I originally used
[Poole](http://hawksworx.com/blog/adding-a-static-comments-system-to-my-jekyll-build/)
to store comments, but the backend site went down recently. Switching
to using issues has the pleasant side effect of elimating the external
dependency. If I ever stop using GitHub to host this blog, I'll have
to find another commenting solution. But that's not at all likely, I
suspect.

After
[thinking about comments](http://meta.stackexchange.com/q/204402/1438)
on Stack Overflow, I'm convinced that comment sections require either
a bar to entry or active moderation since I'm not interested in
moderating comments on my blog, I'm content to require people to have
a GitHub account to interact publically on my posts. I don't think
that's a high bar, but it should eliminate comment spam. (My old
comment scheme got about as many spam comments as legitimate comments,
so I was never tempted to publish comments.)

And just in case you want to comment on comments:

{% include comments.html %}
