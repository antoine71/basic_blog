install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements/local.txt
format:
	#format code
	black .
lint:
	flake8
test:
	#test
deploy:
	#deploy
all: install lint test deploy
