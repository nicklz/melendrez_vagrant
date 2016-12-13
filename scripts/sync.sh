#!/usr/bin/env bash


#mysql
echo "drop database melendrez;" | mysql -uroot
echo "create database melendrez;" | mysql -uroot

mysql -u root -p melendrez --password="" < /home/vagrant/www/docroot/dump.sql
