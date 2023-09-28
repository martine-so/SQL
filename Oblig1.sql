select * from products;
# task 1
select * from categories;
# task 2
select Productname, Quantityperunit, UnitPrice from products;
# task 3
select SupplierID, Productname, companyname from products, shippers;
# task 4 
select * from orders where orderdate = "1996-05-17";
# task 5
select * from orders, products where productname = "geitost";
# task 6 
select productname from products where unitprice > 40;
#task 7 
select * from products where UnitPrice <= 40;
# task 8
select OrderID, contactname from orders, customers;
# task 9 
select contactname, address, city, orderdate from customers, orders 
where orderdate = "1995-05-01";
# task 10
select lastname, FirstName, OrderID from orders, employees 
where orderID = 10369 
and employees.EmployeeID = orders.EmployeeID;
select * from employees;
# task 11
select * from customers where city = "london" or city = "buenos aires";
# task 12
select companyname, city from customers 
where (CompanyName between  "m" and "s") and not city = "Mexico D.F." ;
# task 13 
select CustomerId, city, address from customers
Order by CustomerID;
# task 14 
select * from products where UnitPrice < 10 
and (QuantityPerUnit = "500g" or QuantityPerUnit <> "24-12 oz bottles") ;
#task 15 
select productname, supplierid, unitprice from Products 
order by supplierid desc, unitprice; 
