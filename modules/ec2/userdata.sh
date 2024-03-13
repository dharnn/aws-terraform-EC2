#!/bin/bash
sudo yum upate -y
sdo yum install -y docker
systemctl enable docker
systemctl start docker
sudo usermod -a -G docker ec2-user

docker run -d -p 8080:80 nginx
docker run -d -p 8081:80 nginx

