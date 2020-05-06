CREATE DATABASE food_store DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

use food_store;


CREATE TABLE banner
(
	id int primary key auto_increment not null,
	image01 varchar(200) not null,
	image02 varchar(200) not null,
	image03 varchar(200) not null,
	image04 varchar(200) not null,
	video_review varchar(250) not null 
);

CREATE TABLE danh_muc
(
	id int primary key auto_increment not null,
	name varchar(100) unique,
	status tinyint DEFAULT '1'
);

CREATE TABLE products
(
	id int primary key auto_increment not null,
	name varchar(100) unique,
	image varchar(200),
	price float not null,
	sale_price float not null DEFAULT '0',
	chef varchar(100),
	review varchar(300) not null,
	cat_id int not null,
	foreign key (cat_id) references danh_muc(id)
);


CREATE TABLE users
(
	id int primary key auto_increment not null,
	name varchar(100) not null,
	email varchar(100) not null unique,
	password varchar(100) not null,
	phone varchar(100) not null unique
);

CREATE TABLE orders
(
	pro_id int not null,
	user_id int not null,
	created_date date DEFAULT now(),
	ngay_den timestamp not null,
	people int DEFAULT '1',
	foreign key (pro_id) references products(id),
	foreign key (user_id) references users(id),
	ghi_chu text
);