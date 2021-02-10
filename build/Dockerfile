FROM python:3


RUN mkdir personalWebsite
COPY  /web /personalWebsite
COPY ./server.py /personalWebsite/web/
WORKDIR /personalWebsite/web

EXPOSE 8080:8080
ENTRYPOINT python3 server.py