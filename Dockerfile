FROM ubuntu

RUN apt update; \
    apt install nginx -y
EXPOSE 80
CMD ["/usr/sbin/nginx","-g","daemon off;"]
