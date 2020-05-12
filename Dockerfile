FROM arm32v7/python:3.8.2-slim-buster

RUN apt-get update -y && \ 
    apt-get install -y python3 python-pip-whl python3-pip 

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python3" ] 
CMD ["app.py"]


