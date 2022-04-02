FROM python:3.7.2-slim
FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

