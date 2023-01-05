--join
/*
select 
<tabload�>.<kolonad�>
<tablo2ad�>.<kolonad�>
from <tabload�>
inner join <tablo2ad�> on <tabload�.kolonad�>=<tablo2ad�.kolonad�>


*/
-- �al��anlar�n alm�� olduklar� sipari�leri sipari� id si ve �al��an ad� ile listeleyin.
select OrderID,(select FirstName from Employees e where e.EmployeeID=o.EmployeeID) from Orders o -- alt sorgu ile yap�l��

--inner join= null olmayan de�erler teslim edilir.
--outer join=
	--left = dersek sa�dakinin null olmayan de�erleri teslim edilir.
	--right= dersek soldakinin null olmayan de�erleri teslim edilir.

select o.OrderID,e.EmployeeID,e.FirstName from Orders o	inner join Employees e on e.EmployeeID=o.EmployeeID

--kategori ad�, tedarik�i firma ad� ve �r�n ad�n� getiren sorguyu yaz�n�z.
select p.ProductName,s.CompanyName,c.CategoryName from Products p inner join Suppliers s on p.SupplierID=s.SupplierID inner join Categories c on p.CategoryID=c.CategoryID