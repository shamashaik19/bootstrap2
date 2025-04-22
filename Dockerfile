FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN rm -rf /var/www/html/index.html
RUN git clone "https://github.com/shamashaik19/bootstrap2.git" /var/www/html/
CMD apachectl -D FOREGROUND
