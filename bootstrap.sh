#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

# Base utilities
apt-get install -y git
apt-get install -y vim.tiny

# Python-related.
apt-get install -y python-pip
pip install virtualenv