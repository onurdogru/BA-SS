-- Aggregate function (toplam fonksiyonlar, gruplama fonksiyonlarý)
/*
	aggregate fonksiyonlar select ifadesi ile beraber kullanýlan geriye tek satýr ve tek sütun sonuç döndüren fonksiyonlardýr.

	1-) Count() => satýr adedini sayan fonksiyondur.
	2-) Sum() => toplama iþlemi yapar.
	3=) AVG() => ortalamasýný alýr.
	4=) Min() => En düþük deðeri verir.
	5=) Max() => En yüksek deðeri verir.
*/
-- kaç adet ürün bulunmaktadýr ?
select count(ProductID) as 'Toplam ürün adet' from Products 
select count(ProductID) as 'Toplam ürün adet', ProductName from Products -- çalýþtýrdýðýnda hata verir. Tek satýr ve sütunun dýþýna çýkmýþ olursun.

-- çalýþanlarýn yaþadýklarý þehir sayýsý nedir ?
select COUNT(distinct City) from Employees

-- Ürünlerin tablosunda bulunan ID'lerin toplamý kaçtýr.
select sum(ProductID) as 'Ürün ID Toplam' from Products

--Ürünlerin ortalama fiyatý nedir ? 
select avg(UnitPrice) as 'Ürün Ort Fiyat' from Products

-- En düþük fiyatlý olan ürünün fiyatý nedir ? 
select min(UnitPrice) as 'En Düþük Fiyat' from Products

-- En yüksek fiyatlý olan ürünün fiyatý nedir ? 
select max(UnitPrice) as 'En Yüksek Fiyat' from Products
select * from Products
--Þuana kadar ki ciroyu (kasaya giren toplam para) hesaplayýn.
select * from [Order Details]
select Sum(UnitPrice*Quantity*(1-Discount)) from [Order Details]
