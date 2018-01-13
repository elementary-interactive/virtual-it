#!/bin/bash -eux

# Create folders
sudo mkdir -p  /home/vagrant/conf 
sudo mkdir -p  /home/vagrant/log

# 5tJnGy7x
# cVRWaqVr
# kfLaYcL3
# s8ept6mb
# MAsNeBYS

# Add Git
sudo apt-get -y install git git-flow
sudo apt-get install zip

# Add MySQL
echo 'mysql-server-5.7 mysql-server/root_password password 5tJnGy7x' | sudo debconf-set-selections 
echo 'mysql-server-5.7 mysql-server/root_password_again password 5tJnGy7x' | sudo debconf-set-selections
sudo apt-get -y install mysql-server-5.7
sudo mkdir -p /home/vagrant/conf/mysql
sudo mkdir -p /home/vagrant/log/mysql

# Add memcached
sudo apt-get -y install memcached

# Add nginx
sudo apt-get -y install nginx
sudo ufw allow 'Nginx Full'
sudo mkdir -p /home/vagrant/conf/nginx
sudo mkdir -p /home/vagrant/log/nginx
sudo usermod -a -G www-data vagrant

# Add PHP fastCGI process manager
sudo apt-get -y install php-fpm php-mysqli php-gd php-curl php-memcached php-mbstring php-xml php-xdebug php-apcu php-zip

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mkdir -p /usr/local/bin/
sudo mv composer.phar /usr/local/bin/composer

# Node
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs