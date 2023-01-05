--Aggregate function (toplam fonksiyonlar, gruplama fonksiyonlarý)
/*
	Aggregate fonksiyonlar select ifadesiyle beraber kullanýlan geriye tek satýr ve tek sütun sonuç döndüren fonksiyonlardýr.

	1-Count() => satýr adedini sayan fonksiyondur.
	2-Sum() => toplama iþlemi yapar.
	3-AVG() => ortalamasýný alýr.
	4-Min() => en düþük deðeri verir.
	5-Max()=> en yüksek deðeri verir.

*/

--kaç adet ürün bulunmaktadýr.
select COUNT(ProductID) as 'Ürün adet', ProductName from Products

--Çalýþanlarýn yaþadýklarý þehir sayýsý?
select Count(distinct City) from Employees

--ürünler tablosunda bulunan Id'lerin toplamý kaçtýr?
select SUM(ProductID) as 'Toplam' from Products

--ürünlerin ortalama fiyatý nedir?
select AVG(UnitPrice) as 'Ortalama fiyat' from Products


--en düþük fiyatlý olan ürünün fiyatý nedir?
select MIN(UnitPrice) as 'en düþük fiyat' from Products

--en yüksek fiyatlý ürünün fiyatý nedir?
select Max(UnitPrice) as 'en düþük fiyat' from Products

--þuana kadarki net hesaplayýn.

--Caner => 1354337,55 
--Bahadýr=> 1265793,03
--Sýla=> 1265793,03
--Furkan=> 1200850,34
--Umut=> 1265793,03
--Enes=> 14377,50
--Mert=> 1345333,72
--Mert A=> 886655
--Merts=> 56379,86
--Onur=> 4500000
--Mahmure=> 14377,50

select sum(UnitPrice*Quantity*(1-Discount)) as 'Ciro' from [Order Details]

