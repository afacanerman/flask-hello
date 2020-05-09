FROM python:3.6-slim-stretch

MAINTAINER Erman afacan <afacanerman@gmail.com>

RUN apt-get update -y
RUN apt-get install -y python3 python-pip-whl python3-pip
COPY . /app

WORKDIR /app
RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]


