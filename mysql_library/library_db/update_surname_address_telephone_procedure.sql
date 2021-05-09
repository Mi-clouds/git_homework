use library;

delimiter //
create procedure update_name_address_telephone()
begin
	call update_surname_procedure;
	call update_address_procedure;
	call update_telephone_procedure;
end//
delimiter ;

call update_name_address_telephone();
drop procedure update_name_address_telephone;
