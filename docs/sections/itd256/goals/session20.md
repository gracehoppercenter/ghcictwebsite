## Happy 4th Quarter!
Hope you had a wonderful spring break =)

I'm in a bit of a crisis - the end of the school year is scary close, and 
there are still so many more things I want to tell you about databases!

In class, we'll quickly discuss my plans for the remainder of the year:
- This week, we'll wrap up our exploration of the Django ORM
- Next week, we'll start exploring transaction control, concurrency, and ACID.
    This is not my favorite topic in the world of databases, but it's important.
    I have some activities planned that I think will make it more enjoyable.
- Finally, we'll explore other databases. We've spent all year learning about
**relational** databases, but there are lots of other types of databases out
there. We'll do a big project where we'll each take an interesting new type of 
database to research and share.
- We also need to come up with a final exam. I haven't figured this out yet, 
but I'll share plans when I do!


## What We'll Do In Class

### Review activities from before break
Before break, we were working on two activities related to the Django ORM.
See the details here: [See the details here](session.html?num=18).

The first assignment on that page counted as a Q3 grade, and the second assignment
will be your first Q4 grade. I'll quickly review both assignments to make
sure that everyone got the takeaways I was expecting from the first and 
everyone knows what I'm expecting from the second.

### Use the Index, Django!

In [Use the Index, Luke](https://use-the-index-luke.com/), there were several
examples of cases where ORMs create sub-optimal queries plans. We'll try to find 
some of these, quantify the impact, and optimize them:
- The first example was in the page about [Case-insensitive Search](https://use-the-index-luke.com/sql/where-clause/functions/case-insensitive-search) (See the box titled "Warning"
about half way down the page).
- The second example was in the [Nested Loops Join N+1 Problem](https://use-the-index-luke.com/sql/join/nested-loops-join-n1-problem).

To investigate these two cases, follow these steps:

1. Select one of our tables that has a column with a varchar data type, and add an index to that column. (in your `models.py`, just add the argument `db_index=True`
to the column)
2. Go to PGAdmin and take a look at the indexes on that table. You might be 
surprised to find that it actually created two indexes. Do some googling about the
difference, and write two sql queries, one that results in an index scan using
each of the two indexes.
3. Go back to Django and write some ORM code that will result in an index-only
scan using either of those new indexes. This code will look very similar to 
your last assignment.
4. Write a new ORM query that uses case-insensitive search. Here's a nice page about how to do this in Django: [How to query case insensitive data in Django ORM](https://www.geeksforgeeks.org/how-to-query-case-insensitive-data-in-django-orm/)
. As you're reading this page, notice that this page makes no mention of the performance impact!
5. Run both queries, grab them from the logs, copy/paste them into the PGAdmin,
and confirm that you're getting the query plans you expected.
6. Turn off logs in Django for this next part. We're about to generate tons of queries and logging will slow this process down. In `settings.py`, comment out
the line that says `"handlers": ["file", "console"],`.
7. Fill in your queries into [my starter code for this activity](https://github.com/MrJonesAPS/orm/blob/main/03_ORM_Limitations.py). We'll talk through this code together. 
8. Repeat this process several times times, using your Faker code to change the table size. Capture the runtime differences when the tables have 100 records, 1000 records, 10000 records, 100000 records (and more if you have time). (spoiler: the results should align with figure 3.2 on this page: https://use-the-index-luke.com/sql/testing-scalability/data-volume, which we discussed last unit).
9. Write all this up! Your Markdown file should include:
    - A discussion of the two indexes that Django added, and the queries that use them.
    - A comparison of the query plans generated when you use/don't use `__iexact`.
    - The results of your runtime investigation, formatted into a table
    - A short summary of the takeaways of this activity. Specifically, what additional warnings would you give to Django developers who are considering
    using the `__iexact` feature in their ORM code?


## Homework

Next week we're moving on to a new topic. If you're still working on today's 
activity, continue it outside of class!
