## Lesson Objectives
By the end of this lesson, you should:
- **Understand** the importance of an Object-Relation Mapper
- **Be able to** use an ORM to generate tables in PostgreSQL
- **Be able to** identify and investigate queries written with an ORM


## What We'll Do In Class
We're starting a new unit today, where we'll look at query tuning through the perspective of an 
[Object-relational Mapping](https://en.wikipedia.org/wiki/Object%E2%80%93relational_mapping) ("ORM"). 

We'll start by introducing the concept of an ORM, and then we'll dive into the Django ORM.

### Django ORM

There are a few important things that you'll need to know about when you first start working with
the Django ORM. We'll walk through them together in class, and I've summarized them below, 
and I've published some starter code for you here:

- [My Starter Code](https://github.com/MrJonesAPS/orm/)

#### Django Points to Remember

- You'll need to update your credentials in `orm/settings.py`
- You'll define your models in `db/models.py`
- Any time you've made changes to your models, you'll need to run: `python3 manage.py makemigrations` and `python3 manage.py migrate`
- To start the admin websserver, you'll need to add your model names to `db/admin.py` and then run `python3 manage.py runserver`
- The first time you create your database, you'll need to run: `python3 manage.py createsuperuser`
- If you want to write custom ORM code, you can include it in `main.py`
- If you want to totally start over, see the code in `main.py`

#### Helpful Documentation

- [Django Girls Models Tutorial](https://tutorial.djangogirls.org/en/django_models/)
- [Django Girls Admin Tutorial](https://tutorial.djangogirls.org/en/django_admin/)
- [Django Girls ORM Tutorial](https://tutorial.djangogirls.org/en/django_orm/)
- [Django Official Documentation - Models](https://docs.djangoproject.com/en/5.1/topics/db/models/)
- [Django Official Documentation - Queries](https://docs.djangoproject.com/en/5.1/topics/db/queries/)

###  Classwork Activity
Revisit the project that you worked on at the end of the first semester. Recreate that database using
Django's ORM. In class next time, we'll compare the database that you created manually vs the database
that Django created for you.

## Homework

### Finish your classwork activity
