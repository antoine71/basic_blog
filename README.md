# Basic blog

This project is a basic blog website built on a Django backend.

## Status

The project is under development.

## Live preview

Check the live project on [http://www.arebillard.fr](http://www.arebillard.fr)

## Technical information

The project uses the following technologies:

* [Python 3](https://www.python.org) as the main programming language
* [Django 4.0](https://www.djangoproject.com/) as back-end framework
* [Pytest](https://pytest.org) and [Coverage](https://pypi.org/project/coverage/) for testing
* A [Startbootstrap theme](https://startbootstrap.com) as front-end

## Local Deployment

1. Clone this repository, navigate to the root folder of the repository, create and activate a virtual environment, install project dependencies :

```
git clone https://github.com/antoine71/basic_blog.git
cd basic_blog
python -m venv env
source env/bin/activate
pip install -r requirements/local.txt
```

2. Create a postgresql database and start the postgresql server :

```shell
createdb epicevents_db
sudo service postgresql start
```

3 in the subfolder `settings`, create a file names `.env` and populate the following environment variables information :

```shell
touch settings/.env
```

```
# settings/.env

SECRET_KEY=<your local secretkey>
DATABASE_NAME=<your database namey>
DATABASE_USER=<your database username>
DATABASE_PASSWORD=<your database password>
DATABASE_HOST=localhost
DATABASE_PORT=5432
```

3. Apply the migrations to the database and create a superuser :

```shell
python manage.py migrate
python manage.py createsuperuser
```

4. Run the tests :
```
pytest
```

4. Run the local server :
```
python manage.py runserver
```
