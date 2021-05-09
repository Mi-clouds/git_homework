create database if not exists library;
use library;

create table if not exists type_of_user(
user_type_id int auto_increment not null primary key,
user_type varchar(30) not null,
daily_fine decimal(3, 2) not null,
loan_days_allowed int not null,
loan_item_limit int not null
);

insert into type_of_user (user_type, daily_fine, loan_days_allowed, loan_item_limit) values ('volunteer', 0.50, 45, 10);
insert into type_of_user (user_type, daily_fine, loan_days_allowed, loan_item_limit) values ('HE-student', 0.25, 45, 12);
insert into type_of_user (user_type, daily_fine, loan_days_allowed, loan_item_limit) values ('junior', 0.00, 30, 8);
insert into type_of_user (user_type, daily_fine, loan_days_allowed, loan_item_limit) values ('staff', 0.15, 45, 15);
insert into type_of_user (user_type, daily_fine, loan_days_allowed, loan_item_limit) values ('standard', 0.75, 30, 8);
insert into type_of_user (user_type, daily_fine, loan_days_allowed, loan_item_limit) values ('disability', 0.15, 45, 8);

-- select * from type_of_user;

create table disability_type (
disability_id int auto_increment not null primary key,
disability varchar(90) default null
);

insert into disability_type (disability)
values ('Acid Attack Survivor'),
('Anxiety'),
('Autism Spectrum Disorder'),
('Cerebral Palsy'),
('Chronic Neurological Condition'),
('Depression'),
('Dwarfism'),
('Hearing Impairment'),
('Hemophilia'),
('Intellectual Disability'),
('Leprosy'),
('Locomotor Disability'),
('Multiple Disabilities'),
('Multiple Sclerosis'),
('Muscular Dystrophy'),
('Other Mental Condition'),
('Other Neurological Condition'),
('Other Physical Condition'),
('Parkinson\'s disease'),
('Sickle Cell Disease'),
('Specific Learning Disability'),
('Speech and Language Disability'),
('Thalassemia'),
('Visual Impairment');

-- select * from disability_type;

CREATE TABLE user_data (
library_card_no bigint not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100) not null,
borough varchar(60) not null,
postal varchar(15) not null,
telephone bigint not null,
date_of_birth date not null,
email varchar(100) not null,
type_of_library_user_id int not null,
foreign key (type_of_library_user_id) references type_of_user (user_type_id),
no_of_books_borrowed int not null,
age int not null,
family_id int not null,
disability_ID int default null,
foreign key (disability_ID) references disability_type (disability_id)
);

insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (937562048, 'Aleshia', 'Tomkiewicz','41 Benedict St', 'Aldborough', 'IG2 7QG', 01835703597,	'1963-01-18', 'atomkiewicz@hotmail.com',	1,	1,	58,	1);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (226179655, 'Evan', 'Zigomalas', '96 King St', 'Hammersmith', 'W6 0QW', 01937864715, '2014-05-31', 'evan.zigomalas@gmail.com',	3,	1,	6,	2);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (658975511, 'France',	'Andrade', '61 Miriam St','Abbey Road',	'NW8 9BD', 01347368222, '2001-02-22', 'france.andrade@hotmail.com',	2,	8,	20,	3);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (609073282, 'Ulysses', 'Mcwalters', '5382 Redfern St', 'West End', 'W1J 0QH', 01912771311, '1941-07-01',	'ulysses@hotmail.com',	4,	0,	79,	4,	15);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (144521065, 'Tyisha',	'Veness', '7901 Beech St', 'St. Helier', 'SM4 5PY',	01547429341, '2001-12-01', 'tyisha.veness@hotmail.com', 2,	3,	19,	5);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (323795012, 'Eric', 'Rampy', '684 Cotswold St', 'Victoria',	'E9 7NG',	01969886290, '1975-01-06', 'erampy@rampy.co.uk',	5,	5,	46,	6);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (850601774, 'Marg', 'Grasmick', '231 Wordsworth St', 'Harrow Weald', 'HA3 6TH',	01865582516, '1969-09-07', 'marg@hotmail.com',	1,	3,	51,	7);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (908505381, 'Laquita', 'Hisaw', '76 Paulton St', 'Lancaster Gate', 'W2 3JT', 0174394243, '2005-09-15', 'laquita@yahoo.com',	1,	0,	15,	8);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (116380431, 'Lura', 'Manzella', '5 Bentinck St', 'Churchill', 'SW1V 3EW',	01907538509, '1956-09-18', 'lura@hotmail.com',	4,	1,	64,	9);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (430709311, 'Yuette', 'Klapec', '7 Canton St', 'Mildmay', 'N1 4RF', 01903649460, '1986-02-15', 'yuette.klapec@klapec.co.uk',	5,	4,	35,	10);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (563222737, 'Fernanda', 'Writer', '91 Ludlow St',	'Woodhouse', 'N12 0EF',	01630202053, '1991-01-26', 'fernanda@writer.co.uk',	5,	2,	30,	11,	24);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (380200977,'Charlesetta', 'Erm', '2476 Marsh St',	'Markhouse', 'E17 8NP',	01276816806, '1997-07-12', 'charlesetta_erm@gmail.com', 2,	2,	23,	12);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (635942168, 'Corrinne', 'Jaret', '1 Jervis St', 'High Barnet', 'EN5 4LH', 01625932209, '1980-10-01', 'corrinne_jaret@gmail.com',	4,	9,	40,	13);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (720350341, 'Niesha', 'Bruch', '2015 Suburban Rd', 'Springfield', 'N16 6TD', 01874856950, '2005-04-15', 'niesha.bruch@yahoo.com', 3, 2,	15,	14);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (570119135, 'Rueben',	'Gastellum', '9283 Ruth St', 'Dormers Wells', 'UB1 2FH', 01976755279, '1997-05-24', 'rueben_gastellum@gastellum.co.uk', 2, 7, 23, 15, 17);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (854598297, 'Michell', 'Throssell', '62 Margaret St', 'Royal Hospital','SW3 4ND', 01967580851, '1980-01-21', 'mthrossell@throssell.co.uk', 5, 1, 41, 16, 6);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (407514073, 'Edgar', 'Kanne',	'457 Broadway',	'Enfield',	'N21 6RE',	01326532337, '1970-06-16', 'edgar.kanne@yahoo.com', 5, 2, 50, 17);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (922508505, 'Dewitt',	'Throssell', '62 Margaret St',	'Royal Hospital', 'SW3 4ND', 01253528327, '2011-05-09', 'dewitt.julio@hotmail.com', 3,	1,	9,	16);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (431735908, 'Charisse', 'Spinello', '76 Dawber St', 'Blackheath Westcombe', 'SE3 7JY', 01719831436, '1968-12-31', 'charisse_spinello@spinello.co.uk',	4, 5, 52, 18);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (445122059, 'Mee', 'Lapinski', '52 Trowbridge St', 'Knightsbridge and Belgravia',	'SW1X 9HB',	01578287816, '2015-03-19', 'mee.lapinski@yahoo.com', 3, 3, 6, 19);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (546066240, 'Peter', 'Gutierres', '3347 Lawrence Rd', 'Haverstock', 'NW5 4EU', 01842767201, '2003-02-05', 'peter_gutierres@yahoo.com', 1,	0, 18, 20, 2);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (713336435, 'Octavio', 'Salvadore', '2 Kirkdale Rd', 'Canning Town North', 'E16 4NF', 01552709248, '1994-09-21', 'octavio.salvadore@yahoo.com', 5,	0, 26, 21);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (152129295, 'Martha',	'Teplica', '588 Venmore St', 'Twickenham Riverside', 'TW1 2QH',	01677684257, '2004-09-29', 'mteplica@teplica.co.uk',	2,	2,	16,	22);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (257605088, 'Tamesha', 'Veigel', '5588 Lake St', 'Crystal Palace', 'SE19 2TJ', 01217342071, '2005-07-19', 'tveigel@veigel.co.uk',	3,	1,	15,	23);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (431520322, 'Tess', 'Sitra', '5 Gainsborough Rd', 'Newington',	'SE1 6EH', 01473229124, '1974-09-01', 'tess_sitra@hotmail.com',	5,	0,	46,	24);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (199948820, 'Leonard', 'Kufner', '9960 Gilroy Rd',	'Woodhouse',	'N12 9JT',	01230623547, '2000-10-20', 'lkufner@kufner.co.uk',	2,	1,	20,	25);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (356575562, 'Svetlana', 'Tauras',	'90 Victoria Road',	'Kilburn',	'E37 4BP',	01781827317, '1966-02-07',	'svetlana_tauras@tauras.co.uk', 5,	1,	54,	26);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (749398180, 'Reed', 'Throssell', '62 Margaret St', 'Royal Hospital', 'SW3 4ND', 01866248660, '2009-10-19',	'pok@yahoo.com', 3,	1,	11,	16);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (230359880, 'Augustine', 'Growcock',	'9166 Devon St', 'Knightsbridge and Belgravia',	'SW1W 8JY',	01541802635, '1970-05-16', 'augustine.growcock@growcock.co.uk', 5,	3,	50,	27);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values(659756688, 'Karma', 'Quarto', '5344 Bengel St', 'Millwall',	'E14 5DR', 01857864722, '1976-12-10', 'kquarto@gmail.com', 5, 4,	44,	28);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (777113513, 'Reed', 'Weisinger', '9923 Dinorben St', 'Childs Hill', 'NW11 8DY', 01243678286, '1996-04-06',	'reed_weisinger@yahoo.com',	2,	14,	24,	29,	16);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (646742114, 'German',	'Zelaya', '7643 Campbell St', 'Penge and Cator', 'BR3 1LT', 01400269033, '2009-08-08', 'german@hotmail.com',	3, 0, 11, 30);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (543510486, 'Milly', 'Savidge', '1779 Bird St', 'East Sheen', 'SW14 8JZ',	01702725589, '2006-04-10', 'milly@gmail.com', 1,	6, 14,	31);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (120021053, 'Luis', 'Ear', '7 Netley St',	'Custom House', 'E16 3DP',	01462648669, '2000-08-01', 'luis@hotmail.com', 4, 5,	20,	32);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (412253428, 'Ciara', 'Cobbley', '2 Prince Rupert St', 'West Wickham', 'BR3 6SX', 01235647932, '1996-09-11',	'ciara_cobbley@hotmail.com', 2,	5,	24,	33);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (859296344, 'Alethea', 'Quarto', '5344 Bengel St', 'Millwall', 'E14 5DR',	01662114247, '2008-04-20', 'alethea@hotmail.com', 3, 5, 12, 28);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (621218237, 'Margurite', 'Loperfido', '6452 Pilgrim St', 'Seven Sisters', 'N15 6TH', 01407866759, '2013-03-20', 'mloperfido@gmail.com', 3, 2,	8, 34, 3);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (846230934, 'Vernice', 'Sperazza', '70 Lilly Rd', 'Shirley', 'CR0 7PT', 01822563044, '1973-10-08', 'vernice@yahoo.com', 5, 1, 47, 35);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (13446674, 'Vicente', 'Rawicki', '5344 Bengel St', 'Millwall', 'E14 5DR', 01327770774, '1940-04-10', 'vicente_rawicki@hotmail.com', 5, 4, 80,	36,	8);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (562174892, 'Craig', 'Cua', '8388 Bessemer St', 'East Putney', 'SW15 2RP', 01483418969, '1990-01-05', 'craig@hotmail.com', 2, 10, 31, 37);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (758413703, 'Jenise',	'Dulle', '5382 Redfern St',	'West End',	'W1J 0QH',	01709854691, '1998-11-05', 'jenise.dulle@hotmail.com',	4,	2,	22,	38,	18);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (621063063, 'Marylin', 'Cornelison', '45 Bidder St', 'Enfiled', 'EN1 3HT', 01609882184, '1943-12-19', 'marylin_cornelison@yahoo.com',	5,	1,	77,	39);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (391022834, 'Marget',	'Gunst', '227 Albert Terrace',	'Belvedere', 'DA17 6EF', 01693310794, '2007-01-02', 'mgunst@yahoo.com',	1,	1,	14,	40);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (298663973, 'Annett',	'Bunselmeyer',	'464 Back Nile St', 'Acton Central', 'W3 6QJ', 01891702579, '2002-03-08', 'abunselmeyer@hotmail.com',	2,	1,	19,	41);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (925968467, 'Kip', 'Turziano', '4 Northbrook St', 'Edmonton Green',	'N18 2NF', 01850347846, '2000-10-19', 'kip.turziano@yahoo.com',	2,	3,	20,	42);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id, disability_ID) values (844858033, 'Melina',	'Orizabal',	'11 Tetlow St',	'Parsons Green and Walham',	'SW6 4QP', 01420307327, '2007-01-19', 'melina@gmail.com', 3,	5,	14,	43,	22);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (385399409, 'Tina', 'Clapham', '6301 Dorset Rd', 'Harefield', 'UB9 6LF', 01567296442, '1981-06-08', 'tclapham@gmail.com',	5,	5,	39,	44);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (206614889, 'Luisa', 'Devereux', '22 Kilshaw St',	'Wimbledon Park', 'SW19 7DT', 01607269930,	'1958-09-03',	'ldevereux@gmail.com',	5,	4,	62,	45);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (980407596, 'Pedro', 'Aschoff', '62 Euston St', 'Bunhill', 'EC1Y 8RT', '01386981141', '2001-06-27', 'paschoff@yahoo.com',	2,	2,	19,	46);
insert into user_data (library_card_no, first_name, last_name, address, borough, postal, telephone, date_of_birth, email, type_of_library_user_id, no_of_books_borrowed, age, family_id) values (818337485, 'Carrol',	'Kunimitsu', '67 Micawber St', 'Brockley', 'SE14 6RQ', '01260641258', '1994-08-26' ,'carrol_kunimitsu@yahoo.com', 5,	3,	26,	47);

-- select * from user_data;
-- update user_data set no_of_books_borrowed = 1 where library_card_no = 908505381;

-- if tables need updating they can be dopped in the following order
drop table loans_table;
drop table user_data;
drop table disability_type;
drop table type_of_user;


