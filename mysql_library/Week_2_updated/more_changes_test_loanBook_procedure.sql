drop procedure insertLoan;

delimiter //
create procedure insertLoan(in library_card_number bigint, ISBN_of_loan_item bigint)
begin
select type_of_user.loan_days_allowed, user_data.no_of_books_borrowed, type_of_user.loan_item_limit INTO @loan_days_allowed, @no_of_books_borrowed, @loan_item_limit
    from user_data
	join type_of_user
		on type_of_user.user_type_id = user_data.type_of_library_user_id
	where user_data.library_card_no = library_card_number;
    
select number_of_copies into @number_of_copies from book_table where book_table.ISBN=ISBN_of_loan_item;

if  (@number_of_copies > 0 and @no_of_books_borrowed < @loan_item_limit)
	then  
		-- select type_of_user.loan_days_allowed INTO @loan_days_allowed;
		SELECT DATE_ADD(current_date(), INTERVAL @loan_days_allowed DAY) INTO @loan_days_allowed_insert;
		insert into loans_table (ISBN_num, library_card_number, date_issued, due_date) values (ISBN_of_loan_item, library_card_number, current_date(), @loan_days_allowed_insert);
end if;
-- UPDATE book_table 
-- SET book_table.number_of_copies = number_of_copies - 1
-- where book_table.ISBN = ISBN_of_loan_item and book_table.number_of_copies > 0; 
-- update user_data
-- set user_data.no_of_books_borrowed = no_of_books_borrowed + 1
-- where user_data.library_card_no = library_card_number;
-- commit;
end//
delimiter ;

call library.insertLoan(543510486, 439358061)

-- call create procedure insertLoan();
(user_data.library_card_no = library_card_number_loan and user_data.no_of_books_borrowed > 1) and (book_table.ISBN = ISBN_of_loan_item and book_table.number_of_copies >= 1)
-- insert into loans_table (ISBN_num, library_card_number, date_issued, due_date) values (ISBN_of_loan_item, library_card_number_loan, current_date(), (current_date() + type_of_user.loan_days_allowed));