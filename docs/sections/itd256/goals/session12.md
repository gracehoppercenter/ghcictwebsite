## Poisoned!
Hi All - I took a chance on some expired hummus last night, and that was not a good idea. I'm out sick today.

...Which is a shame - I did a ton of prep about statistics over the weekend and was excited to discuss them today. I guess we'll have to save that for Thursday.

## Today's Reading
While I'm out, I'd like you to work through the examples in this awesome two-part Medium article about pg_stats: [https://traderepublic.substack.com/p/statistics-how-postgresql-counts](https://traderepublic.substack.com/p/statistics-how-postgresql-counts). If that link doesn't work, they're also posted here: [https://engineering.traderepublic.com/statistics-how-postgresql-counts-without-counting-4aa1600c74b1](https://engineering.traderepublic.com/statistics-how-postgresql-counts-without-counting-4aa1600c74b1). It does a better job of giving a PostgreSQL-specific explanation of how row estimation works. I specifically like the helper function `c` that they use - I've deployed that function on my database and I recommend that you do too!

Spend some time going through the `histogram_bounds` examples in part 2 - make sure you understand the graphics, run the queries on your own db, 
and reproduce the results.

If you need help understanding any of those examples or just want more detail, I also found PostgreSQL's official documentation on this topic very helpful: [https://www.postgresql.org/docs/current/row-estimation-examples.html](https://www.postgresql.org/docs/current/row-estimation-examples.html)

As you read these, go through and add to/update your existing notes from these topics.

As always, please shoot me an email if you get stuck on any of this or need anything else!

## Homework

### More Reading
We're going to skip a few chapters in our book. The next topic we'll address is joins. I'd like you to read and take notes on these two page:
- [The short intro page about joins](https://use-the-index-luke.com/sql/join)
- [Nested Loop Joins](https://use-the-index-luke.com/sql/join/nested-loops-join-n1-problem)
