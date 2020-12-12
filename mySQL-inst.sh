#!/bin/bash
echo -Instull MySQL-\n
sleep 5s
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
echo Instull MySQL successful!
