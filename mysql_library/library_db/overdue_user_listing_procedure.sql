use library;

delimiter //
create procedure overdue_user_listing()
begin
declare current_fine decimal(6,2);

select concat(first_name, ' ', last_name) as full_name, library_card_no, telephone, email, no_of_books_borrowed, ISBN_num, date_issued, due_date, fine_total, date_returned from user_data inner join loans_table
on user_data. library_card_no = loans_table.library_card_number
inner join type_of_user
on user_data.type_of_library_user_id = type_of_user.user_type_id
where due_date < curdate() and date_returned is null;

-- TRYING TO ADD A FINE CALCULATOR
-- if due_date < curdate() and date_returned is null
-- then
-- 	set @current_fine = @current_fine * datediff(curdate(),  date_add(date_issued, INTERVAL @due DAY));
-- 	update loans_table set fine_total = @current_fine;
-- end if;
end //
delimiter ;


call overdue_user_listing();


