#!/bin/bash

yum update -y
yum install httpd -y
yum install git

systemctl enable httpd
systemctl start httpd

git clone https://github.com/MerkeyDiav/pipeline-ec2.git
cd pipeline-ec2
cp index.html /var/www/html/index.html