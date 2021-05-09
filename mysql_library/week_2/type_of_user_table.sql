create database if not exists library;
use library;

create table if not exists type_of_user(
user_type_id int not null primary key,
user_type varchar(30) not null,
daily_fine decimal(3, 2) not null
);

insert into type_of_user (user_type, daily_fine) values ('volunteer', 0.50);
insert into type_of_user (user_type, daily_fine) values ('HE-student', 0.25);
insert into type_of_user (user_type, daily_fine) values ('junior', 0.00);
insert into type_of_user (user_type, daily_fine) values ('staff', 0.15);
insert into type_of_user (user_type, daily_fine) values ('standard', 0.75);
insert into type_of_user (user_type, daily_fine) values ('volunteer', 0.25);
