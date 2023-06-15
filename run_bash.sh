#!/bin/bash
mkdir data
docker build -t u_nginx:v1 .
docker run -itd --name ucon2 -p 86:80 --mount type=bind,source=/data,destination=/var/www/html u_nginx:v1
cp ./index.html /data/
