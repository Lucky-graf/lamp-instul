#!/bin/bash
echo Settings Your acounte 'in' MySQL
sleep 5s
sudo mysql<<EOF
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'BOGdan16092001';
FLUSH PRIVILEGES;
SELECT user,authentication_string,plugin,host FROM mysql.user;
EOF
mysql -u root -p root<<EOF
CREATE USER 'graf'@'localhost' IDENTIFIED BY 'Graf1234';
GRANT ALL PRIVILEGES ON *.* TO 'graf'@'localhost' WITH GRANT OPTION;
EOF
systemctl status mysql.service
sudo mysqladmin -p root -u root version
echo 'MySQL working'
echo User: 'graf@localhost' \n Pasword: 'Graf1234'
sleep 5s
