install:
	#install commands
	sudo service postgresql start
	sudo su - postgres -c 'createdb antoine_blog_db'
	sudo su - postgres -c 'createuser db_admin --createdb'
	pip install --upgrade pip &&\
		pip install -r requirements/local.txt
format:
	#format code
	black .
lint:
	#check linting with flake8
	flake8
test:
	#test
	pytest --cov=basic_blog -vv
deploy:
	#deploy
all: install lint test deploy
