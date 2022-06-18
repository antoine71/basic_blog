install:
	#install commands
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
