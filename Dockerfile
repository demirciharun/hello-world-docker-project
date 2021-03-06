FROM python:3.7.3

MAINTAINER Harun Demirci <har.demirci@gmail.com>

ADD . /usr/src/app

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

RUN echo 'hello'

EXPOSE 8000

CMD python ./manage.py runserver 0.0.0.0:8000
