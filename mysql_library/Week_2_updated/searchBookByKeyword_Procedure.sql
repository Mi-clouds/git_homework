use library;

delimiter //
create procedure searchBookByKeyword(
	in title_search varchar (100)
)
begin 
	select book_title_name
	from book_title_table
	where book_title_name like CONCAT('%', title_search, '%');
end//
delimiter ;

call searchBookByKeyword('Potter');

-- drop procedure searchBookByKeyword;