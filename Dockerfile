FROM python:3.10-alpine
MAINTAINER shahram.zs

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt  /requirments.txt
RUN pip install -r /requirments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user