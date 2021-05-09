use library;

delimiter //
create procedure updateAddress(user_library_card_no bigint, new_address varchar(50), new_borough varchar(50), new_postal varchar(50) )
begin 
update user_data
set user_data.address = new_address, user_data.borough = new_borough, user_data.postal = new_postal
where library_card_no = user_library_card_no;
end//
delimiter ;
-- drop procedure updateAddress; 

call updateAddress(152129295, '100 Grand Parade', 'Buckingshire', 'BS10 7AT'); 