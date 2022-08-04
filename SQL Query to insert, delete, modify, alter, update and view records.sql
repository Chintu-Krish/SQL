use company

                              #Inserting a single row

insert into employee values(7,'Bharathy Bai','Hyderabad',602105)
select * from employee

                              #Inserting multiple rows

insert into employee (id,emp_name,city_name,country_id) 
values(8,'Chandra Bai','Pune',603110),(9,'Murali Krishnan','Bangalore',604107)
select * from employee

                              #To update a particular value in the table

update employee 
set city_name = 'Mangalore'
where city_name = 'Bangalore'
select * from employee

                              #To alter or add a column

alter table employee
add address char(70)
select * from employee

                              #To delete a column

alter table employee
drop column address
select * from employee

                              #To delete a particular row

delete from employee
where emp_name = 'Riya'
select * from employee

                              #To delete all the details in the table

delete employee
select * from employee

                              #To delete the entire table

drop table employee
select * from employee 

