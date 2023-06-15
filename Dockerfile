FROM ubuntu

RUN apt update; \
DEBIAN_FRONTEND=noninteractive apt install apache2 -y

EXPOSE 80
CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
