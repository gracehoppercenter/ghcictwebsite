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
    - Here's a nice page about how to do this in Django: [How to query case insensitive data in Django ORM](https://www.geeksforgeeks.org/how-to-query-case-insensitive-data-in-django-orm/)
- The second example was in the [Nested Loops Join N+1 Problem](https://use-the-index-luke.com/sql/join/nested-loops-join-n1-problem).

The first step of this assignment is to reproduce both of these. We'll work on 
correcting them on Thursday!



## Homework

We'll move on from these ORM activities this week. No pressure yet, 
but you might want to start thinking
about working on them outside of class if you think you'll need more time.
