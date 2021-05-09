-- run line 2 first to make a new user within the MySQL shell

create user 'volunteer'@'localhost' identified by 'secretpassword';

grant select on library.book_table to 'volunteer'@'localhost';

-- go to home/welcome page for mySQL workbench, click the + icon next mySQL connections 
-- enter volunteer in username anad connection name and click ok
-- tap on the new connection and enter secretpassword 

-- volunteer should now only be able to paste this code into a new query and run it
-- use library;
-- select * from book_table;




