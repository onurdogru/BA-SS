-- Where (kriter/Filtre)
-- Where bütün tablodan sonra kullanmak gerekir. Beraberinde operatörler kullanýlýr.

-- ürün ID'di 1 olaný listeleyin.
select * from Products where ProductID=1

/* 
	operatörler
		= atama operatörü
		> büyüktür
		< küçüktür
		>= büyük eþittir
		<= küçük eþittir
		== eþittir
		!= eþit deðildir.
*/
--ürün fiyatý 30 dan büyük olanlarýn ürün adý, fiyatý ve stok miktarý bilgileri ile listeleyin.
select ProductName, UnitPrice, UnitsInStock from Products where UnitPrice>30

-- ürün fiyatý 30 olan ürünün adý nedir ?
select ProductName as 'Ürün Adý' from Products where UnitPrice=30

-- Fiyatý 10 ile 40 arasýnda olan ürünleri listeleyin.
select * from Products where UnitPrice>10 and UnitPrice<40
--ikinci yol
select * from Products where UnitPrice between 10 and 40 -- 10 ve 40'ý da dahil eder bu komut. between arasýnda.

-- Fiyatý 10 yada 40 olan ürünleri listeleyin.
select * from Products where UnitPrice=10 or UnitPrice=40
-- ikinci yol 
select * from Products where UnitPrice in(10,40,30) -- in burada parantez içinde olanlarýn hepsini dahil eder.

-- Janet'in bilgilerini listeleyin.
select * from Employees where FirstName='Janet'
-- Janet'ýn almýþ olduðu sipariþleri listeleyin
select EmployeeID from Employees where FirstName='Janet' -- Adamýn EmployeeID numarasýný tespit edip sipariþlerde bu numarayý filtreleyerek bulunabilir.
select * from Orders where EmployeeID=3

