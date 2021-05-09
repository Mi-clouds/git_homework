-- drop procedure returnLoanedBook;

delimiter //
create procedure returnLoanedBook (in loanId int,  in return_date date)
begin
declare dateIssue date;
if 
	loanId in (select loan_id from loans_table)
    then
       select date_issued into @dateIssue from loans_table where loan_id = loanId;
       if 
			return_date > @dateIssue
            then
				update loans_table set date_returned = return_date where loan_id = loanId;
		else
			select "Invalid date return. Date Return cannot be less than date issue";
        end if;
else
	select "Invalid Loan ID";
end if;


end//
delimiter ;

call returnLoanedBook(618968636):