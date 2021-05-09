delimiter //
create procedure returnLoan(in library_card_number bigint, ISBN_of_loan_item bigint)
begin
select type_of_user.daily_fine INTO @daily_fine
    from loans_table
	join type_of_user
		on type_of_user.user_type_id = user_data.type_of_library_user_id
        where user_data.library_card_no = library_card_number;
if loans_table.due_date < loans_table.date_returned
 	then
		select date_diff(current_date(), due_date) INTO @days_overdue;
		insert into loans_table (fine_total) values (@day_overdue * @daily_fine);
end if;
update loans_table
set loans_table.date_returned = date();
update book_table 
SET book_table.number_of_copies = book_table.number_of_copies + 1
where book_table.ISBN = ISBN_of_loan_item;
update user_data
set user_data.no_of_books_borrowed = no_of_books_borrowed - 1
where user_data.library_card_no = library_card_number_loan;
commit;
end//
delimiter ;

call returnLoan(13446674, 62484877);

-- drop create procedure returnLoan;



-- drop procedure insertLoan;

-- delimiter //
-- create procedure insertLoan(in library_card_number bigint, ISBN_of_loan_item bigint)
-- begin
-- select type_of_user.loan_days_allowed INTO @loan_days_allowed
--     from user_data
-- 	join type_of_user
-- 		on type_of_user.user_type_id = user_data.type_of_library_user_id
--     where user_data.library_card_no = library_card_number;
-- select type_of_user.loan_days_allowed INTO @loan_days_allowed
--     from book_table
-- 	join type_of_user
-- 		on type_of_user.user_type_id = user_data.type_of_library_user_id;
-- if (book_table.ISBN = ISBN_of_loan_item and book_table.number_of_copies > 0) and user_data.no_of_books_borrowed < type_of_user.loan_item_limit 
-- 	then
-- 		SELECT DATE_ADD(current_date(), INTERVAL @loan_days_allowed DAY) INTO @loan_days_allowed_insert;
-- 		insert into loans_table (ISBN_num, library_card_number, date_issued, due_date) values (ISBN_of_loan_item, library_card_number, current_date(), @loan_days_allowed_insert);
-- end if;
-- UPDATE book_table 
-- SET book_table.number_of_copies = number_of_copies - 1
-- where book_table.ISBN = ISBN_of_loan_item and book_table.number_of_copies > 1; 
-- update user_data
-- set user_data.no_of_books_borrowed = no_of_books_borrowed + 1
-- where user_data.library_card_no = library_card_number_loan and user_data.no_of_books_borrowed > 1;
-- commit;
-- end//
-- delimiter ;

-- call library.insertLoan(13446674, 62484877)