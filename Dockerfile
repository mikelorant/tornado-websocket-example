FROM python:3.7.3-alpine3.10

MAINTAINER Hiroaki Sano <hiroaki.sano.9stories@gmail.com>

COPY . /root/tornado-websocket-example/

WORKDIR /root/tornado-websocket-example

RUN pip install -r requirements.txt

RUN chmod 755 app.py

EXPOSE 8888

CMD ["/root/tornado-websocket-example/app.py"]
