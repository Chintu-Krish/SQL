CREATE DATABASE COMPANY;
USE COMPANY;
CREATE TABLE EMPLOYEE(
id int,
emp_name char(50),
city_name char(128),
country_id int
);
INSERT INTO EMPLOYEE values(1,'Priyanka','Chennai',600053);
INSERT INTO EMPLOYEE values(2,'Riya','Punjab',600026);
INSERT INTO EMPLOYEE values(3,'Sowjanya','Delhi',600036);
INSERT INTO EMPLOYEE values(4,'Sanjay','Delhi',600036);
INSERT INTO EMPLOYEE values(5,'Aravindha Priya','Mumbai',600038);
INSERT INTO EMPLOYEE values(6,'Sri Devi','Pune',600046);

                                 # To display all the values in table.

Select * from EMPLOYEE

                                 #To display multiple column.

Select emp_name, city_name from EMPLOYEE

                                 #To remove duplicates and display values in a column.

select distinct city_name from employee

                                 #To remove duplicates and display count values in a column.

select count(distinct city_name) from employee

                                 #To display top 4 rows in the table.

select top 4* from employee

                                 #To temporarily alter the column names in the existing table.

select emp_name as 'name', city_name as 'city', country_id from employee

                                 #To group by certain columns.

select count(emp_name),city_name from employee group by city_name

drop table employee