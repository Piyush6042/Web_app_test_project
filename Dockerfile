FROM centos:latest
MAINTAINER itspiyush1991@gmail.com
RUN yum install -y httpd
WORKDIR /app
COPY . /var/www/html /app
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
