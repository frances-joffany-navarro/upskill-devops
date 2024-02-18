DROP DATABASE If EXISTS restaurant_dbase;
CREATE DATABASE restaurant_dbase;
USE restaurant_dbase;

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
      	`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
      	`firstname` varchar(255) NOT NULL,
      	`lastname` varchar(255) NOT NULL,
      	`email` varchar(255) NOT NULL,
      	`subject` varchar(255) NOT NULL,
      	`message` varchar(255) NOT NULL,
      	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
      	`id` int(11) NOT NULL AUTO_INCREMENT,
      	`image_name` varchar(255) NOT NULL,
      	`image_directory` varchar(255) NOT NULL,
      	`timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
      	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
      	`user_id` int(11) NOT NULL AUTO_INCREMENT,
      	`username` varchar(255) NOT NULL,
      	`password` varchar(255) NOT NULL,
      	`email` varchar(255) NOT NULL,
      	PRIMARY KEY (`user_id`),
      	UNIQUE KEY `username` (`username`)
);

USE mysql;
UPDATE user SET plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;
exit
