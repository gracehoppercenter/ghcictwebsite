## What We'll Do In Class


### Django ORM - Investigate Tables
**This assignment counts for a Q3 grade!**

Now that we've created Django models and turned those into SQL tables, we want 
to take a look at those tables and see if they're what we expected.

For this assignment, you'll create a Markdown file that contains the following:
- Links to the ER diagram and the CREATE TABLE script that you created for your
project at the end of the first semester
- A link to your Django models.py file
- A screenshot from PGAdmin that shows the ER diagram for the tables that were automatically created by Django
    - I want this ER diagram to show only the tables that are based on your
    models. You'll need to delete all of the tables that Django creates to keep
    track of itself.
- A short reflection comparing the two:
    - How does the final ER diagram compare to the one you created manually? Is
    it exactly the same? Is there any difference that surprised you?
    - How does the effort compare? If I asked you to create and document a new 
    database, would you choose to follow the procedure that we followed in our
    end-of-semester project, or would you use Django?


### Django ORM - Investigate Queries
**This assignment will count for a Q4 grade**

Now that we have some data, we'll use Django's ORM to query it.

In [Use the Index, Luke](https://use-the-index-luke.com/), there were several
examples of cases where ORMs create sub-optimal queries plans. We'll try to find 
some of these, quantify the impact, and optimize them.

To start off, we'll use our new tools to repeat the activity from 
[Session 10](session.html?num=10). Our goal will be to write ORM code and
understand how PosgreSQL executes it. Follow these steps:
- Choose a method to write queries with the Django ORM. I might choose to use
the Django shell, but you could also write queries in a Python file (be sure to 
copy all of the setup code that I provided at the top of `main.py`).
- Write some queries. [Here's the official documentation to get you started](https://docs.djangoproject.com/en/5.0/topics/db/queries/#retrieving-objects)
- For each query, when you execute the Python code, Django will log the exact
PostgreSQL code that it executes. You can find these logs in `logs/debug.log`,
and maybe they will also be output to your console (but I turned that part off 
on my copy and encouraged you in class to do the same).
- Copy/paste them into PGAdmin and click the `Explain` button. Look at the query
plan that it produces and make sure you understand it.

Repeat this process until you find one of each example: a sequential scan, index
scan, and index-only scan. Write a Markdown file that includes the Django ORM code, the sql query, and a screenshot from PGAdmin for each.