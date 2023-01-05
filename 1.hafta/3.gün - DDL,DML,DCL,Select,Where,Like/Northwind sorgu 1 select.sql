use Northwind -- use anahtar kelimesi hangi veritabaný üzerinde çalýþacaðýný temsil eder.

-- product tablosunda bulunan bütün kolonlarý ve içerisinde bulunan verileri listeleyin.

select * from Products

-- çalýþanlar tablosunda çalýþanlarýn adý ve soyadýný listeleyin. Ad ve soyad kolon isimleri türkçe olsun

select FirstName as 'AD', LastName as 'Soyad' from Employees

-- Çalýþanlarý þehirlerini listeleyin
select City from Employees

--çalýþanlarý listeleyin ancak tekrar eden þehirler listelenmesin
select distinct City from Employees -- distinct tekrar edenleri teslim etmez

-- çalýþanlar tablosundan çalýþanlarýn ad ve soyadlarýný tek kolonda listeleyin.

select FirstName+LastName as 'Ad Soyad' from Employees
--+ ifadesi metinsel verilerde birleþtirme iþlemi , sayýsal verilerde toplama iþlemi gerçekleþterir.
select FirstName+' '+LastName as 'Ad ve Soyad' from Employees -- Firstname ve LastName arasýnda boþluk býrakmak için ' ' þeklinde bir kullaným var. Týrnak içerisine ne yazarsak isim ve soyisim arasýnada onu yazar.

--ürünleri ürün adý , fiyatý ve stok miktarý ile listeleyin.
select ProductName as 'Ürün Adý', UnitPrice as 'Fiyatý', UnitsInStock as 'Stok Miktarý' from Products

-- Müþterilerin ID si ve ilgili kiþinin adý ve soyadýný listeleyin.
select CustomerID as 'Müþteri ID', ContactName as 'Ad ve Soyad'  from Customers
