create database if not exists library;
use library;

create table if not exists loans_table(
loan_id int auto_increment  not null primary key, 
ISBN_num bigint not null,
library_card_number bigint not null,
date_issued date not null,
due_date date not null,
fine_total decimal(4, 2) default null,
date_returned date default null,
foreign key (ISBN_num) references book_table (ISBN),
foreign key (library_card_number) references user_data(library_card_no)
);
-- insert into loans_table (ISBN_num,library_card_number, date_issued, due_date, fine_total) values 




-- select * from loans_table;

-- drop table loans_table;