--Join

/*
	select
	<tabloAd�>.<kolonAd�>
	<tablo2Ad�>.<kolonAd�>
	from <tabloAd�>
	inner join <tablo2Ad�> on <tabloAd�.KolonAd�>=<Tablo2Ad�.KolonAd�>
*/

--�al��anlar�n alm�� olduklar� sipari�leri sipari� id'si ve �al��an ad� ile birlikte listeleyin.
select OrderID,(select FirstName from Employees e where e.EmployeeID=o.EmployeeID) from Orders o

-----------------------------

select o.OrderID,e.EmployeeID,e.FirstName from Orders o 
inner join Employees e on o.EmployeeID=e.EmployeeID

--Orders
--Employees

--Kategori ad�, tedarik�i firma ad� ve �r�n ad�n� getiren sorguyu yaz�n.
select c.CategoryName,s.CompanyName,p.ProductName from Products p 
inner join Suppliers s on p.SupplierID=s.SupplierID
inner join Categories c on c.CategoryID=p.CategoryID