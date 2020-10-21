#!/bin/bash

sudo mkdir /var/www/site1 
sudo nano /var/www/site1/index.html	#макет html
sudo nano /etc/apache2/sites-available/site1.conf 	#копіювати вміст 000df
#<VirtualHost *:80>
#ServerName www.example.com
#ServerAdmin webmaster@localhost
#DocumentRoot /var/www/html
#ErrorLog ${APACHE_LOG_DIR}/error.log
#CustomLog ${APACHE_LOG_DIR}/access.log combined
#</VirtualHost>

