use library;
drop view Library_Members;
create view Library_Members

as select  user_data.library_card_no as 'Library card', user_data.last_name as 'Surname', user_data.first_name as 'First name', user_data.email, type_of_user.user_type as 'Status', loans_table.fine_total as 'Fines due'
from type_of_user
left join user_data
on user_data.type_of_library_user_id = type_of_user.user_type_id
left join loans_table
on user_data.library_card_no = loans_table.library_card_number
order by user_data.last_name;

-- can add where statement to filter results


-- to call the view 
select * from Library_Members;