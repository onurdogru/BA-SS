--Where (kriter/filtre)


--ürün Id'si 1 olaný listeleyin.
select * from Products where ProductID=15

/*
	operatörler
		= atama operatörü
		> büyüktür
		< küçüktür
		>= büyük eþittir
		<= küçük eþittir
		!= eþit deðildir.
*/

--ürün fiyatý 30'dan büyük olan ürünlerin ürün adý, fiyatý ve stok miktarýný listeleyin.

select ProductName as 'Ürün Ad',UnitPrice as 'Fiyat', UnitsInStock as 'Stok Miktar' from Products where UnitPrice>30

--ürün fiyatý 30 olan ürünün adý nedir?

select * from Products where UnitPrice=30

--fiyatý 10 ile 40 arasýnda olan ürünleri listeleyin.

select * from Products where UnitPrice>10 and UnitPrice<40
--II.YOL
select * from Products where UnitPrice between 10 and 40

--fiyatý 10 ya da 40 olan ürünleri listeleyin.
select * from Products where UnitPrice=10 or UnitPrice=40

--II.YOL
select * from Products where UnitPrice in(10,40)

--janet'ýn bilgilerini listeleyin.

select * from Employees where FirstName='janet'

--janet'ýn almýþ olduðu sipariþleri listeleyin.
select EmployeeID from Employees where FirstName='janet' -- EmployeeID=3
select * from Orders where EmployeeID=3

