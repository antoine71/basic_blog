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
build:
	#build container
deploy:
	#deploy
all: install lint test deploy
