#!/bin/bash
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y python3 ntp net-tools vim wget telnet epel-release htop
sudo systemctl start chronyd
sudo systemctl enable chronyd
sudo yum install -y php php-mysqlnd php-fpm php-json php-xml php-gd php-mbstring
sudo yum install -y httpd
sudo systemctl enable httpd