#!/bin/bash
echo Now Apache instull
sleep 5
sudo apt update
sudo apt install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo systemctl status apache2
sudo mkdir /var/www/site-car  #your_domainsudo chown -R graf:graf /var/www/site.got #your_domain
sudo chmod -R 755 /var/www/site-car  #your_domain
echo Apache instull successful!
