#!/bin/bash
service docker start
mkdir /home/ec2-user/dock     
docker pull nginx
docker run --name webserver -v /home/ec2-user/dock:/usr/share/nginx/html -p 80:80 -d nginx 