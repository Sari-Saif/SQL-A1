

#שאלה 2  פתרון

select products.ProductID , 
products.ProductName ,
 sum(`order details` .Quantity) as 'totalQuantity' ,
concat('$' , cast(round(sum(`order details` .UnitPrice*`order details` .Quantity),2) as char)) as 'totalPrice',
concat('$' , cast(round(sum(`order details` .UnitPrice*`order details`.Quantity)/(sum(`order details`.Quantity)),2) as char)) as 'wightAvgPrice',
concat('$' , cast(round(avg(`order details` .UnitPrice), 2) as char)) as AvgPrice,
concat('$' , cast(round(max(`order details` .UnitPrice), 2) as char)) as currentPrice
from products,`order details` 
 where products.ProductID = `order details`.ProductID group by products.ProductID
 order by max(`order details` .UnitPrice)

#שאלה 3  פתרון  
select distinct ProductID,ProductName,SupplierID,CompanyName,Phone,100-(UnitsOnOrder+UnitsInStock)as orderto
from 
(select products.ProductID,products.ProductName,products.UnitsOnOrder,products.UnitsInStock,products.SupplierID,CompanyName,Phone from products,suppliers
where UnitsOnOrder+UnitsInStock<10
 and  suppliers.SupplierID=products.SupplierID )as main


 #  שאלה  4 פתרון   


select  employees.EmployeeID,employees.FirstName,employees.LastName,employees.HomePhone,DATE_ADD('1998-05-06 00:00:00', INTERVAL 7 DAY ) as 'insulation ends at...'
 from employees,orders
 where employees.EmployeeID  <> 8 and employees.EmployeeID= orders.EmployeeID  and orders.OrderDate in 
(SELECT distinct max(orders.OrderDate) FROM
 northwind.orders,northwind.employees
 where orders.EmployeeID = 8 and orders.OrderDate 
 between  '1998-05-01 00:00:00' and '1998-05-08 00:00:00')
 group by employees.LastName


#  שאלה  5 פתרון

select  
`OwnHelperTable`.ProductName,
`OwnHelperTable`.CompanyName,
`OwnHelperTable`.OrederYear,
case `OwnHelperTable`.Qrt
when  1 then (`OwnHelperTable` .UnitPrice * `OwnHelperTable` .Quantity )
else 0
end as 'Qtr1'
,
 case `OwnHelperTable`.Qrt
when 2 then `OwnHelperTable` .UnitPrice * `OwnHelperTable` .Quantity 
else 0
end as 'Qtr2'
,
 case `OwnHelperTable`.Qrt
when 3 then `OwnHelperTable` .UnitPrice * `OwnHelperTable` .Quantity 
else 0
end as 'Qtr3'
,
 case `OwnHelperTable`.Qrt
when 4 then `OwnHelperTable` .UnitPrice * `OwnHelperTable` .Quantity 
else 0
end as 'Qtr4'
from 	
( 
SELECT
ProductName,CompanyName,`order details` .UnitPrice ,`order details`.Quantity,
extract(year from OrderDate) AS 'OrederYear',
QUARTER(OrderDate) AS 'Qrt'
FROM products,orders  
  JOIN customers
ON orders.CustomerID = customers.CustomerID
 JOIN `order details` 
ON `order details`.OrderID = orders.OrderID
 where products.ProductID = `order details`.ProductID
order by ProductName ASC,CompanyName ASC 
) 
as `OwnHelperTable`;
