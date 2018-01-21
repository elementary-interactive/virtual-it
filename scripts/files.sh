#!/bin/bash -eux

# Copy files
# nginx
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.$(date "+%b_%d_%Y_%H.%M.%S")

sudo cp /tmp/nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp /tmp/nginx/http.conf /home/vagrant/conf/nginx/http.conf
sudo cp /tmp/nginx/mime.types /home/vagrant/conf/nginx/mime.types

# mysql
sudo cp /tmp/mysql/.my.cnf /home/vagrant/.my.cnf

# php
sudo cp /tmp/php/www.conf /etc/php/7.0/fpm/pool.d/www.conf

# keys
sudo mkdir -pm 700  /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
sudo cp /tmp/keys/id_rsa /home/vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant /home/vagrant/.ssh/authorized_keys
sudo chmod 600 /home/vagrant/.ssh/authorized_keys