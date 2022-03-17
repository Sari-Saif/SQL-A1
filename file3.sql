
#שאלה 3 במסדי נתונים 
#select distinct ProductID,ProductName,SupplierID,CompanyName,Phone,100-(UnitsOnOrder+UnitsInStock)as orderto
#from 
#(select products.ProductID,products.ProductName,products.UnitsOnOrder,products.UnitsInStock,products.SupplierID,CompanyName,Phone from products,suppliers
# where UnitsOnOrder+UnitsInStock<10
#  and  suppliers.SupplierID=products.SupplierID )as main




 #נסיון לפתור שאלה  4


 select distinct  importantDate.OrderDate,FirstName,employees.EmployeeID,LastName,employees.HomePhone
 from orders,employees,
 (select orders.EmployeeID,orders.OrderDate
  from
  orders where orders.EmployeeID =8 
  and OrderDate<='1998-05-08 00:00:00'
  and  OrderDate >='1998-05-01 00:00:00')
   as importantDate 
  where employees.EmployeeID <> 8











