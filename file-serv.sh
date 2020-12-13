#!/bin/bash
echo Edit config 'for' YOU
sleep 5
sudo mv /home/graf/deploy/lamp-instul/site.conf /etc/apache2/sites-available/site-car.conf 	#копіювати вміст 000df
#<VirtualHost *:80>
#ServerName www.site-car.com
#ServerAdmin webmaster@localhost
#DocumentRoot /var/www/site-car
#ErrorLog ${APACHE_LOG_DIR}/error.log
#CustomLog ${APACHE_LOG_DIR}/access.log combined
#</VirtualHost>

