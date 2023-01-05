-- kargo bedeli 50'nin üzerinde olan ve o kargoyu taþýyan þirket adý ile birlikte sipariþleri listeleyin.

select OrderID,ShippedDate,Freight,(select CompanyName from Shippers s where o.ShipVia=s.ShipperID) from Orders o where Freight>50

-- United package tarafýndan taþýnmýz ve nancy üzerine kayýtlý olan sipariþlerin
--çalýþan id si
--çalýþan adý
--kargo þirket adý
--sipariþ id si 
--sipariþ tarihi 
--kargo ücretibi getiren sorguyu yazýnýz

select e.EmployeeID,e.FirstName,s.CompanyName,o.OrderID,o.OrderDate,o.Freight from orders o inner join Employees e on e.EmployeeID=o.EmployeeID inner join Shippers s on s.ShipperID=o.ShipVia where FirstName='Nancy' and s.CompanyName='United package' order by Freight asc
select * from orders o 

--Hangi müþteriye toplam ne kadar ürün satýlmýþtýr ?

select s.CompanyName,sum(Quantity) as 'Toplam' from Orders o inner join [Order Details] od on od.OrderID=o.OrderID inner join Customers c on c.CustomerID=o.CustomerID group by s.CompanyName order by 2 desc

--En çok ürün alýnan tedarikçiyi (þirket adý) almýþ olunan ürün miktarýna göre listeleyin.

select s.CompanyName,sum(p.UnitsInStock) from Products p inner join Suppliers s on s.SupplierID=p.SupplierID group by s.CompanyName order by 2 desc

--Hangi ülkere ne kadarlýk satýþ yapýlmýþtýr. ülke adý ve ne gelir ?

select o.ShipCountry,sum(Quantity*UnitPrice*(1-Discount)) as 'Toplam' from Orders o inner join [Order Details] od on od.OrderID=o.OrderID group by o.ShipCountry order by 2 desc


--stokta 30 dan fazla olan ürünleri ve tedarikçisi exotic olan sipariþleri gösterin ?



--Hangi personel, hangi kategoriden toplamda kaç adet ürün satýþý yapmýþtýr ?

select e.FirstName+' '+e.LastName as 'personel',c.CategoryName,sum(od.Quantity) as 'Adet' from Products p 
inner join Categories c on p.CategoryID=c.CategoryID 
inner join [Order Details] od on od.ProductID=p.ProductID 
inner join Orders o on o.OrderID=od.OrderID 
inner join Employees e on e.EmployeeID=o.EmployeeID 
group by e.FirstName+' '+e.LastName,c.CategoryName order by sum(od.Quantity) desc