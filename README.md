# SQL-A1
Relational Databases Management Systems

Explanation in words. What is the purpose of the following query?


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


select s.CompanyName, s.Phone,
case when min(o.RequiredDate) < CURDATE() then 'pass'

else min(CURDATE() - o.RequiredDate) end as 'Days Left'

from orders as o join shippers as s

on o.shipvia = s.shipperID

where
o.ShippedDate is NULL and date_sub(o.RequiredDate, INTERVAL 7 DAY) <=
CURDATE()
group by s.shipperID

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
