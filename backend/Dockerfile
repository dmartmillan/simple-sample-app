FROM python:3.9-alpine as buil-step

RUN mkdir -p /app

WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt /app
RUN pip install -r requirements.txt --no-cache-dir

COPY . .

EXPOSE 5000

ENV FLASK_APP=./src/main.py
#RUN flask run -h 0.0.0.0
