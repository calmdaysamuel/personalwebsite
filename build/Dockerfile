FROM nginx:1.19.6


RUN mkdir personalWebsite
COPY  /web /personalWebsite
COPY ./server.py /personalWebsite/web/

COPY ./nginx.conf /etc/nginx/
COPY ./web/*.html /usr/share/nginx/html
COPY ./web/*.png /usr/share/nginx/html
COPY ./web/*.json /usr/share/nginx/html
COPY ./web/*.js /usr/share/nginx/html
COPY ./web/assets /usr/share/nginx/html
COPY ./web/icons /usr/share/nginx/html

