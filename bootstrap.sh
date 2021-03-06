#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

# Base utilities
apt-get install -y git
apt-get install -y libpcre3-dev
apt-get install -y curl

# Python-related.
apt-get install -y python-dev
apt-get install -y python-pip
pip install virtualenv
pip install pymongo

# MongoDB install
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get install -y mongodb-10gen

# Node-related
apt-get install -y python-software-properties g++ make
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs