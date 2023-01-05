--Group By
/*
Group by komutu tablodaki ortak verilerin gruplanarak dönmesini saðlar. Group by kullanýmýndan önce gruplanacak olan alanlar belirlenip
	daha sonra o alanlara göre bir select sorgusu gerçekleþtirlir.
	- Eðer eggregate varsa onun dýþýndaki sütunlar group by ile tanýmlanmalý.

*/

-- Hangi kategoride kaç adet ürün vardýr ?
select CategoryID,count(CategoryID) as 'Adet' from Products group by CategoryID

--Not=> aggregate function haricinde kalan bütün kolnlar group by içerisinde kullanýlýr.

-- Ülkelere göre çalýþan sayýsýný listeleyin.
Select * from Employees
select Country, count(EmployeeID) as'Çalýþan Sayýsý' from Employees group by Country

-- Stopkta hangi kategoriden toplam ne kadarlýk ürün var ?
select * from Products
select CategoryID, sum(UnitsInStock*UnitPrice) as'Toplam Fiyat' from Products group by CategoryID
select sum(UnitsInStock*UnitPrice) as'Toplam Fiyat',CategoryID from Products group by CategoryID
