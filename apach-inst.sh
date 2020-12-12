#!/bin/bash

sudo apt update
sudo apt install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo systemctl status apache2
sudo mkdir /var/www/mysite  #your_domainsudo chown -R graf:graf /var/www/site.got #your_domain
sudo chmod -R 755 /var/www/mysite  #your_domain
