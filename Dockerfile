FROM centos:latest
MAINTAINER itspiyush1991@gmail.com
RUN yum install -y httpd
WORKDIR /app
COPY index.html /app
COPY registration.css /app
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
