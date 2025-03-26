## Lesson Objectives
By the end of this lesson, you should:
- **Understand** the importance of an Object-Relation Mapper
- **Be able to** use an ORM to generate tables in PostgreSQL
- **Be able to** identify and investigate queries written with an ORM



### Django ORM - Review

Last class we looked through the starter code that I setup here:

- [My Starter Code](https://github.com/MrJonesAPS/orm/)

Here are a few points we'll review:

- We're running this inside a virtual environment
    - To start your virtual environment, run `source .venv/bin/activate`
    - When it's active, you'll see `(.venv)` at the front of your terminal prompt
    - To stop the virtual environment, run `deactivate`
- You'll need to update your credentials in `orm/settings.py`
- You'll define your models in `db/models.py`
- Any time you've made changes to your models, you'll need to run: `python3 manage.py makemigrations db` and `python3 manage.py migrate db`
- To start the admin webserver, you'll need to add your model names to `db/admin.py` and then run `python3 manage.py runserver`
    - Once it's running, you can find it by putting this into your browser's URL bar: `http://localhost:8000`
- The first time you create your database, you'll need to run: `python3 manage.py createsuperuser`
- If you want to write custom ORM code, you can include it in `main.py`
- If you want to totally start over:
    - For now, we're using sqlite3, so you can just delete your `db.sqlite3` file.
    - Once we switch to PostgreSQL, see the code in `main.py`

### Foreign Keys and Many-to-Many

Last class we looked at a single model, `User`. Today, we'll discuss a few more models. We'll re-create these
and take a look at how they work.
- [Many-to-one relationships](https://docs.djangoproject.com/en/5.1/topics/db/examples/many_to_one/)
- [Many-to-many relationships](https://docs.djangoproject.com/en/5.1/topics/db/examples/many_to_many/)

### Helpful Documentation

- [Django Girls Models Tutorial](https://tutorial.djangogirls.org/en/django_models/)
- [Django Girls Admin Tutorial](https://tutorial.djangogirls.org/en/django_admin/)
- [Django Girls ORM Tutorial](https://tutorial.djangogirls.org/en/django_orm/)
- [Django Official Documentation - Models](https://docs.djangoproject.com/en/5.1/topics/db/models/)
- [Django Official Documentation - Field Types](https://docs.djangoproject.com/en/5.1/ref/models/fields/#field-types)
- [Django Official Documentation - Queries](https://docs.djangoproject.com/en/5.1/topics/db/queries/)

###  Classwork Activity
Revisit the project that you worked on at the end of the first semester. Recreate that database using
Django's ORM. In class next time, we'll compare the database that you created manually vs the database
that Django created for you.

## Homework

No Homework! We'll keep working on this in class on Wednesday
