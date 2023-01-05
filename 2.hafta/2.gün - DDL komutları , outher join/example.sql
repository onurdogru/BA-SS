-- kargo bedeli 50'nin �zerinde olan ve o kargoyu ta��yan �irket ad� ile birlikte sipari�leri listeleyin.

select OrderID,ShippedDate,Freight,(select CompanyName from Shippers s where o.ShipVia=s.ShipperID) from Orders o where Freight>50

-- United package taraf�ndan ta��nm�z ve nancy �zerine kay�tl� olan sipari�lerin
--�al��an id si
--�al��an ad�
--kargo �irket ad�
--sipari� id si 
--sipari� tarihi 
--kargo �cretibi getiren sorguyu yaz�n�z

select e.EmployeeID,e.FirstName,s.CompanyName,o.OrderID,o.OrderDate,o.Freight from orders o inner join Employees e on e.EmployeeID=o.EmployeeID inner join Shippers s on s.ShipperID=o.ShipVia where FirstName='Nancy' and s.CompanyName='United package' order by Freight asc
select * from orders o 

--Hangi m��teriye toplam ne kadar �r�n sat�lm��t�r ?

select s.CompanyName,sum(Quantity) as 'Toplam' from Orders o inner join [Order Details] od on od.OrderID=o.OrderID inner join Customers c on c.CustomerID=o.CustomerID group by s.CompanyName order by 2 desc

--En �ok �r�n al�nan tedarik�iyi (�irket ad�) alm�� olunan �r�n miktar�na g�re listeleyin.

select s.CompanyName,sum(p.UnitsInStock) from Products p inner join Suppliers s on s.SupplierID=p.SupplierID group by s.CompanyName order by 2 desc

--Hangi �lkere ne kadarl�k sat�� yap�lm��t�r. �lke ad� ve ne gelir ?

select o.ShipCountry,sum(Quantity*UnitPrice*(1-Discount)) as 'Toplam' from Orders o inner join [Order Details] od on od.OrderID=o.OrderID group by o.ShipCountry order by 2 desc


--stokta 30 dan fazla olan �r�nleri ve tedarik�isi exotic olan sipari�leri g�sterin ?



--Hangi personel, hangi kategoriden toplamda ka� adet �r�n sat��� yapm��t�r ?

select e.FirstName+' '+e.LastName as 'personel',c.CategoryName,sum(od.Quantity) as 'Adet' from Products p 
inner join Categories c on p.CategoryID=c.CategoryID 
inner join [Order Details] od on od.ProductID=p.ProductID 
inner join Orders o on o.OrderID=od.OrderID 
inner join Employees e on e.EmployeeID=o.EmployeeID 
group by e.FirstName+' '+e.LastName,c.CategoryName order by sum(od.Quantity) desc