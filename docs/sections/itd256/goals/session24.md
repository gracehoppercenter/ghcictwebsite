## Lesson Objectives
By the end of this lesson, you should:


## What We'll Do In Class

### Discussion - Limitations of RDBMS

Everything we've studied so far this year relates to relational databases.
Relational databases are great at providing ACID properties, and answering 
complex SQL queries as long as they have structured, normalized data with 
strict schemas.

These are the traditional solution for data storage and worked great until ~2010.

A lot has changed since then, and there have been major changes to the way
that we use databases today. We'll discuss a few of them:

- Do we always need perfect ACID properties?
- Massive, diverse datasets
    - 'schema-on-read' instead of 'schema-on-write'
    - semi-structure data (eg JSON)
    - Document/Object storage
- Parallelization, commodity hardware (horizontal vs vertical scaling)
- Global data, distributed globally (I'll talk about this 2018 document that
    upended my world as a data engineer: <https://www.rbi.org.in/commonman/Upload/English/PressRelease/PDFs/PR264205042018.PDF>)


### Project: research and teach us about a modern database system

We'll introduce a new project today. We'll work on this over the next few classes.
I don't have a specific due date yet - we'll figure that out soon.

There are tons of exciting database systems out there today. For the next few
classes, we'll each pick one of these to research and present.

You should choose one of the below options, and:
- Research what it is, and how it works
- Find and follow a tutorial to setup and query a simple database

Then you'll give us a presentation that:
- Is guided by a Markdown document - as always =)
- Helps us understand the technology
    - Compare/contrast with Postgres
    - Provide specific advice about what kinds of projects we should consider this technology for
- Includes a live demo
    - You can use the same dataset as the tutorial you followed, but don't completely
    regurgitate the tutorial. You should come up with at least a few original queries.
    - This should demonstrate something that the system is uniquely good at.

Your research, Markdown report, and presentation, should all avoid marketing jargon -
this space is full of companies trying to sell products. Those technologies
love to make up fancy words to try to make their technology sound special. We care 
about the technology, not the marketing! So I'll expect that your presentation
is at about the same level of complexity and vocabulary that we've been using
in class all year.


#### Choose one of these:

(The specific technologies I'm recommending here are just recommendations. 
You're welcome to investigate and choose others in the same category)

- Document Storage / NoSQL: MongoDB
- Graph Database: Neo4j
- Cloud/Realtime Database: Firebase
- Distributed SQL: CockroachDB
- In-Memory Database: Redis
- Vector Database: Weaviate

#### Disclaimer

I don't have professional experience with any of these, so I'm asking you to be
the expert! I expect that there is a way to setup testing versions of each of these
online for free. Let me know if you need help figuring out how to do that!

