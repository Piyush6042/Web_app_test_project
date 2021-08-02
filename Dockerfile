FROM centos:latest
MAINTAINER itspiyush1991@gmail.com
RUN yum install -y httpd
WORKDIR /var/www/html
COPY /var/www/html /var/www/html
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
