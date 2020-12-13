#!/bin/bash

echo Settings Apache
sleep 3
sudo a2ensite site-car	# your_domain.conf
sudo a2dissite 000-default.conf
sudo apache2ctl configtest
sudo systemctl restart apache2
echo Settings Apache successful!
