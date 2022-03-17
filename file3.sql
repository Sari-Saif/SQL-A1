
#שאלה 3 במסדי נתונים 
#select distinct ProductID,ProductName,SupplierID,CompanyName,Phone,100-(UnitsOnOrder+UnitsInStock)as orderto
#from 
#(select products.ProductID,products.ProductName,products.UnitsOnOrder,products.UnitsInStock,products.SupplierID,CompanyName,Phone from products,suppliers
# where UnitsOnOrder+UnitsInStock<10
#  and  suppliers.SupplierID=products.SupplierID )as main










