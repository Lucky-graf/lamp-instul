#!/bin/bash

sudo mysql<<EOF
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'BOGdan16092001';
FLUSH PRIVILEGES;
SELECT user,authentication_string,plugin,host FROM mysql.user;
EOF
mysql -u root -p root<<EOF
CREATE USER 'graf'@'localhost' IDENTIFIED BY 'BOGdan16092001';
GRANT ALL PRIVILEGES ON *.* TO 'graf'@'localhost' WITH GRANT OPTION;
EOF
systemctl status mysql.service
sudo mysqladmin -proot -u root version
echo 'MySQL working'

