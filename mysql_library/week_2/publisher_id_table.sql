create database if not exists library;
use library;

create table if not exists publisher_id_table(
publisher_id int auto_increment not null primary key,
publisher_name varchar(100) not null
);

insert into publisher_id_table (publisher_name) values ('Addison-Wesley Pub. Co.');
insert into publisher_id_table (publisher_name) values ('Creative Education/Creative Paperbacks');
insert into publisher_id_table (publisher_name) values ('Dafina Books/Kensington Publishing Corp.');
insert into publisher_id_table (publisher_name) values ('Disney/Hyperion Books');
insert into publisher_id_table (publisher_name) values ('Elsevier');
insert into publisher_id_table (publisher_name) values ('Grosset & Dunlap, an imprint of Penguin Group (USA)');
insert into publisher_id_table (publisher_name) values ('Hachette Audio');
insert into publisher_id_table (publisher_name) values ('HarperTeen');
insert into publisher_id_table (publisher_name) values ('Houghton Mifflin');
insert into publisher_id_table (publisher_name) values ('Morgan Kaufmann');
insert into publisher_id_table (publisher_name) values ('Nan A. Talese, Doubleday');
insert into publisher_id_table (publisher_name) values ('National Geographic');
insert into publisher_id_table (publisher_name) values ("O'Reilly Media");
insert into publisher_id_table (publisher_name) values ('Palgrave Macmillan');
insert into publisher_id_table (publisher_name) values ('Plume');
insert into publisher_id_table (publisher_name) values ('Red Alder Books/Down There Press');
insert into publisher_id_table (publisher_name) values ('Scholastic');
insert into publisher_id_table (publisher_name) values ('Simon & Schuster');
insert into publisher_id_table (publisher_name) values ('Simon Spotlight');
insert into publisher_id_table (publisher_name) values ('Sterling');
insert into publisher_id_table (publisher_name) values ('Tor');
insert into publisher_id_table (publisher_name) values ('W.W. Norton & Company');
insert into publisher_id_table (publisher_name) values ('Warner Home Video');
insert into publisher_id_table (publisher_name) values ('Wizards of the Coast');

-- select * from publisher_id_table;
