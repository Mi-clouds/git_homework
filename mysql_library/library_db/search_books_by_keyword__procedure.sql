use library;

delimiter //
create procedure searchBookByKeyword(
	in title_search varchar (100)
)
begin 
	select book_table.ISBN, book_title_table.book_title_name as 'Book Title',  author_table.author_last_name as 'Author, surname', author_table.author_first_name as 'Author, first name', resource_type_table.resource_type as 'Resource Type', book_table.number_of_copies as 'Copies available'
from book_author_table
join author_table
on author_table.author_id = book_author_table.author_ID
join book_table
on book_table.ISBN = book_author_table.ISBN_number
join book_title_table
on book_title_table.title_id = book_table.book_title_id
join resource_type_table
on resource_type_table.resource_type_id = book_table.type_of_resource_id
	where book_title_name like CONCAT('%', title_search, '%');
end//
delimiter ;

call searchBookByKeyword('Potter');

-- drop procedure searchBookByKeyword;