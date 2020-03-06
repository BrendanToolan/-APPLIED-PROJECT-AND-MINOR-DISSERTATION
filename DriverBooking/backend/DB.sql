  
Drop database if exists bigproject;
create database bigproject CHARACTER SET utf8 COLLATE UTF8_GENERAL_CI ;
use bigproject
show tables;
Drop table if exists location;
Drop table if exists instructor;
Drop table if exists booking;

Use bigproject;

create table location (
	Lid int(10),
	name varchar(10),
    NumOfDrivers int(10),
	picture_path varchar(20) DEFAULT NULL
	)Engine=InnoDB;

INSERT INTO location (Lid, name, NumOfDrivers, picture_path) VALUES
	(101, 'Gort', 3, 'assets/1.jpg'),

	(102, 'Loughrea', 7, 'assets/2.jpg'),

    (103, 'Athenry', 3, 'assets/3.jpg'),
    
    (104, 'Tuam', 4, 'assets/4.jpg'),

	(105, 'Oranmore', 6, 'assets/5.jpg'),

	(106, 'Ballinsloe', 2, 'assets/6.jpg');

	create table instructor (
	Lid int(10),
	name varchar(10),
	lastName varchar(15),
	Phonenumber int(10),
	Email varchar(25),
	picture_path varchar(30) DEFAULT NULL
	)Engine=InnoDB;

	INSERT INTO instructor (Lid, name, lastName, Phonenumber, Email, picture_path) VALUES
	(101, 'John', 'Smith', 087215413, 'JohnSmith@gmail.com','assets/inst1.jpg'),
	(101, 'Roger', 'Murray', 08745785, 'RogerMurray@gmail.com','assets/inst2.jpg'),
	(101, 'Mark', 'Rice', 087246577, 'MarkRice@gmail.com','assets/inst3.jpg'),
	(101, 'Dennis', 'Burke', 087215413, 'DennisBurke@gmail.com','assets/inst4.jpg'),
	(102, 'Dan', 'Hynes', 085213413, 'DanHynes@gmail.com','assets/inst5.jpg'),
	(102, 'Conor', 'Lynch', 083215490, 'ConorLynch@gmail.com','assets/inst6.jpg'),
	(102, 'Gavan', 'Moran', 086215780, 'GavanMoran@gmail.com','assets/inst7.jpg'),
	(102, 'Cillian', 'Duffy', 087226713, 'CillianDuffy@gmail.com','assets/inst8.jpg'),
	(102, 'Sandra', 'Butler', 087260173, 'SandraButler@gmail.com','assets/inst9.jpg'),
	(103, 'Mary', 'Walsh', 087260173, 'MaryWalsh@gmail.com','assets/inst10.jpg'),
	(103, 'Robert', 'Massey', 087260173, 'RobertMassey@gmail.com','assets/inst11.jpg'),
	(103, 'Jake', 'Chaill', 087281904, 'JakeChaill@gmail.com','assets/inst12.jpg'),
	(103, 'Ryan', 'Smith', 087210694, 'RyanSmith@gmail.com','assets/inst13.jpg'),
	(104, 'Ciara', 'Egan', 087413196, 'CiaraEgan@gmail.com','assets/inst14.jpg'),
	(104, 'Jake', 'Lyons', 086907862, 'JakeLyons@gmail.com','assets/inst15.jpg'),
	(104, 'Rebecca', 'Kelly', 087379012, 'RebeccaKelly@gmail.com','assets/inst16.jpg'),
	(104, 'Katie', 'Smith', 085793490, 'KatieSmith@gmail.com','assets/inst17.jpg'),
	(105, 'Shauna', 'Ryan', 087898900, 'ShaunaRyan@gmail.com','assets/inst18.jpg'),
	(105, 'Molly', 'Downes', 087453321, 'MollyDownes@gmail.com','assets/inst19.jpg'),
	(105, 'Declan', 'Fahy', 087897762, 'DeclanFahy@gmail.com','assets/inst20.jpg'),
	(106, 'Mike', 'Casey', 087432298, 'MikeCasey@gmail.com','assets/inst21.jpg'),
	(106, 'John', 'Rogers', 087006726, 'JohnRogers@gmail.com','assets/inst22.jpg'),
	(106, 'Aaron', 'Evans', 08703486, 'AaronEvans@gmail.com','assets/inst23.jpg'),
	(106, 'Brad', 'White', 0870154467, 'BradWhite@gmail.com','assets/inst24.jpg');


	create table booking (
	Lid int(10),
	title varchar(15),
	StartTime DATETIME,
	EndTime DATETIME,
	IsAllDay BOOLEAN
	)Engine=InnoDB;

	create table users(
		Lid int(10), 
		name varchar(10), 
		surname varchar(20), 
		email varchar(25), 
		address varchar(30), 
		phoneNum int(10), 
		password varchar(15) 
		)Engine=InnoDB;

	show warnings;