CREATE DATABASE news DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

use news;

CREATE TABLE new
(
	id int primary key auto_increment,
	name varchar(100) unique not null,
	image1 varchar(100) not null,
	created_date timestamp DEFAULT 'current_timestamp()'
);

CREATE TABLE new_detail
(	
	id_new int,
	blog1 text not null,
	blog2 text not null,
	blog3 text not null,
	image1 varchar(200) not null,
	image2 varchar(200) not null,
	image3 varchar(200) not null
);