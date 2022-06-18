install:
	#install commands
	sudo service postgresql start
	sudo su - postgres -c 'createdb antoine_blog_db'
	sudo su - postgres -c 'createuser db_admin --createdb'
	pip install --upgrade pip &&\
		pip install -r requirements/local.txt	
	export SECRET_KEY=dscvx4342*&(ˆ(trerew0&dsassg7v=g80ews#z&e
	export DATABASE_NAME=antoine_blog_db
	export DATABASE_USER=db_admin
	export DATABASE_PASSWORD=
	export DATABASE_HOST=localhost
	export DATABASE_PORT=5432
	export ADMIN_URL=admin/

format:
	#format code
	black .
lint:
	#check linting with flake8
	flake8
test:
	#test
	pytest --cov=basic_blog -v
deploy:
	#deploy
all: install lint test deploy
