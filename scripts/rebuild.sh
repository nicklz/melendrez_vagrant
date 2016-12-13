#!/usr/bin/env bash

#mysql
echo "drop database melendrez;" | mysql -uroot
echo "create database melendrez;" | mysql -uroot

mysql -u root -p melendrez --password="" < /home/vagrant/www/docroot/dump.sql

cd ~/www/docroot/sites/local.melendrez.com && drush en melendrez_updates node_export_features_ui context_ui -y && drush updb -y &&  drush upwd --password='password' admin
