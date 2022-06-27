FROM python:3.9-slim-buster

RUN mkdir -p /app
COPY . /app/
WORKDIR /app
RUN pip install -r requirements/local.txt

