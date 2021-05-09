CREATE DATABASE IF NOT EXISTS userstories DEFAULT CHARSET = utf8;
USE userstories;

CREATE TABLE appusers (
ID int auto_increment primary key,
usertype varchar(100) not null
);

-- select *
-- from appusers;

INSERT INTO appusers (usertype)
VALUES ('Librarian'),
('Volunteer'),
('library user'),
('special needs library user'),
('student user'),
('junior library user');

CREATE TABLE usermotives (
ID_No int auto_increment primary key,
reasons varchar (200) not null
);

INSERT INTO usermotives (reasons)
VALUES ('so that they are able to be easily accessed by people'),
('so that I can see if their loans have been paid'),
('so that the right librarian language support is provided'),
('so that I can monitor their useage and renew books online before overdue fines are issued'),
('so that I can attend an event/class'),
('so that I can borrow some books'),
('so that I can find all books related to that subject or title'),
('so that I can use it in my native language'),
('so that I can see whenever I am close to having a book overdue'),
('so that I can visit the library when it\'s open'),
('so that I can still loan library items even though I am housebound'),
('so that I can take more books out than regular users'),
('so that I can input it and be charged less if I have a book overdue'),
('so that I can read only age-appropriate books'),
('so that I can help at the library and gain skills for my CV');


DROP TABLE IF EXISTS usergoals; 
CREATE TABLE usergoals (
goals varchar (200) not null,
user_ID int not null,
reason_ID int not null,
foreign key (reason_ID) references usermotives (ID_No),
foreign key (user_ID) references appusers (ID)
); 

INSERT INTO usergoals (goals, user_ID, reason_ID)
VALUES ('I want to be able to organise the books', 1, 1),
('I would like to receive a notification about the user status', 1, 2),
('I want to know what language support is required by the user', 1, 3),
('I want to link accounts to my children\'s', 3, 4),
('I want to book a ticket', 3, 5),
('I want to pay an overdue book fine', 3, 6),
('I want to have a membership number', 3, 6),
('I want to type a subject or part of a book title in the search box', 3, 7),
('I want to change the language of the app', 3, 8),
('I want to login to see the status of books I have borrowed', 3, 9),
('I want to check the opening times', 3, 10),
('I want to book the Home Library Service', 4, 11),
('I want to access BSL support', 4, 8),
('I want to be able to input my student status', 5, 12),
('I want a student specific code given to me', 5, 13),
('I want to add my date of birth during registration and have my age calculated', 6, 14),
('I want to inidate my interest in volunteering at the library', 2, 15);

select *
from usermotives

select *
from usergoals

-- DROP TABLE usergoals; 
-- DROP TABLE usermotives;
-- DROP TABLE appusers;