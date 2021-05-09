use library;

-- The one that works 
DELIMITER //
create procedure renew_age ()
begin
update user_data set age = DATE_FORMAT(curdate(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(curdate(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d'));
END //
DELIMITER ;

call renew_age();

-- FAILED ATTEMPT 
-- DELIMITER //
-- create procedure renew_age ()
-- begin
-- update user_data set age = DATE_FORMAT(curdate(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(curdate(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d'));
-- END //
-- DELIMITER ;

-- FAILED ATTEMPT
-- DELIMITER //
-- create procedure renew_age (library_c_no bigint)
-- begin
-- set @library_no = value (library_c_no);
-- SELECT DATE_FORMAT(curdate(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(curdate(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d')) from user_data where library_card_no = library_no;

-- END //
-- DELIMITER ;

-- call renew_age(844858033);

-- drop procedure renew_age;

-- DELIMITER //
-- create procedure renew_age ()
-- begin
-- set @temp_age = (SELECT DATE_FORMAT(curdate(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(curdate(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d')) from user_data) ;
-- -- SELECT DATE_FORMAT(curdate(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(curdate(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d')) as temporary_age from user_data;

-- update user_data set age = @temp_age
-- where age<> @temp_age;

-- -- update user_data set age = @temp_age
-- -- where age<> @temp_age;

-- END //
-- DELIMITER ;



-- call renew_age();
