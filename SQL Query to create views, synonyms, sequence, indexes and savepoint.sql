USE COMPANY;

										# Creating a view

create view [employeedetails] as
select emp_name, city_name
from employee
where city_name = 'Chennai'
select * from [employeedetails]

										# Dropping a view

drop view [employeedetails]
select * from [employeedetails]

										# Creating a synonym

create synonym workers
for company.employee

										# Display the system synonymn

select name, 
base_object_name, type 
from sys.synonyms 
order by name

										# Dropping a synonym

drop synonym if exists workers
select name,
base_object_name, type
from sys.synonyms
order by name

										# Creating a sequence

Create sequence cus_seq as int
start with 1
increment by 2
update employee
set id = next value for cus_seq
select * from employee

										# Dropping a sequence

drop sequence cus_seq

										# Creating a index

create index index_place
on employee (city_name)

										# Displaying information based on index

select * from employee with (index(index_place))

										# Dropping a index

drop index index_place on employee
select * from employee

										# Creating a savepoint 

begin transaction ins
insert into employee values(18,'Rekha','Madurai',600081)
Select * from employee

										# Creating a rollback

rollback transaction ins 
select * from employee