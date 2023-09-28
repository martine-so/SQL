show databases;
use northwind;

create table employee_work_hours (employee_id int, login_hours int, working_dates date);

SHOW TABLE STATUS WHERE Name = 'employee_work_hours';
SHOW TABLE STATUS WHERE Name = 'employees';

ALTER TABLE employees ENGINE = InnoDB;

alter table employee_work_hours add foreign key (employee_id) references Employees(employeeID);

insert into employee_work_hours values
(1, 4, "2022-02-14"),
(1, 4, "2022-02-07"),
(2, 8, "2022-02-15"),
(3, 2, "2022-02-10"),
(4, 7, "2022-02-10"),
(8, 5, "2022-02-13"),
(9, 4, "2022-02-14");

#select * from employee_work_hours; 

# task 5
select ProductName, CompanyName, Country, Phone from products as P
join suppliers as S
ON P.SupplierID = S.SupplierID
order by country desc limit 25;

# task 6 
#select max(quantity) from orderdetails;

select C.ContactName from orderdetails as OD
join orders as O
On OD.OrderID = O.OrderID
join customers as C
On O.CustomerID = C.CustomerID
where OD.Quantity = (select max(quantity) from orderdetails);

# task 7 
select * from categories;
select * from products;
select * from orderdetails;

Select avg(quantity) from Orderdetails as OD
join products as P
On OD.productID = P.ProductID
join categories as C
On P.CategoryID = C.CategoryID
where C.CategoryName = 'Beverages';

Select sum(quantity) from Orderdetails as OD
join products as P
On OD.productID = P.ProductID
join categories as C
On P.CategoryID = C.CategoryID
where C.CategoryName = 'Produce';

#task 8 
select P.ProductID, P.ProductName from orderdetails as OD
join products as P
on OD.ProductID = P.ProductID
where OD.unitprice > 20 
group by P.ProductID
having Count(P.ProductID) >=3; 

#så at det er unitprice på både OD og P, men valgte å bruke OD i denne oppgaven

#task 9
select * from employees as E
join employee_work_hours as EWH
on E.EmployeeID = EWH.employee_id
where E.notes like "%she%" and EWH.login_hours > 2; 

#Nancy kommer opp dobbelt vet ikke hvorfor

#task 10 
SET SQL_SAFE_UPDATES = 0;
Delete from employees
where BirthDate between "1969-01-01 00:00:00" and "1997-05-27 00:00:00";

#Zero rows affected 
