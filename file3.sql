
#שאלה 3  פתרון  
select distinct ProductID,ProductName,SupplierID,CompanyName,Phone,100-(UnitsOnOrder+UnitsInStock)as orderto
from 
(select products.ProductID,products.ProductName,products.UnitsOnOrder,products.UnitsInStock,products.SupplierID,CompanyName,Phone from products,suppliers
where UnitsOnOrder+UnitsInStock<10
 and  suppliers.SupplierID=products.SupplierID )as main


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 # פתרון  שאלה  4


select  employees.EmployeeID,employees.FirstName,employees.LastName,employees.HomePhone,DATE_ADD('1998-05-06 00:00:00', INTERVAL 7 DAY ) as 'insulation ends at...'
 from employees,orders
 where employees.EmployeeID  <> 8 and employees.EmployeeID= orders.EmployeeID  and orders.OrderDate in 
(SELECT distinct max(orders.OrderDate) FROM
 northwind.orders,northwind.employees
 where orders.EmployeeID = 8 and orders.OrderDate 
 between  '1998-05-01 00:00:00' and '1998-05-08 00:00:00')
 group by employees.LastName




ניסיון לפתור שאלה 5 
#SELECT ProductName,CompanyName,extract(year from OrderDate) as'OrederYear'
#FROM products,orders INNER JOIN customers
#ON orders.CustomerID = customers.CustomerID
