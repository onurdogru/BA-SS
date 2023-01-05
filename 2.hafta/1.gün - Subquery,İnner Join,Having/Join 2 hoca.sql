--Join

/*
	select
	<tabloAdý>.<kolonAdý>
	<tablo2Adý>.<kolonAdý>
	from <tabloAdý>
	inner join <tablo2Adý> on <tabloAdý.KolonAdý>=<Tablo2Adý.KolonAdý>
*/

--çalýþanlarýn almýþ olduklarý sipariþleri sipariþ id'si ve çalýþan adý ile birlikte listeleyin.
select OrderID,(select FirstName from Employees e where e.EmployeeID=o.EmployeeID) from Orders o

-----------------------------

select o.OrderID,e.EmployeeID,e.FirstName from Orders o 
inner join Employees e on o.EmployeeID=e.EmployeeID

--Orders
--Employees

--Kategori adý, tedarikçi firma adý ve ürün adýný getiren sorguyu yazýn.
select c.CategoryName,s.CompanyName,p.ProductName from Products p 
inner join Suppliers s on p.SupplierID=s.SupplierID
inner join Categories c on c.CategoryID=p.CategoryID