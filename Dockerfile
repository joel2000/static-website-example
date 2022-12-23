FROM ubuntu:18.04
MAINTAINER jkouassi (kouassi.joel052@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD . /var/www/html/
ENTRYPOINT [ "/usr/sbin/nginx", "-q", "deamon off;" ]

