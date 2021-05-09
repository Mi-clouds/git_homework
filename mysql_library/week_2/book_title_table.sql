create database library DEFAULT CHARSET = utf8;

use library;

CREATE TABLE book_title_table (
book_title_name varchar (200) not null,
title_id int auto_increment primary key
);

INSERT INTO book_title_table (book_title_name)
VALUES ('A tale of two friends'),
('Erotic by nature : a celebration of life, of love, and of our wonderful bodies'),
('Harry Potter and the deathly hallows. Part 2'),
('Harry Potter and the Order of the Phoenix'),
('Earth : a visitor\'s guide to the human race'),
('Modern money theory : a primer on macroeconomics for sovereign monetary systems'),
('Pandas'),
('Economics dictionary'),
('The only child'),
('National Historic Park Indiana'),
('Data mining : practical machine learning tools and techniques'),
('The ghost in the attic'),
('Effective modern C++ : 42 specific ways to improve your use of C++11 and C++14'),
('The art of computer programming. Vol. 1, Fundamentals algorithms'),
('The euro : how a common currency threatens the future of Europe'),
('Percy Jackson & the Olympians. Book one, The lightning thief'),
('The Sandcastle Empire / Kayla Olson'),
('The Pleasure trap'),
('The operators : the wild and terrifying inside story of America\'s war in Afghanistan'),
('Forbidden'),
('Good bones and simple murders / Margaret Atwood'),
('The physics devotional : celebrating the wisdom and beauty of physics / Clifford A. Pickover'),
('The spine of the world'),
('The hobbit, or, There and back again');

-- select *
-- from book_title_table;