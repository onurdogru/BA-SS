--Subquery (Alt sorgu)

--�� i�e kullan�lan sorgulard�r. Bir sorgu k�mesi i�erisinde diledi�imiz kadar alt sorgu kullanabiliriz. Burada unutmamam�z gereken i�lem �ncelikli olarak
-- en i�eride kalan sorgudan ba�layarak sonu�lar�n d�nd�r�lmesidir.

--Not: Alt sorgudan d�necek olan kolon adedi bir olmal�d�r.

-- ortalama fiyat�n alt�nda olan �r�nleri listeleyi,
select avg(UnitPrice) from Products
select ProductName,avg(UnitPrice) from Products where UnitPrice<28.8663 group by ProductName
select * from Products where UnitPrice<avg(UnitPrice) -- �al��m�yor alt sorgu laz�m yada having gerkiyor.
select * from Products where UnitPrice<(select avg(UnitPrice) from Products) -- Parantez i�erisi alt sorgudur.

-- �r�nler tablosunda �r�n ad�, fiyat�, adedi, tedarik�i �irket ad� ve kategori ad�n� listeleyen sorgu.

select ProductName,UnitPrice,UnitsInStock,(select CompanyName from Suppliers where Suppliers.SupplierID=Products.SupplierID) as 'Tedarik�i',(select CategoryName from Categories where Categories.CategoryID=Products.CategoryID) as 'Kategori' from Products
-- Burada diagram tablosundan key ba�lant�lar�n� tespit ettik. sonra kriterimizi yazarken filtrelememizi buna g�re yapt�k.

-- Sat��lar tablosunu m��teri �irket ad�, personel ad� ve soyad�, nakliyeci �irket ad� ile birlikte sipari� numaralar�n� listeleyin.

select OrderID,(select FirstName+' '+LastName from Employees where Employees.EmployeeID=Orders.EmployeeID) as 'Ad Soyad',(select CompanyName from Customers where Customers.CustomerID=Orders.CustomerID) as '�irket ad�',(select CompanyName from Shippers where Shippers.ShipperID=Orders.ShipVia) as 'Nakliye' from Orders
select * from Orders

-- �r�n ad� ile birlikte o �r�n�n toplam sat�� adet bilgisini listeleyin.
select sum(Quantity) as 'Toplam adet',(select ProductName from Products where Products.ProductID=[Order Details].ProductID) as '�r�n ad�' from [Order Details] group by ProductID order by 1

select ProductName, (select sum(od.Quantity) from [Order Details] od where od.ProductID=p.ProductID) as 'Toplam adet' from Products p --tablo isimlerini k�salt�p yapma.

-- Ad� Steven olan personelin yapm�� oldu�u sat��lar� listeleyin.
select * from Employees where FirstName='steven'
select * from Orders where EmployeeID=(select EmployeeID from Employees where FirstName='Steven')

-- Personel ad� steven olan ve kargo firmas� 'federal Shipping' olan sat��lar� listeleyin.
select * from Orders where EmployeeID=(select EmployeeID from Employees where FirstName='Steven') and ShipVia=(select ShipperID from Shippers where CompanyName='Federal shipping')

--Ad� Steven olan personelin yapm�� oldu�u sat��lar� listeleyin. orderID ve customerID ve employee firstname de olsun
select OrderID,CustomerID,(select FirstName from Employees where Employees.EmployeeID=Orders.EmployeeID) from Orders where EmployeeID=(select EmployeeID from Employees where FirstName='Steven')


