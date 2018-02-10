FROM python:3
ENV PYTHONUNBUFFERED 1

ADD wait-for-it.sh /wait-for-it.sh

ADD requirements.txt /requirements.txt
ADD django_requirement.txt /django_requirement.txt
RUN pip install -r /requirements.txt

WORKDIR /app
ADD app /app
