use library;

delimiter //
create procedure deleteUser(
	in specific_library_card_number int
    )
begin
DELETE FROM user_data
WHERE library_card_no = specific_library_card_number;
end//
delimiter ;