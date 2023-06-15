FROM ubuntu

RUN apt update; \
DEBIAN_FRONTEND=noninteractive apt install apache2 -y
ADD ./index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
