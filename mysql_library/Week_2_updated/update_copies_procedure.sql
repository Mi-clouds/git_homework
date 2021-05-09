drop procedure updateCopiesLoan;

delimiter //
create procedure updateCopiesLoan(in library_card_number_loan bigint, ISBN_of_loan_item bigint
)
begin
UPDATE book_table 
SET book_table.number_of_copies = number_of_copies - 1
where book_table.ISBN = ISBN_of_loan_item and book_table.number_of_copies > 0; 
update user_data
set user_data.no_of_books_borrowed = no_of_books_borrowed + 1
where user_data.library_card_no = library_card_number_loan;
commit;
end//
delimiter ;

call updateCopiesLoan(13446674, 123748569);

-- drop create procedure updateCopiesLoan;


-- use library;

-- delimiter //
-- create procedure updateCopiesLoan(in library_card_number_loan bigint, ISBN_of_loan_item bigint
-- )
-- begin
-- UPDATE book_table 
-- 	SET book_table.number_of_copies = number_of_copies - 1
-- 	where book_table.ISBN = ISBN_of_loan_item and book_table.number_of_copies > 1; 
-- update user_data
-- 	set user_data.no_of_books_borrowed = no_of_books_borrowed + 1
-- 	where user_data.library_card_no = library_card_number_loan and user_data.no_of_books_borrowed > 1;
-- commit;
-- end//
-- delimiter ;

-- -- call create procedure updateCopiesLoan();

-- -- drop create procedure updateCopiesLoan;