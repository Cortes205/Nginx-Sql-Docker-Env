#!/bin/bash

# Script that always runs on docker container startup
#   - Sets up important services and keeps permissions in check
#
# @author   Alan Cortes
# @version  1.0.0
#

echo Running php-fpm service...
# We need fpm so that nginx can properly read our php files
service php8.4-fpm start
echo php-fpm started!

echo Chowning phpMyAdmin...
# Our config files for phpMyAdmin need to be readable for the server
cd /etc/phpmyadmin
chown -R root:www-data .
echo phpMyAdmin chowned!

echo Chowning vhosts...
# Our vhosts also need to be readable for the server
cd /home/admin/web
chown -R root:www-data .
echo vhosts chowned!
