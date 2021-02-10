FROM nginx:1.19.6


RUN mkdir personalWebsite
COPY  /web /personalWebsite
COPY ./server.py /personalWebsite/web/


COPY ./web/*.html /usr/share/nginx/html/
COPY ./web/*.png /usr/share/nginx/html/
COPY ./web/*.json /usr/share/nginx/html/
COPY ./web/*.js /usr/share/nginx/html/
COPY ./web/assets /usr/share/nginx/html/
COPY ./web/icons /usr/share/nginx/html/

COPY ./nginx.conf /etc/nginx/
#RUN apt-get install certbot
#RUN certbot --nginx -d thecalmday.com -d www.your_domain
