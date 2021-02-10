FROM python:3


RUN mkdir personalWebsite
COPY  /web /personalWebsite

WORKDIR /personalWebsite

EXPOSE 8080:8080
ENTRYPOINT python3 server.py