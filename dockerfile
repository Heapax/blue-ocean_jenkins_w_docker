FROM python:slim-buster

WORKDIR /usr/app/src

COPY main.py ./

CMD [ "python", "./main.py" ]
