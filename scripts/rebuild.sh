#!/usr/bin/env bash

#mysql
echo "drop database melendrez;" | mysql -uroot
echo "create database melendrez;" | mysql -uroot

mysql -u root -p melendrez --password="" < /home/vagrant/www/dump.sql

cd ~/www/docroot/sites/local.melendrez.com && rush -u 1 sql-query "INSERT INTO users (name, pass, mail, theme, signature, language, init, timezone) VALUES ('', '', '', '', '', '', '', '')" && drush -u 1 sql-query "UPDATE users SET uid = 0 WHERE name = ''" &&  drush dis overlay -y && drush cc all 


cd ~/www/docroot/sites/local.melendrez.com && drush en melendrez_updates  -y && drush fra -y &&  drush cc all
