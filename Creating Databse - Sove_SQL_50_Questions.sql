

/*

Creating Databse - SQL_Assignment_B

*/

CREATE DATABASE SQL_Assignment_B;
USE SQL_Assignment_B;


CREATE TABLE Worker (
	WORKER_ID INT NOT NULL identity(1,1),
	FIRST_NAME varchar(25),
	LAST_NAME varchar(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT varchar(25),
	PRIMARY KEY (WORKER_ID)
);


INSERT INTO Worker 
	(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
			('Monika', 'Arora', 100000, '02/14/20 09:00:00', 'HR'),
		('Niharika', 'Verma', 80000, '06/14/11 09:00:00', 'Admin'),
		('Vishal', 'Singhal', 300000, '02/14/20 09:00:00', 'HR'),
		('Amitabh', 'Singh', 500000, '02/14/20 09:00:00', 'Admin'),
		('Vivek', 'Bhati', 500000, '06/14/11 09:00:00', 'Admin'),
		('Vipul', 'Diwan', 200000, '06/14/11 09:00:00', 'Account'),
		('Satish', 'Kumar', 75000, '01/14/20 09:00:00', 'Account'),
		('Geetika', 'Chauhan', 90000, '04/14/11 09:00:00', 'Admin');




CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(1, 5000, '02/16/20'),
		(2, 3000, '06/16/11'),
		(3, 4000, '02/16/20'),
		(1, 4500, '02/16/20'),
		(2, 3500, '06/16/11');

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);


INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (1, 'Manager', '06/20/2016 00:00:00'),
 (2, 'Executive', '06/11/2016 00:00:00'),
 (8, 'Executive', '06/11/2016 00:00:00'),
 (5, 'Manager', '06/11/2016 00:00:00'),
 (4, 'Asst. Manager', '06/11/2016 00:00:00'),
 (7, 'Executive', '06/11/2016 00:00:00'),
 (6, 'Lead', '06/11/2016 00:00:00'),
 (3, 'Lead', '06/11/2016 00:00:00');


select * from worker
select * from bonus
select * from title


