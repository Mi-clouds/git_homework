create database if not exists library;
use library;

create table if not exists publishing_year_table(
year_published_id int auto_increment not null primary key,
year_published varchar(30) not null
);

insert into publishing_year_table (year_published ) values ('1937');
insert into publishing_year_table (year_published ) values ('1953');
insert into publishing_year_table (year_published ) values ('1976');
insert into publishing_year_table (year_published ) values ('1991');
insert into publishing_year_table (year_published ) values ('1994');
insert into publishing_year_table (year_published ) values ('1997');
insert into publishing_year_table (year_published ) values ('2003');
insert into publishing_year_table (year_published ) values ('2007');
insert into publishing_year_table (year_published ) values ('2009');
insert into publishing_year_table (year_published ) values ('2010');
insert into publishing_year_table (year_published ) values ('2011');
insert into publishing_year_table (year_published ) values ('2012');
insert into publishing_year_table (year_published ) values ('2014');
insert into publishing_year_table (year_published ) values ('2015');
insert into publishing_year_table (year_published ) values ('2016');
insert into publishing_year_table (year_published ) values ('2017');

















