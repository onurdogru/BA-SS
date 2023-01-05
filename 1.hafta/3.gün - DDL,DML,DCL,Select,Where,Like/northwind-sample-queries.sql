use Northwind -- use anahtar kelimesi hangi veritabaný üzerinde çalýþacaðýný temsil eder.

--Product tablosunda bulunan bütün kolonlarý ve içerisinde bulunan verileri listeleyin.
select * from Products

--çalýþanlar tablosundan çalýþanlarýn adý ve soyadýný listeleyin. ad ve soyad kolon isimleri Türkçe olsun.
select FirstName as [Çalýþan Ad],LastName as 'Soyad' from Employees

--Çalýþanlarýn þehirlerini listeleyin.
select City from Employees

--Çalýþanlarý listeleyin. Ancak tekrar eden þehirler listelenmesin.

select distinct City from Employees --distinct tekrar edenleri teslim etmez.

--Çalýþanlar tablosundan çalýþanlarýn ad ve soyadlarýný tek kolonda listeleyin.

select FirstName+' '+LastName as 'Ad ve soyad' from Employees
-- + ifadesi metinsel verilerde birleþtirme iþlemi, sayýsal verilerde toplama iþlemini gerçekleþtirir.

--ürünleri ürün adý, fiyatý ve stok miktarý ile listeleyin.
select ProductName as 'Ürün Adý', UnitPrice as 'Fiyat', UnitsInStock from Products

--Müþterilerin Id'si ve ilgili kiþinin adý ve soyadýný listeleyin.

select customerId as 'id',contactname as 'adý ve soyadý' from Customers
