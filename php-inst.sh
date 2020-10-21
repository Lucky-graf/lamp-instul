#!/bin/bash

sudo apt install php libapache2-mod-php
sudo systemctl restart apache2
sudo apt install php-fpm
systemctl status php7.2-fpm
echo '<?php phpinfo();'>/var/www/site1/info.php
sudo systemctl restart apache2

