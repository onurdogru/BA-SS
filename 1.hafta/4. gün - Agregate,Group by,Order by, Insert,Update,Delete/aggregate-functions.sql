--Aggregate function (toplam fonksiyonlar, gruplama fonksiyonlar�)
/*
	Aggregate fonksiyonlar select ifadesiyle beraber kullan�lan geriye tek sat�r ve tek s�tun sonu� d�nd�ren fonksiyonlard�r.

	1-Count() => sat�r adedini sayan fonksiyondur.
	2-Sum() => toplama i�lemi yapar.
	3-AVG() => ortalamas�n� al�r.
	4-Min() => en d���k de�eri verir.
	5-Max()=> en y�ksek de�eri verir.

*/

--ka� adet �r�n bulunmaktad�r.
select COUNT(ProductID) as '�r�n adet', ProductName from Products

--�al��anlar�n ya�ad�klar� �ehir say�s�?
select Count(distinct City) from Employees

--�r�nler tablosunda bulunan Id'lerin toplam� ka�t�r?
select SUM(ProductID) as 'Toplam' from Products

--�r�nlerin ortalama fiyat� nedir?
select AVG(UnitPrice) as 'Ortalama fiyat' from Products


--en d���k fiyatl� olan �r�n�n fiyat� nedir?
select MIN(UnitPrice) as 'en d���k fiyat' from Products

--en y�ksek fiyatl� �r�n�n fiyat� nedir?
select Max(UnitPrice) as 'en d���k fiyat' from Products

--�uana kadarki net hesaplay�n.

--Caner => 1354337,55 
--Bahad�r=> 1265793,03
--S�la=> 1265793,03
--Furkan=> 1200850,34
--Umut=> 1265793,03
--Enes=> 14377,50
--Mert=> 1345333,72
--Mert A=> 886655
--Merts=> 56379,86
--Onur=> 4500000
--Mahmure=> 14377,50

select sum(UnitPrice*Quantity*(1-Discount)) as 'Ciro' from [Order Details]

