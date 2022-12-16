---
layout: post
title: What emojis are most popular?
tags: postgresql discourse
comments: true
---

This week I [added some
emojis](https://talk.collegeconfidential.com/t/adding-some-emoji-reactions/3624211)
for College Confidential members to use when reacting to other
people's posts. To help me decide which emojis to add, I wrote a
little query to see which emojis are most commonly used in our
Discourse posts:

```
-- [params]
-- text :emoji_regex = :[a-z]+:|[^A-z]-\)

select emoji,
       count(*)
from (SELECT substring(raw from :emoji_regex) emoji
      from posts
      TABLESAMPLE system(1)
      where length(substring(raw from :emoji_regex)) < 50
            and user_id > 0
     ) emoji_sample
group by emoji
order by count(*) desc;
```

I'm kinda proud of the query. Let's break it down line-by-line:

```
-- [params]
```

This line is interpreted as a comment by PostgreSQL because it starts
with `--`. Everything after the dashes is ignored by the SQL
interpreter. But this particular comment is interpreted by the
[Discourse Data
Explorer](https://meta.discourse.org/t/discourse-data-explorer/32566#declaring-parameters-in-your-query-8)
as the start of a list of parameters to the query. These are variables
that can be filled in at run time.

```
-- text :emoji_regex = :[a-z]+:|[^A-z]-\)
```

I'm only using one variable&mdash;`:emoji_regex`. It's just the regex
I'm using to detect emojis in posts. I'm making it a parameter because
I need to use it twice and I didn't want to have to edit it in two
places. The regex itself can be divided into two parts separated by
`|`, which works like an `or` operator. The first part (`:[a-z]+:`)
finds emojis like ":smiley:". The second (`[^A-z]-\)`) finds a subset
of [emoticons](https://en.wikipedia.org/wiki/List_of_emoticons) such
as ":-)". It's far from perfect ("{-)" is probably a false positive),
but it served my purpose.


```
select emoji,
       count(*)
```

When I write SQL, the select clause is often one of the last things I
write. Often the first cut uses `count(*)` to verify that the query is
producing some sort of result. Later I frequently `select *` so that I
can get an idea of what the columns look like. In this case, I'm
selecting an emoji and the count of rows that contain that emoji. It's
possible to infer that there will be a `group by emoji` later on.

```
from ( ...
```

Normally I'd select from a table, but in this case, I'm selecting from
[a
subquery](https://www.postgresql.org/docs/15/queries-table-expressions.html#QUERIES-SUBQUERIES). It's
a useful technique because you can pretend that the subquery is just
like a regular table, but you can set up the columns any way you need.

```
SELECT substring(raw from :emoji_regex) emoji
```

The capital `SELECT` is pre-populated when creating a new query in
Discourse Data Explorer. I typically use lowercase in my queries, so
this is an indicator of where I started working. I'm selecting the
first emoji from the `raw` post column using the regex from
earlier. If a post has several emoji, this query will only select the
first one.

```
from posts
```

`posts` is the only real table I use in this query. Typically a query
will `join` two or more tables. It just happens that this time I only
need the `raw` column from `posts`.

```
TABLESAMPLE system(1)
```

Scanning all `posts` will cause the query to time out, so I'm just
sampling 1% of the data. Initially I used `limit 1000` in the
subquery. But I wanted a random sample, so I used [`TABLESAMPLE` in
the `from`
clause](https://www.postgresql.org/docs/15/sql-select.html#SQL-FROM).

```
where length(substring(raw from :emoji_regex)) < 50
```

I only want to get posts that have at least one emoji. I added `< 50`
to eliminate cases where two colons were used as regular
punctuation. I could have built this into the regex instead, I
suppose.

```
and user_id > 0
```

Before I added this restriction, I got a lot of ":gift:" emojis coming
from an automated response. Automation frequently screws up data. By
convention automated accounts have negative `user_id`s, so it's easy
to filter them out.

```
) emoji_sample
```

This ends the subquery and gives it a name. The name doesn't matter
this time, but it's required and it can be handy if you are joining
another table.

```
group by emoji
```

Here's the foreshadowed `group by` clause. 

```
order by count(*) desc;
```

Finally, it's always a good idea to order the results. Often when
doing a `count(*)`, that will be the order your care about. Often
you'll be most interested in the most frequent results, so adding
`desc` is really common.

Since you've read this far, here are the most common emojis I found in
my sample:

|emoji |count|
|---|---|
|:-)|602|
|:rolleyes:|188|
|;-)|177|
|:eek:|137|
|:cool:|100|
|:smile:|83|
|:confused:|62|
|:smiley:|33|
|:wink:|31|
|:mad:|26|
|:frowning:|18|
|:joy:|17|
|:grinning:|17|
|@-)|15|
|:rofl:|13|
|:grin:|12|
|:blush:|10|
|8-)|6|
|:sob:|6|
|/-)|5|
|:disappointed:|5|
|:cry:|5|
|:shrug:|5|
|--)|4|
|.-)|4|
|:grimacing:|4|
|:sigh:|4|
|:laughing:|4|
|:relaxed:|3|
|:thinking:|3|
|:skull:|3|
|=-)|3|
|:lol:|3|
|:heart:|2|
|:https:|2|
|:v:|2|
|-)|2|
|:embarrass:|2|
|:herb:|2|
|:triumph:|2|
|:sunglasses:|2|
|:pensive:|2|
|:tada:|2|
|:pray:|2|
|:p:|1|
|:grade:|1|
|:rollseyes:|1|
|:popcorn:|1|
|:gift:|1|
|:mosquito:|1|
|:women:|1|
|:expressionless:|1|
|:confounded:|1|
|:golf:|1|
|:wave:|1|
|>-)|1|
|:hugs:|1|
|:weary:|1|
|:eyes:|1|
|:sparkles:|1|
|’-)|1|
|1-)|1|
|:refresh:|1|
|!-)|1|
|3-)|1|
|:blossom:|1|
|:crown:|1|
|:shrugs:|1|
|:o:|1|
|6-)|1|
|{-)|1|
|:shruggs:|1|
|:heartpulse:|1|
|:worried:|1|
|4-)|1|
|:anguished:|1|
|:fireworks:|1|
|:smirk:|1|
|:nonexistence:|1|
|:neutral:|1|
|9-)|1|
|:grumble:|1|
|:con:|1|
|:sweat:|1|
