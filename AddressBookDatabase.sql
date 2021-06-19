
# UC-1-ability to create address book database.

mysql> SHOW DATABASES;
+---------------------+
| Database            |
+---------------------+
| addressbook_service |
| information_schema  |
| mysql               |
| payroll_service     |
| performance_schema  |
| sakila              |
| sys                 |
| world               |
+---------------------+
8 rows in set (0.00 sec)

mysql> USE addressBook_service;
Database changed
mysql> SELECT DATABASE();
+---------------------+
| DATABASE()          |
+---------------------+
| addressbook_service |
+---------------------+
1 row in set (0.00 sec)

# UC-2-Create table for address book

 CREATE TABLE address_book
    -> (
    -> Id                       INT unsigned NOT NULL AUTO_INCREMENT,
    -> First_Name               VARCHAR(100) NOT NULL,
    -> Last_Name                VARCHAR(100) NOT NULL,
    -> Address                  VARCHAR(250) NOT NULL,
    -> City                     VARCHAR(100) NOT NULL,
    -> States                   VARCHAR(100) NOT NULL,
    -> Zip                      INT(12) NOT NULL,
    -> Phone_Number             INT(15) NOT NULL,
    -> Email                    VARCHAR(150) NOT NULL,
    -> PRIMARY KEY              (Id)
    -> );

mysql> DESCRIBE address_book;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| Id           | int unsigned | NO   | PRI | NULL    | auto_increment |
| First_Name   | varchar(100) | NO   |     | NULL    |                |
| Last_Name    | varchar(100) | NO   |     | NULL    |                |
| Address      | varchar(250) | NO   |     | NULL    |                |
| City         | varchar(100) | NO   |     | NULL    |                |
| States       | varchar(100) | NO   |     | NULL    |                |
| Zip          | int          | NO   |     | NULL    |                |
| Phone_Number | int          | NO   |     | NULL    |                |
| Email        | varchar(150) | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
9 rows in set (0.02 sec)

# UC-3-Insert new contacts in address_book.

INSERT INTO address_book
    -> (First_Name, Last_Name, Address, City, States, Zip, Phone_Number, Email) VALUES
    -> ('Moonlight', 'Sunlight', 'Royal Colony', 'Golden City', 'GreaterState', '001002', '00112345678', 'moonlight@lamp.com');
Query OK, 1 row affected (0.03 sec)

 INSERT INTO address_book
    -> (First_Name, Last_Name, Address, City, States, Zip, Phone_Number, Email) VALUES
    -> ('Priyansh', 'Kumar', 'Malabar', 'Mumbai', 'Maharashtra', '530066','9882763875', 'pl@pl.com'),
    -> ('Rahul', 'Singh', 'Guargon Sec-1', 'Guargon', 'Haryana', '530044','9494691888', 'mln@mln.com');
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

 SELECT * FROM address_book;
+----+------------+-----------+---------------+-------------+--------------+--------+--------------+--------------------+
| Id | First_Name | Last_Name | Address       | City        | States       | Zip    | Phone_Number | Email              |
+----+------------+-----------+---------------+-------------+--------------+--------+--------------+--------------------+
|  1 | Moonlight  | Sunlight  | Royal Colony  | Golden City | GreaterState | 001002 | 00112345678  | moonlight@lamp.com |
|  2 | Priyansh   | Kumar     | Malabar       | Mumbai      | Maharashtra  | 530066 | 9882763875   | pl@pl.com          |
|  3 | Rahul      | Singh     | Guargon Sec-1 | Guargon     | Haryana      | 530044 | 9494691888   | mln@mln.com        |
+----+------------+-----------+---------------+-------------+--------------+--------+--------------+--------------------+
3 rows in set (0.00 sec)
