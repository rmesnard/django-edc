FROM python:3.7-stretch

EXPOSE 8000

RUN apt-get update
RUN pip3 install --upgrade pip

COPY requirements.txt requirements.txt 

RUN pip install -r requirements.txt

COPY config config 
WORKDIR /config

CMD ["bash","start-daemon.sh"]