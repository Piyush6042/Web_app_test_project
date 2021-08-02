FROM centos:latest
MAINTAINER itspiyush1991@gmail.com
RUN yum install -y httpd
WORKDIR /app
COPY /var/www/html/index.html /app
COPY var/www/html/registration.css /app
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
