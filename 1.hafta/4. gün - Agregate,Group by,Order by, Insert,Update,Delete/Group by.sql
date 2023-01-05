--Group By

/*
	Group by komutu tablodaki ortak verilerin gruplanarak dönmesini saðlar. Group by kullanýmýndan önce gruplanacak olan alanlar belirlenip daha sonra o alanlara göre bir select sorgusu gerçekleþtirilir.
*/

--hangi kategoride kaç adet ürün vardýr?
select categoryId, COUNT(CategoryID) as 'Adet' from Products group by CategoryID

--Not=> Aggregate function haricinda kalan bütün kolonlar group by içerisinde kullanýlýr.

--ülkelere göre çalýþan sayýsýný listeleyin
select country,COUNT(EmployeeID) from Employees group by Country

--Stokta hangi kategoriden toplam ne kadarlýk ürün vardýr?
select CategoryID,SUM(UnitPrice*UnitsInStock) as 'Toplam Fiyat' from Products group by CategoryID
