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
<<<<<<< HEAD
	pytest --cov=basic_blog -v
=======
build:
	#build container
>>>>>>> 34ccbcabe3cbab294bcaa3947aec26d338ec1858
deploy:
	#deploy
all: install lint test deploy
