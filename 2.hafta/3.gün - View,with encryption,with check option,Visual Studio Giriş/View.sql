-- e�er tablo ismini de�i�tirmek istersek ilgili kod=
--sp_rename 'Photos','Photoo'

--VIEW
/*
SQL server ortam�nda sanal tablo olarak kullan�lan ger�ek tablolardan veriyi alarak �zetleyen tablolard�r. Anl�k olarak de�il kal�c� olarak saklanan sql server objesidir.

*/
--bir sipari�in hangi �al��an taraf�ndan hangi m��teriye hangi kategorideki �r�nden hangi fiyattan ka� adet sat�ld���n� listeleyin.

select o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice as 'Birim Fiyat',od.Quantity,sum(od.UnitPrice*od.Quantity-(1-od.Discount)) as 'Sipari� Fiyat' from Orders o 
	inner join Employees e on o.EmployeeID=e.EmployeeID inner join Customers c on c.CustomerID=o.CustomerID 
		inner join [Order Details] od on od.OrderID=o.OrderID 
			inner join Products p on p.ProductID=od.ProductID	
				inner join Categories ct on ct.CategoryID=p.CategoryID 
					group by o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice,od.Quantity
---------------------------------------------------------------------------------------------------------------------------------------
create view Sat�sRaporu
as
select o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice as 'Birim Fiyat',od.Quantity,sum(od.UnitPrice*od.Quantity-(1-od.Discount)) as 'Sipari� Fiyat' from Orders o 
	inner join Employees e on o.EmployeeID=e.EmployeeID inner join Customers c on c.CustomerID=o.CustomerID 
		inner join [Order Details] od on od.OrderID=o.OrderID 
			inner join Products p on p.ProductID=od.ProductID	
				inner join Categories ct on ct.CategoryID=p.CategoryID 
					group by o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice,od.Quantity

---------------------------------------------------------------------------------------------------------------------------------------
select * from Sat�sRaporu
select * from Sat�sRaporu where [Birim Fiyat]>15

---------------------------------------------------------------------------------------------------------------------------------------

-- Categories tablosunda bulunan ID ve ad kolonlar� kapsayan bir view olu�turun.

create view Kategoriler
as
select CategoryID,CategoryName from Categories

select * from Kategoriler
-- View g�ncelleme
alter view kategoriler
as
select CategoryID,CategoryName,Description from Categories
--View Silme
drop view kategoriler