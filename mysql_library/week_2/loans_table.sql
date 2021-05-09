create database if not exists library;
use library;

create table if not exists loans_table(
ISBN_num bigint not null,
library_card_number bigint(9) not null,
date_issued date not null,
due_date date not null,
fine_total decimal(3, 2) default null,
foreign key (ISBN_num) references main_book_table (ISBN),
foreign key (library_card_number) references user_data_table(customer_id)
);
insert into loans_table (ISBN_num,library_card_number, date_issued, due_date, fine_total) values 