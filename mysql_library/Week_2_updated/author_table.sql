create database if not exists library;
use library;

create table if not exists author_table(
author_id int auto_increment not null primary key,
author_first_name varchar(100) not null,
author_last_name  varchar(100) not null,
pseudonym_first_name varchar(100) default null,
pseudonym_last_name varchar(100) default null
);

insert into author_table (author_first_name, author_last_name) values ('Ellie'," O'Ryan");
insert into author_table (author_first_name, author_last_name) values ('David',' Steinberg');
insert into author_table (author_first_name, author_last_name) values ('Steve','Kloves');
insert into author_table (author_first_name, author_last_name) values ('David','Yates');
insert into author_table (author_first_name, author_last_name, pseudonym_first_name, pseudonym_last_name) values ('J. K.',' Rowling', 'Robert', 'Galbraith');
insert into author_table (author_first_name, author_last_name) values ('Jon','Stewart');
insert into author_table (author_first_name, author_last_name) values ('Larry Randall','Wray');
insert into author_table (author_first_name, author_last_name) values ('Kate','Riggs');
insert into author_table (author_first_name, author_last_name) values ('Donald W.','Moffat');
insert into author_table (author_first_name, author_last_name) values ('Andrew','Pyper');
insert into author_table (author_first_name, author_last_name) values ('Rogers Clark','George');
insert into author_table (author_first_name, author_last_name) values ('Ian H.','Witten');
insert into author_table (author_first_name, author_last_name) values ('Dori','Hillestad Butler');
insert into author_table (author_first_name, author_last_name, pseudonym_first_name, pseudonym_last_name) values ('Scott',' Meyers','Douglas','Scott');
insert into author_table (author_first_name, author_last_name) values ('Donald Ervin','Knuth');
insert into author_table (author_first_name, author_last_name) values ('Joseph E.','Stiglitz');
insert into author_table (author_first_name, author_last_name) values ('Rick','Riordan');
insert into author_table (author_first_name, author_last_name) values ('Kayla','Olson');
insert into author_table (author_first_name, author_last_name) values ('Niobia','Bryant');
insert into author_table (author_first_name, author_last_name) values ('Hastings','Michael');
insert into author_table (author_first_name, author_last_name) values ('Cathy L.','Clamp');
insert into author_table (author_first_name, author_last_name) values ('Margaret','Atwood');
insert into author_table (author_first_name, author_last_name) values ('Clifford A.','Pickover');
insert into author_table (author_first_name, author_last_name) values ('R. A.','Salvatore');
insert into author_table (author_first_name, author_last_name) values ('John Ronald Reuel','Tolkien');
	
			
			
			
