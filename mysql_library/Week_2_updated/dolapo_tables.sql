create database if not exists library;

use library;

CREATE TABLE user_data (
library_card_no bigint not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100) not null,
borough varchar(60) not null,
postal varchar(10) not null,
telephone int not null,
date_of_birth date not null,
email varchar(100) not null,
type_of_library_user_id int not null,
foreign key (type_of_library_user_id) references type_of_user (user_type_id),
no_of_books_borrowed int not null,
age int not null,
family_id int not null,
disability_ID int default null,
foreign key (disability_ID) references disability_type (disability_id)
);

-- select * from user_data;

create table disability_type (
disability_id int auto_increment not null primary key,
disability varchar(90) default null
);

insert into disability_type (disability)
values ('Acid Attack Survivor'),
('Anxiety'),
('Autism Spectrum Disorder'),
('Cerebral Palsy'),
('Chronic Neurological Condition'),
('Depression'),
('Dwarfism'),
('Hearing Impairment'),
('Hemophilia'),
('Intellectual Disability'),
('Leprosy'),
('Locomotor Disability'),
('Multiple Disabilities'),
('Multiple Sclerosis'),
('Muscular Dystrophy'),
('Other Mental Condition'),
('Other Neurological Condition'),
('Other Physical Condition'),
('Parkinson\'s disease'),
('Sickle Cell Disease'),
('Specific Learning Disability'),
('Speech and Language Disability'),
('Thalassemia'),
('Visual Impairment');


-- select * from disability_type;

-- use library;
-- LOAD DATA LOCAL INFILE "‪C:\\SQL_projects\\user_data.csv" INTO TABLE user_data 
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (library_card_no, first_name,last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user, 
-- no_of_books_borrowed, age, family_id, disability_id);

-- insert into user_data (library_card_no, first_name,last_name, address, borough, postal,
-- telephone, date_of_birth, email, type_of_library_user, no_of_books_borrowed, age,
-- family_id, disability_id)
-- values 



-- drop table user_data;
-- select * from user_data;

