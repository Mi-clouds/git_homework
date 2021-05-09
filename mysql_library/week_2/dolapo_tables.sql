create database library;

use library;

CREATE TABLE user_data (
library_card_no int not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100) not null,
borough varchar(60) not null,
postal varchar(10) not null,
telephone int not null,
date_of_birth date not null,
email varchar(100) not null,
type_of_library_user varchar(50) not null,
no_of_books_borrowed int,
age int not null,
family_id int not null,
disability varchar(50) not null
);

select * from user_data;

create table disability_type (
disability_id int auto_increment not null primary key,
disability varchar(90) not null
);

select * from disability_type;

-- use library;
-- LOAD DATA LOCAL INFILE "‪C:\\SQL_projects\\user_data.csv" INTO TABLE user_data 
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (library_card_no, first_name,last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user, 
-- no_of_books_borrowed, age, family_id, disability);

-- insert into user_data (library_card_no, first_name,last_name, address, borough, postal,
-- telephone, date_of_birth, email, type_of_library_user, no_of_books_borrowed, age,
-- family_id, disability)
-- values 



