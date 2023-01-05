--Subquery (Alt sorgu)

--Ýç içe kullanýlan sorgulardýr. Bir sorgu kümesi içerisinde dilediðimiz kadar alt sorgu kullanabiliriz. Burada unutmamamýz gereken iþlem öncelikli olarak
-- en içeride kalan sorgudan baþlayarak sonuçlarýn döndürülmesidir.

--Not: Alt sorgudan dönecek olan kolon adedi bir olmalýdýr.

-- ortalama fiyatýn altýnda olan ürünleri listeleyi,
select avg(UnitPrice) from Products
select ProductName,avg(UnitPrice) from Products where UnitPrice<28.8663 group by ProductName
select * from Products where UnitPrice<avg(UnitPrice) -- çalýþmýyor alt sorgu lazým yada having gerkiyor.
select * from Products where UnitPrice<(select avg(UnitPrice) from Products) -- Parantez içerisi alt sorgudur.

-- Ürünler tablosunda ürün adý, fiyatý, adedi, tedarikçi þirket adý ve kategori adýný listeleyen sorgu.

select ProductName,UnitPrice,UnitsInStock,(select CompanyName from Suppliers where Suppliers.SupplierID=Products.SupplierID) as 'Tedarikçi',(select CategoryName from Categories where Categories.CategoryID=Products.CategoryID) as 'Kategori' from Products
-- Burada diagram tablosundan key baðlantýlarýný tespit ettik. sonra kriterimizi yazarken filtrelememizi buna göre yaptýk.

-- Satýþlar tablosunu müþteri þirket adý, personel adý ve soyadý, nakliyeci þirket adý ile birlikte sipariþ numaralarýný listeleyin.

select OrderID,(select FirstName+' '+LastName from Employees where Employees.EmployeeID=Orders.EmployeeID) as 'Ad Soyad',(select CompanyName from Customers where Customers.CustomerID=Orders.CustomerID) as 'Þirket adý',(select CompanyName from Shippers where Shippers.ShipperID=Orders.ShipVia) as 'Nakliye' from Orders
select * from Orders

-- ürün adý ile birlikte o ürünün toplam satýþ adet bilgisini listeleyin.
select sum(Quantity) as 'Toplam adet',(select ProductName from Products where Products.ProductID=[Order Details].ProductID) as 'Ürün adý' from [Order Details] group by ProductID order by 1

select ProductName, (select sum(od.Quantity) from [Order Details] od where od.ProductID=p.ProductID) as 'Toplam adet' from Products p --tablo isimlerini kýsaltýp yapma.

-- Adý Steven olan personelin yapmýþ olduðu satýþlarý listeleyin.
select * from Employees where FirstName='steven'
select * from Orders where EmployeeID=(select EmployeeID from Employees where FirstName='Steven')

-- Personel adý steven olan ve kargo firmasý 'federal Shipping' olan satýþlarý listeleyin.
select * from Orders where EmployeeID=(select EmployeeID from Employees where FirstName='Steven') and ShipVia=(select ShipperID from Shippers where CompanyName='Federal shipping')

--Adý Steven olan personelin yapmýþ olduðu satýþlarý listeleyin. orderID ve customerID ve employee firstname de olsun
select OrderID,CustomerID,(select FirstName from Employees where Employees.EmployeeID=Orders.EmployeeID) from Orders where EmployeeID=(select EmployeeID from Employees where FirstName='Steven')


