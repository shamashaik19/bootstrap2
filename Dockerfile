FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN rm -rf /var/www/html/index.html
COPY startbootstrap-agency-gh-pages /var/www/html/
CMD apachectl -D FOREGROUND
