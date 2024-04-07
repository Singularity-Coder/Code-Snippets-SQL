# DDL DML queries
# Download MySQL Workbench

CREATE DATABASE db_new;
USE db_new;

CREATE TABLE CUSTOMERS(
ID INT AUTO_INCREMENT PRIMARY KEY, 
FIRST_NAME VARCHAR(20) NOT NULL, 
LAST_NAME VARCHAR(20) DEFAULT("XYZ"),
AGE INT CHECK(AGE>=18), 
GENDER ENUM('M', 'F'),
PHONE_NO CHAR(10) NOT NULL UNIQUE, 
EMAIL_ID VARCHAR(30), 
DOB DATE, 
ADDRESS VARCHAR (100)
);

ALTER TABLE CUSTOMERS
ADD IS_ACTIVE VARCHAR (10);

ALTER TABLE CUSTOMERS 
MODIFY IS_ACTIVE INT;

ALTER TABLE CUSTOMERS
ADD CONSTRAINT CHECK(IS_ACTIVE IN (1,0));

ALTER TABLE CUSTOMERS
RENAME COLUMN ID TO CUST_ID;

ALTER TABLE CUSTOMERS 
DROP COLUMN ADDRESS;

RENAME TABLE CUSTOMERS TO CUST_INFO;

##DML - INSERT, UPDATE, DELETE THE DATA 
##DDL - STR OF THE TABLE
# To import csv data go to Table name -> Table data import wizard
INSERT INTO CUST_INFO
VALUES
(101, "John", "Doe", 25, "M", "8245639875", "John@gma11 com", "1998-05-10", 1),
(102, "Jane", "Doe", 28, "F", "8245639876", "Jane@gma11 com", "1998-05-10", 0),
(103, "David", "Doe", 39, "M", "8245639877", "David@gma11 com", "1998-05-10", 1);

SELECT * FROM CUST_INFO;

CREATE TABLE CUST_INFO_2
(
CUST_ID INT auto_increment PRIMARY KEY, 
FIRST_NAME VARCHAR(20) NOT NULL, 
LAST_NAME VARCHAR(20) DEFAULT("XYZ"),
AGE INT CHECK(AGE>=18), 
GENDER ENUM('M', 'F'),
PHONE_NO CHAR(10) NOT NULL UNIQUE, 
EMAIL_ID VARCHAR(30), 
DOB DATE,
IS_ACTIVE INT CHECK(IS_ACTIVE IN (1,0))
);

INSERT INTO CUST_INFO_2
SELECT * FROM CUST_INFO WHERE IS_ACTIVE = 1;

SELECT * FROM CUST_INFO_2;

UPDATE CUST_INFO_2
SET PHONE_NO = 9305884176
WHERE CUST_ID = 101;

SELECT * FROM CUST_INFO_2;

DELETE 
FROM CUST_INFO_2
WHERE CUST_ID = 103;

SELECT * FROM CUST_INFO_2;

TRUNCATE TABLE CUST_INFO_2;

SELECT * FROM CUST_INFO_2;

DROP TABLE CUST_INFO_2;