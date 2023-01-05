-- eðer tablo ismini deðiþtirmek istersek ilgili kod=
--sp_rename 'Photos','Photoo'

--VIEW
/*
SQL server ortamýnda sanal tablo olarak kullanýlan gerçek tablolardan veriyi alarak özetleyen tablolardýr. Anlýk olarak deðil kalýcý olarak saklanan sql server objesidir.

*/
--bir sipariþin hangi çalýþan tarafýndan hangi müþteriye hangi kategorideki üründen hangi fiyattan kaç adet satýldýðýný listeleyin.

select o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice as 'Birim Fiyat',od.Quantity,sum(od.UnitPrice*od.Quantity-(1-od.Discount)) as 'Sipariþ Fiyat' from Orders o 
	inner join Employees e on o.EmployeeID=e.EmployeeID inner join Customers c on c.CustomerID=o.CustomerID 
		inner join [Order Details] od on od.OrderID=o.OrderID 
			inner join Products p on p.ProductID=od.ProductID	
				inner join Categories ct on ct.CategoryID=p.CategoryID 
					group by o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice,od.Quantity
---------------------------------------------------------------------------------------------------------------------------------------
create view SatýsRaporu
as
select o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice as 'Birim Fiyat',od.Quantity,sum(od.UnitPrice*od.Quantity-(1-od.Discount)) as 'Sipariþ Fiyat' from Orders o 
	inner join Employees e on o.EmployeeID=e.EmployeeID inner join Customers c on c.CustomerID=o.CustomerID 
		inner join [Order Details] od on od.OrderID=o.OrderID 
			inner join Products p on p.ProductID=od.ProductID	
				inner join Categories ct on ct.CategoryID=p.CategoryID 
					group by o.OrderID,p.ProductName, e.FirstName,c.CompanyName,ct.CategoryName,od.UnitPrice,od.Quantity

---------------------------------------------------------------------------------------------------------------------------------------
select * from SatýsRaporu
select * from SatýsRaporu where [Birim Fiyat]>15

---------------------------------------------------------------------------------------------------------------------------------------

-- Categories tablosunda bulunan ID ve ad kolonlarý kapsayan bir view oluþturun.

create view Kategoriler
as
select CategoryID,CategoryName from Categories

select * from Kategoriler
-- View güncelleme
alter view kategoriler
as
select CategoryID,CategoryName,Description from Categories
--View Silme
drop view kategoriler