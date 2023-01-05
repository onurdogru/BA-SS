-- Aggregate function (toplam fonksiyonlar, gruplama fonksiyonlar�)
/*
	aggregate fonksiyonlar select ifadesi ile beraber kullan�lan geriye tek sat�r ve tek s�tun sonu� d�nd�ren fonksiyonlard�r.

	1-) Count() => sat�r adedini sayan fonksiyondur.
	2-) Sum() => toplama i�lemi yapar.
	3=) AVG() => ortalamas�n� al�r.
	4=) Min() => En d���k de�eri verir.
	5=) Max() => En y�ksek de�eri verir.
*/
-- ka� adet �r�n bulunmaktad�r ?
select count(ProductID) as 'Toplam �r�n adet' from Products 
select count(ProductID) as 'Toplam �r�n adet', ProductName from Products -- �al��t�rd���nda hata verir. Tek sat�r ve s�tunun d���na ��km�� olursun.

-- �al��anlar�n ya�ad�klar� �ehir say�s� nedir ?
select COUNT(distinct City) from Employees

-- �r�nlerin tablosunda bulunan ID'lerin toplam� ka�t�r.
select sum(ProductID) as '�r�n ID Toplam' from Products

--�r�nlerin ortalama fiyat� nedir ? 
select avg(UnitPrice) as '�r�n Ort Fiyat' from Products

-- En d���k fiyatl� olan �r�n�n fiyat� nedir ? 
select min(UnitPrice) as 'En D���k Fiyat' from Products

-- En y�ksek fiyatl� olan �r�n�n fiyat� nedir ? 
select max(UnitPrice) as 'En Y�ksek Fiyat' from Products
select * from Products
--�uana kadar ki ciroyu (kasaya giren toplam para) hesaplay�n.
select * from [Order Details]
select Sum(UnitPrice*Quantity*(1-Discount)) from [Order Details]
