drop procedure insertNewLoan;

delimiter //
create procedure insertNewLoan(in card_number bigint, in ISBN_of_loan_item bigint)
begin
declare numCopies int;
declare bookLoanLimit int;
declare loanLimit int;
declare userLoanCount int;
declare due int;
declare fine decimal(6,2);


if

card_number in (Select library_card_no from user_data)
then
  
	select loan_item_limit into @loanLimit from type_of_user inner join user_data
	on type_of_user.user_type_id = user_data.type_of_library_user_id
	where library_card_no = card_number;
 
	select count(loan_id) into @userLoanCount from loans_table
     where library_card_number = card_number
      and date_returned is null;
    -- select 
	if @userLoanCount < @loanLimit
	then
			if (ISBN_of_loan_item in (select ISBN from book_table))
			then 
					select number_of_copies into @numCopies from book_table where ISBN = ISBN_of_loan_item;
					select count(loan_id) into @bookLoanLimit from loans_table where date_returned is null and ISBN_num = ISBN_of_loan_item;
         
					if @bookLoanLimit <@numCopies 
					then 
							select loan_days_allowed into @due from type_of_user inner join user_data
							on type_of_user.user_type_id = user_data.type_of_library_user_id
							where library_card_no = card_number;
                            
--                             select daily_fine into @fine from type_of_user inner join user_data
-- 							on type_of_user.user_type_id = user_data.type_of_library_user_id
-- 							where library_card_no = card_number;
                            
--                             if date_returned > date_add(date_issued, INTERVAL @due DAY)
--                             then
--                                  set @fine = @fine * datediff(date_returned,  date_add(date_issued, INTERVAL @due DAY));
-- 							else
--                                   set  @fine = null;
                            end if;
						
						   insert into loans_table
                           ( ISBN_num,library_card_number, date_issued, due_date)
                           values(ISBN_of_loan_item, card_number,date_issued,
                                                         date_add(date_issued, INTERVAL @due DAY));
					else
					Select "Copy not available";
					end if;
         
			else
            Select "ISBN number does not exist";
            end if;
     else
        Select "User Exceeded loan limit";
	 end if;
	


else
    Select "Library Card number does not exist";
end if;

     
     
end//
delimiter ;

call insertNewLoan(226179655, 618968636);