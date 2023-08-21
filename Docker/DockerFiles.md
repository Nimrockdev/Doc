## Ubuntu
FROM ubuntu:16.04
MAINTAINER jsanchez 
RUN apt-get update 
RUN apt-get -y install apache2
EXPOSE 81
CMD /usr/sbin/apache2ctl -D FOREGROUND

## Centos
`FROM centos:7

RUN yum install httpd -y

ADD startbootstrap-freelancer-gh-pages /var/www/html

CMD apachectl -DFOREGROUND`  

`FROM centos:7

RUN yum install httpd -y

CMD apachectl DFOREGROUND
`


## nginx
`FROM nginx

RUN useradd jsanchez

COPY fruit /usr/share/nginx/html

ENV archivo docker

WORKDIR /usr/share/nginx/html

EXPOSE 90

LABEL version=1

RUN echo "Yo soy $(whoami)" > /tmp/yo.html

USER root

RUN cp /tmp/yo.html /usr/share/nginx/html/docker.html

VOLUME /var/log/nginx

CMD nginx -g 'daemon off;'`

## Apache con ssl
`FROM centos:7

RUN \
	yum -y install \
	httpd \
	php \
	php-cli \
	php-common \
	mod_ssl \
	openssl

RUN echo "<?php phpinfo(); ?>"  >/var/www/html/hola.php

COPY startbootstrap-freelancer-gh-pages /var/www/html

COPY ssl.conf /etc/httpd/conf.d/default.conf
COPY docker.crt /docker.crt
COPY docker.key /docker.key

EXPOSE 443

CMD apachectl -DFOREGROUND`