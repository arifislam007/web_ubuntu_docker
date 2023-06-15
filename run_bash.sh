#!/bin/bash
docker volume create apache
docker build -t u_apache:v1 .
docker run -itd --name ucon1 -p 85:80 -v apache:/var/www/html u_apache:v1
