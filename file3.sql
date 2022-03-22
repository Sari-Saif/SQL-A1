
#שאלה 3 במסדי נתונים פתרון   
select distinct ProductID,ProductName,SupplierID,CompanyName,Phone,100-(UnitsOnOrder+UnitsInStock)as orderto
from 
(select products.ProductID,products.ProductName,products.UnitsOnOrder,products.UnitsInStock,products.SupplierID,CompanyName,Phone from products,suppliers
where UnitsOnOrder+UnitsInStock<10
 and  suppliers.SupplierID=products.SupplierID )as main


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 #נסיון לפתור שאלה  4


#select distinct  importantDate.OrderDate,FirstName,employees.EmployeeID,LastName,employees.HomePhone
#from orders,employees,
#(select orders.EmployeeID,orders.OrderDate
#from
#orders where orders.EmployeeID =8 
#and OrderDate<='1998-05-08 00:00:00'
#and  OrderDate >='1998-05-01 00:00:00')
#as importantDate 
#where employees.EmployeeID <> 8

כאן אני מוצא את כל העובדים שעבדו  בשבוע האחרון  כך  שעובד בתז שלו  שווה 8  גם  עבד איתם אני 
עכשיו מנסה להצליב עוד נתונים שאוכל להתקדם  האלה אם  אני מוציא את תאריך האחרון
שעבדו  יחד אני מסיים  את חיפוש שלי ואז אוכל לבנות את שאלתה הרצויה כנל לגבי הטבלה 

 #select
  #distinct orders.OrderDate,employees.EmployeeID
  #from orders,employees
  #where OrderDate <'1998-05-08 00:00:00'
  #and  OrderDate >'1998-05-01 00:00:00' 
  #and employees.EmployeeID=orders.EmployeeID 
  #and employees.EmployeeID <> 8


שאלה 4 נפתרה גם 
select  employees.EmployeeID,employees.FirstName,employees.LastName,employees.HomePhone
 from employees,orders
 where employees.EmployeeID  <> 8 and employees.EmployeeID= orders.EmployeeID  and orders.OrderDate in 
(SELECT distinct max(orders.OrderDate) FROM
 northwind.orders,northwind.employees
 where orders.EmployeeID = 8 and orders.OrderDate 
 between  '1998-05-01 00:00:00' and '1998-05-06 00:00:00')
 group by employees.LastName

