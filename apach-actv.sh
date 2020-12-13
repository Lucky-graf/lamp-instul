#!/bin/bash

echo Settings Apache
sleep 3
sudo a2ensite site-car	# your_domain.conf
sudo a2dissite 000-default.conf
sudo apache2ctl configtest
sudo systemctl restart apache2
echo Edit config 'for' YOU

sudo mv /home/graf/deploy/lamp-instul/site.conf /etc/apache2/sites-available/site-car.conf 	#копіювати вміст 000df
sleep 10
echo Settings Apache successful!
