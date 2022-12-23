FROM ubuntu:18.04
MAINTAINER jkouassi (kouassi.joel052@gmail.com)
RUN groupadd -r jojo -g 436 && useradd -u 435 -r -g jojo -s /sbin/nologin -c "utlisateur dockerfile" jojo
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD static-website-example/ /var/www/html/
ENTRYPOINT [ "/usr/sbin/nginx", "-q", "deamon off;" ]
USER jojo
