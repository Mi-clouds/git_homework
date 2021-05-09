create database if not exists library;
use library;

create table if not exists resource_type_table(
resource_type_id int(2) auto_increment not null primary key,
resource_type varchar(100) not null
);

insert into resource_type_table (resource_type) values ('Paperback Book');
insert into resource_type_table (resource_type) values ('Video recordings for the hearing impaired');
insert into resource_type_table (resource_type) values ('Audiobook');
insert into resource_type_table (resource_type) values ('Large print');
insert into resource_type_table (resource_type) values ('Textbook');
insert into resource_type_table (resource_type) values ('Hardback book');
insert into resource_type_table (resource_type) values ('Textbook');
insert into resource_type_table (resource_type) values ('Braille Book for visually impaired');
insert into resource_type_table (resource_type) values ('eBook');

select * from resource_type_table;
