#!/bin/bash
docker volume create apache
docker run -itd --name ucon1 -p 85:80 -v apache:/var/www/html u_apache:v1
