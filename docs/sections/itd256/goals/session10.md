## Lesson Objectives
By the end of this lesson, you should:
- **Know** that a database index is a separate structure that helps with table queries
- **Understand** queries that use an index are often (but not always) more performant than queries that do not
- **Be Able To** use `EXPLAIN` and `EXPLAIN ANALYZE` to understand how a query is executed

## What We'll Do In Class

### B Trees and Doubly-Linked Lists
A lot of the magic of how well databases work is because of these two data structures. To play with B Trees, we'll take a look at [this interactive demo](https://dbis-btree.uibk.ac.at/)

This isn't a data structures class, so we won't dwell on them too long. We'll focus on admiring how cool they are, and appreciating that they make index
lookups and sequential scans on unordered heaps super efficient.

### Use the Index
Our goal for today will be to understand how to tell which indexes exist on a table, and how to tell whether a given query is using the index.

For this activity, we'll work with a postgres database that I created called `use_the_index`. It has a single table called `employees` with 100,000 employee records.

We'll run a few queries together, and we'll use [this open-source tool](https://www.pgexplain.dev/) that makes reading query plans easier.

### Classwork - find query plans
Your goal is to write several queries that generate different types of plans. There are three ways to access data in a table, so your goal is to write one for each:
- Sequential Scan
- Index Scan
- Index Only Scan

For classwork today, you should write one query that demonstrates each of these. You should write a Markdown file that includes:
- the query
- the query plan
- A short explanation of why it used the operation it did

## Homework

### Reading
Read and take notes on the next few pages:

- The Equals Operator
    - Primary Keys
    - Concatenated Keys
    - Slow Indexes, Part II
