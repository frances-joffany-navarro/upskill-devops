#!/bin/bash

echo Check for update
apt update

echo Git Installation
apt install git-all -y

echo Apache2 Installation
apt install apache2 -y

echo Checking /var/www/restaurant-css-framework file exists...
if [ -d /var/www/restaurant-css-framework ]; then
       	echo Directory exists.
else	
  	echo Clone repository restaurant-css-framework
  	git clone https://github.com/frances-joffany-navarro/restaurant-css-framework.git /var/www/restaurant-css-framework
	echo Done cloning repository
fi

echo Apache2 configuration
FILE_PATH=/etc/apache2/sites-available/000-default.conf
APACHE_DEFAULT_PATH=$(awk '/DocumentRoot/ {print $2}' $FILE_PATH)

APACHE_NEW_DEFAULT_PATH=/var/www/restaurant-css-framework

if [ $APACHE_DEFAULT_PATH = $APACHE_NEW_DEFAULT_PATH ]; then
	echo Path is already updated.
else

	sed -i "s,$APACHE_DEFAULT_PATH,$APACHE_NEW_DEFAULT_PATH," $FILE_PATH 
	#cd /etc/apache2/sites-available
	#a2ensite 000-default.conf
	echo Restart apache2
	service apache2 reload
	systemctl restart apache2.service
	#cd
fi

echo Install PHP and MYSQL
apt install php libapache2-mod-php php-mysql mysql-server

echo MYSQL Configuration and database creation
mysql -u root -p < create_db.sql
echo Restart MYSQL
service mysql restart
