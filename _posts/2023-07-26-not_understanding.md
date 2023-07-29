---
layout: post
title: Stack Overflow's CEO doesn't understand Stack Overflow
tags: community strike
comments: true
---

[I've added [an update](#update-july-29) after watching [the
announcement](https://www.youtube.com/watch?v=g5F5t205pYA).]

I've been [on vacation](/2015/07/21/vacation.html), so I haven't been
following [the Stack Overflow moderator
strike](https://jlericson.com/tag/strike.html).[^1] Not that there has
been much progress. Negotiations stalled for [a variety of
reasons](https://meta.stackexchange.com/questions/390106/moderation-strike-update-data-dumps-choosing-representatives-gpt-data-and-wh/390704#390704). Meanwhile
Stack Overflow's CEO, Prashanth Chandrasekar, dug the company's hole a
bit deeper [during an interview with
VentureBeat](https://venturebeat.com/ai/stack-overflow-ceo-teases-generative-ai-tools-addresses-moderator-protest/).

As I mentioned [the last time I analyzed an
interview](/2020/02/04/misunderstanding_meta.html), I assume the
author accurately represented Prashanth. I'd prefer an unedited
transcript because it allows the reader to interpret in the original
context but we must play the hand we are dealt. I will pull out the
quotes and offer my analysis below.[^2]

> There's definitely a question around how we leverage [generative AI]
> technology to deliver on our mission of helping build technology
> through collective knowledge. This intersection between the power of
> community on one side and AI on the other side&mdash;from my
> standpoint, human-generated community content has taken us to this
> level, we have a large impact, but there are also so many problems
> we can solve by leveraging this technology.

Before I jump in, please take a moment to read [Jeff
Atwood's](https://blog.codinghorror.com/introducing-stackoverflow-com/)
and [Joel
Spolsky's](https://www.joelonsoftware.com/2008/09/15/stack-overflow-launches/)
introductions of Stack Overflow.[^3]  Did you
notice what I did? Both describe Stack Overflow as the solution to a
very specific problem: programming knowledge locked up in minds and
forums whence it's difficult to retrieve. They also explain how they
intend to solve the problem including using their combined audience to
form the core of the community of programmers to answer questions. As
someone who was there at the time, it was easy to envision how the project
might solve the problem even if that was an unlikely outcome.

By contrast Prashanth regularly talks about combining community and AI
without going into detail about how that solves the problem at
hand. Neither does he go into much detail about the problems the
company intends to solve. I suspect one reason is that Prashanth, who
has spent [most of his career in
management](https://www.linkedin.com/in/pchandrasekar/details/experience/),
has become something of an [architecture
astronaut](https://www.joelonsoftware.com/2001/04/21/dont-let-architecture-astronauts-scare-you/). As
Joel puts it, "architecture people are solving problems that they
think they can solve, not problems which are _useful_ to solve." Since
there is overlap between a Q&A site and generative artificial
intelligence, there must be a way of jamming them together.

But there's another factor. In May I [wrote about Stack Overflow's
business](/2023/05/17/so_business.html), which lost $42 million over 6
months and had just laid off 10% of its employees. Since then, [the
company's fiscal year-end results came
out](https://prosus-ir.com/results/2023/Prosus-annual-results-2023/pdf/booklet.pdf). Despite
growing revenue, it lost $84 million over the year ending on March
31, 2023. In fact Prosus' _entire education technology segment_ lost
money despite growing income:

> On an economic-interest basis, Edtech segment revenues grew by 28%
(18%) to US$545m and trading losses increased to US$258m. Growth was
affected by decreased demand in the macroeconomic downturn. Our
portfolio companies have reacted quickly to changing market conditions
and are rationalising their cost structures and investments. At the
same time, our businesses are shifting resources to take advantage of
new AI technologies which promise to transform the industry. By
deploying GenAI technologies, our companies can better personalise the
content and user feedback on their platforms.

In their [most recent earnings
call](https://www.prosus.com/~/media/Files/P/Prosus-CORP/latest-financial-results/results-call-transcript.pdf),
Larry Illg, the CEO of the segment and Prashanth's boss, commented:

> For Stack specifically, we think that Gen AI is going to be an
> important evolution to how developers work and learn in the future,
> helping them to be more efficient and also learn new techniques
> while they're in the flow of work. We think, and the Stack team
> believes the developer community can play a crucial role in how AI
> evolves and accelerates, ultimately, with the community being
> helpful in ensuring the quality of Gen AI offerings. And Stack
> itself sees its role as is bringing the power of its developer
> community&mdash;and it's important to remember that they have assembled
> one of the biggest developer communities in the world&mdash;bringing
> that community together with the technology power of AI with the
> goal of creating highly trusted solutions to technology
> problems. And the team is working and launching a variety of AI
> solutions and more to come here.

So it might be that the shift to allow AI answers has more to do with
Stack Overflow's parent company than its CEO. Or maybe Prashanth has
been pushing this as a solution to Stack Overflow's financial
problems. Either way, it appears the company hopes the community will
cooperate by vetting artificially generated content. It doesn't appear
they have put much thought into why the community might want to do
this, though it's important to remember these are comments directed to
investors, not developers.

The call happened on June 27, a month after [the policy allowing AI
content](https://meta.stackexchange.com/questions/389582/what-is-the-network-policy-regarding-ai-generated-content). I
can only speculate, but a reasonable interpretation would be that the
company found it could not solve its financial problems by [selling
data](/2023/06/19/data_dump.html) and looked for other ways it could
provide something to sell to LLM developers. Given Stack Overflow's
voting system, it's natural to wonder if that data could be fed back
into the models. (And even better if Stack Overflow can be paid for
that data.) But you can't very well do that if machine-generated
content is absolutely disallowed.

Let's pop the stack back to Prashanth's interview:

> We want to do it responsibly and safely and have the right use case
> to solve specific user and customer problems. It's going
> to be very, very exciting&mdash;I can't wait for the world to know and
> for our community to use the things that we're about to announce.

This is clearly referencing Prashanth's keynote address on July 27
when he's planning on making an announcement. I
[predicted](/2023/06/19/data_dump.html) the announcement would be
adding Prosus' LLM technology to Stack Overflow. That wouldn't help
with revenue, but it's the easiest way for Stack Overflow to
demonstrate the potential value of using voting data. In order to
maximize press coverage on the day of the announcement, the company
can only tease without breaking the news early. That's a pretty
terrible communication strategy for a community, however. Unless your
community trusts you without reservation (and Stack Overflow is
nowhere near that blessed state) the teases will only increase
anxiety.

> We're probably talking about 30 million official developers based on
> our own data sets, but that number is probably going to at least
> triple because there are so many people that are going to come into
> the field of writing code because it's so much easier to begin to
> write a baseline level of quality of code. And I think
> the watermark has just sort of gone up in terms of the expectations
> for everyone.

Stack Overflow has [21 million
users](https://stackexchange.com/sites#users), so that's not where the
30 million comes from. A [quick Google
search](https://www.google.com/search?q=how+many+developers+are+in+the+world)
puts the number of developers worldwide at 27 million. Since the world
population stands at [8
billion](https://www.worldometers.info/world-population/), roughly 3
of every thousand people on Earth are developers. I don't know if that
sounds like a large or a small number to you, but given there were [no
programmers before
1945](https://en.wikipedia.org/wiki/ENIAC#Programmers) and [not many
more added in the
1950s](https://www.cs.utexas.edu/users/EWD/ewd03xx/EWD340.PDF), the
profession has grown at a goodly rate.

![Display of arrowhead technology at Guernsey State Park, Wyoming.](/images/arrow_tech.jpg)


In a blog earlier this year, [Prashanth compared AI to the
introduction of tractors](https://stackoverflow.blog/?p=21973) in that
they made the job easier. I pointed out that [tractors reduced the
number of
farmers](https://meta.stackexchange.com/questions/388401/new-blog-post-from-our-ceo-prashanth-community-is-the-future-of-ai/389224#389224).[^4]
Tripling the number of programmers would imply a rather dramatic
change to the world economy. What sort of work would they be doing? As
a lapsed programmer, I do find myself reaching for the old tools to
help a colleague from time to time. But I don't envision my co-workers
becoming programmers no matter how easy it becomes. If I weren't
around to ask, they'd reach for other tools or just go without.

> I think you want to definitely be adopting these tools to get more
> productive and efficient and learn faster in your role.

This is another way of expressing the well-worn idea: ["AI will not
replace you. A person using AI
will."](https://twitter.com/svpino/status/1610984481342771200)
Remember there used to be an occupation called
["computer"](https://en.wikipedia.org/wiki/Computer_(occupation)). The
people who had those jobs (often women) lost them to devices also
called "computers". AI enthusiasts aim for a happy medium where the
technology is disruptive enough to demand attention, but tame enough
that everyone who adopts it will prosper. 

Since the invention of writing, there were scribes who specialized in
using (and creating) the tools required to make legible marks. They
were hired to take dictation and copy manuscripts. It was technical
and highly-specialized work. With improvements in technology
(including [the printing press and mass-produced metal
nibs](https://www.bl.uk/history-of-writing/articles/a-brief-history-of-writing-materials-and-technologies))
more people could write for themselves and "scribe" took on a
metaphorical meaning for someone who makes a living cranking out the
written word. Technology dramatically increased the production of
writing at the cost of people making a living doing that work.

After using ChatGPT for a few months to [help me write
code](https://jlericson.com/2023/03/29/coding_ai.html), I'm not sure
it will have the same impact as metal nibs had on writing. For common
questions, it's impressive but [blind spots can be easily
found](https://lcamtuf.substack.com/p/the-miracle-of-chatgpt). The
primary advantage of LLMs (their output can be copied and used without
modification) also makes them poor tools for effective learning. They
create [cargo
cults](http://calteches.library.caltech.edu/51/2/CargoCult.pdf) from
their training materials. They sometimes produce useful results if
circumstances are favorable, but provide no help otherwise.

> The decision to ban ChatGPT was the “right decision” back in
> December, said Chandrasekar. But now, he explained, the company has
> slowly been working with the community, doing research and getting
> input.

This is the primary spot I wish VentureBeat had provided a
transcript. I think Prashanth has [Stack Overflow
Labs](https://stackoverflow.co/labs/) in mind here. If so, the
feedback from the community was largely "please don't do this". It's
hard to see how any of what happened after reversing the ban on
ChatGPT is working _with_ the community. "Against" seems the more
appropriate preposition.

> We have gotten feedback on how best to make sure that we will trust
> generative AI products, from a Stack Overflow standpoint, and that's
> what we're going to announce in about a month's time.

This is fairly vague, but despite the context I suspect the feedback
came from people working with LLMs. It certainly hasn't come from the
community since their elected moderators were told their judgment was
unreliable. In that light "make sure that we will trust generative AI
products" feels a lot more sinister than it first appears. Perhaps
what Prashanth meant was simply "improve the trustworthiness of
generative AI products", which once again signals using Stack Overflow
voting to provide feedback to some model or other.

> [False negatives are] causing a really negative impact because when
> a legitimate human being coming on the website wants to ask a
> question, we don't want to shoo them away. We want to share the
> question, we want to serve our purpose and mission.

> [The decision to create a new AI policy was] not an easy decision by
> any means&mdash;but we just thought that the cost of dissuading
> people from asking a question on Stack Overflow was too high. And it
> was happening very alarmingly high rate based on the analysis that
> we looked at.

From what I can tell, most suspected machine-generated content comes
in the form of an answer, not a question. Nevertheless, incorrectly
flagged content does have a negative impact on the humans that
produced it. I believe, however, the company is [underestimating the
number of answers copied from ChatGPT](/2023/06/26/problem_ai.html). 

> We've taken a public position around this subject, saying that we
> always want to be open and free with our data with our developer
> community. However, large AI companies building models&mdash;we
> absolutely want to work with them in a more formal way.

While this might be the company's public position, [Prashanth
privately wanted to limit who can access the
data](https://meta.stackexchange.com/questions/391634/the-companys-commitment-to-the-data-dumps-the-api-and-sede/391640#391640). On
March 28, 2023, he ordered the data dump not be uploaded to
Archive.org. The DBA who turned it off warned that the community would
notice and it did. Rather than having an answer prepared, the company
publicly struggled for an answer. [Internal
communication](/2023/06/19/data_dump.html) shows most of the company
was as surprised as the rest of us.

The harsh reality is that Stack Overflow's CEO hasn't listened to the
people who best understand Stack Overflow. He appears to have a
surface-level grasp of the site, the community and the culture. As a
result, he's made decisions that harm the value of Stack
Overflow. This isn't necessarily malicious, but rather [incompetence
of some sort](https://en.wikipedia.org/wiki/Hanlon%27s_razor).

Prashanth has already demonstrated skill in selling Stack
Overflow. That was an impressive feat. But nobody can excel at
everything and he hasn't shown an aptitude for running a
community-centered company. It requires [much more than platitudes and
boundless
enthusiasm](https://meta.stackexchange.com/questions/391626/historical-policy-on-the-use-of-gpt-generators/391654#391654).

### Update July 29

I've gotten some more information related to this post that I'd like
to address in no particular order:

* Apparently the interview was conducted a month or so before the
  article was published. You can see evidence of that by noticing
  Prashanth said the announcement was "in about a month's time" when
  the article was published two weeks before the conference. This
  doesn't change my analysis much. It does mean there was less
  feedback from the community for Prashanth to incorporate into his
  answers.
  
* After listening to [the
  announcement](https://www.youtube.com/watch?v=g5F5t205pYA), I'm
  struck by how none of it actually requires machine-generated content
  be allowed on public Stack Overflow. From what I can tell Stack
  Overflow is using an LLM model (probably developed by Prosus) to
  index content that already exists. It doesn't use ordinary post
  voting to improve the model. It also doesn't seem to be feeding
  content into the sites either.[^5] What they are actually doing seems
  worthy of experimenting with, so provoking the moderators, your
  natural advocates, to strike seems particularly counterproductive.
  
* There was also a [podcast
  episode](https://the-stack-overflow-podcast.simplecast.com/episodes/overflowai-stack-overflow-ai-search-code-ide/transcript/)
  from Stack Overflow[^6] in which Ellen Brandenberger, Director of
  Product Innovation, and Jody Bailey, CTO, discussed the new
  initiatives. One revelation is that Prosus _did_ provide several of
  the models including a Slack chatbot called [Plus
  One](https://finance.yahoo.com/news/tech-investor-prosus-learned-lessons-202140208.html)
  which is being used within the company. Employees are also
  [dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food)
  search improvements (which aren't AI-related necessarily). Both
  guests sound genuinely interested in getting feedback from the
  current users of public Q&A. More of this, please!

* The [secret policy which sparked the moderator
  strike](https://meta.stackexchange.com/questions/391626/historical-policy-on-the-use-of-gpt-generators)
  was finally made public. It focuses extensively on the unreliability
  of GPT detectors. Stack Overflow moderators seem to generally agree
  with this conclusion because [they didn't use those detectors as a
  rule](https://meta.stackexchange.com/questions/389811/moderation-strike-stack-overflow-inc-cannot-consistently-ignore-mistreat-an/389844#389844). Predictably
  it points out that users from Pakistan, Bangladesh and India are
  substantially more likely to be suspended for GPT usage and users
  from the US, Sweden, Britain and Australia are less likely than
  average. This lines up with [Stack Overflow's own
  data](https://stackoverflow.co/labs/developer-sentiment-ai-ml/#h3-e1b2aa9219ec0)
  that finds 55% of Indian developers trust output of AI tools
  compared to [42% of all
  respondents](https://survey.stackoverflow.co/2023/#section-developer-tools-accuracy-of-ai-tools). I
  now believe Stack Overflow leadership genuinely believed most
  suspensions were false positives and simply communicated their
  concerns in a self-destructive way.
  
* Someone asked at what point incompetence becomes malicious. Well, my
  wife is a nurse. Her job is to take care of the patient's practical
  medical needs. She works with doctors who are tasked with addressing
  the patient's medical conditions. Since my wife is a pediatric
  nurse, her patients are children. Some children can't swallow pills
  and other children refuse to take medicine in suspension
  (liquids). From the doctor's point of view, these are identical for
  many medications as long as the dosing is calculated properly. From
  a nurse's perspective, one works and the other doesn't.

  Thankfully many doctors have learned to defer to the nursing staff
  when it comes to decisions such as "pill or suspension". Some will
  even write their orders to give nurses some discretion for this sort
  of thing. But other doctors (younger ones, generally) focus on their
  own priorities without taking into account the nursing staff. They
  are probably very good doctors when it comes to diseases, but their
  way of operating adds friction to the care process.
  
  So are these doctors malicious or incompetent? Your answer to that
  question should be similar to your answer to whether a CEO of a
  community-centered business adds friction to the operations of his
  company because he's focused on his own specialty.  Given ongoing
  pain suffered by people in their wake, I can see how you might call
  this behavior malicious. It's certainly incompetent, though not in
  the primary duty of a doctor. So maybe this is the wrong framing?
  
  The core of the problem, in my estimation, is that doctors and CEOs
  aren't held accountable for the problems they sometimes cause in
  their organizations. This is also true of half a dozen other
  professions such as politicians, lawyers and pastors. People, even
  people who theoretically oversee these folks, just defer to the them
  by default. Unfortunately, these professions also attract certain
  personalities who project confidence that reinforces the perception
  that they don't need oversight.
  
  Practically I prefer to think of the problem as incompetence because
  that implies that experience could change the CEO's/doctor's
  behavior. But it might be better to attribute it to malice since the
  only reliable solution I've observed is for the person to move onto
  some other company. 

* My blog has a comment section. You can see the comments on this post
  below or you can go [directly to my Meta
  site](https://meta.jlericson.com/) where you can find all the
  comments.

---

[^1]: Not to be confused with the [Writers and Actors Guilds
    strike](https://www.latimes.com/business/technology/story/2023-07-21/column-hollywood-sag-aftra-strike-strike-silicon-valleys-magical-thinking). There
    is some crossover however. As Brian Merchant wrote in the article
    I just linked to:
    
    > The formula for seeking out that next multibillion-dollar "unicorn," in hindsight, was pretty simple: The next wave of start-ups had to promise that it would disrupt a stale industry with a newer, high-tech app-driven alternative, promise the potential for vast scale and promise that it could do so fast.
    
    Oddly the "stale industry" Stack Overflow intends to disrupt seems
   to be its own.

[^2]: This is a traditional
    [fisking](https://en.wiktionary.org/wiki/fisking), though I try
    not to be nasty about it.

[^3]: It's dangerous to send people to really interesting articles since they might never come back. Still, you could do worse than just read what prompted Stack Overflow's founding and compare them to the current CEO's ideas.

[^4]: In a relative sense at least. Agricultural technology is a bit odd since it allowed for dramatically higher global population and thereby increased the number of farmers. AI seems unlikely to have the same effect.

[^5]: Though it's possible [I didn't listen closely enough](https://meta.stackoverflow.com/questions/425787/will-overflowai-really-feature-dumping-ai-code-explanations-onto-stack-overflow).

[^6]: I used to be a regular listener to the podcast. I stopped because I found I don't care about the topics which were rarely related to Stack Overflow (much less Stack Exchange). Listening to this episode was refreshing. Not sure if it's a regular feature of the show now, but I was pleasantly surpised with a discussion of a recent [Lifeboat badge award](https://stackoverflow.blog/2019/06/18/adios-to-unfriendly-badges-ahoy-lifejacket-and-lifeboat/). 

<!--  LocalWords:  Prashanth Chandrasekar Prashanth's Prosus LLM GPT
 -->
<!--  LocalWords:  ChatGPT VentureBeat
 -->
