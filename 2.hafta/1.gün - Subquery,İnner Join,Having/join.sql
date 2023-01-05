--join
/*
select 
<tabloadý>.<kolonadý>
<tablo2adý>.<kolonadý>
from <tabloadý>
inner join <tablo2adý> on <tabloadý.kolonadý>=<tablo2adý.kolonadý>


*/
-- çalýþanlarýn almýþ olduklarý sipariþleri sipariþ id si ve çalýþan adý ile listeleyin.
select OrderID,(select FirstName from Employees e where e.EmployeeID=o.EmployeeID) from Orders o -- alt sorgu ile yapýlýþ

--inner join= null olmayan deðerler teslim edilir.
--outer join=
	--left = dersek saðdakinin null olmayan deðerleri teslim edilir.
	--right= dersek soldakinin null olmayan deðerleri teslim edilir.

select o.OrderID,e.EmployeeID,e.FirstName from Orders o	inner join Employees e on e.EmployeeID=o.EmployeeID

--kategori adý, tedarikçi firma adý ve ürün adýný getiren sorguyu yazýnýz.
select p.ProductName,s.CompanyName,c.CategoryName from Products p inner join Suppliers s on p.SupplierID=s.SupplierID inner join Categories c on p.CategoryID=c.CategoryID