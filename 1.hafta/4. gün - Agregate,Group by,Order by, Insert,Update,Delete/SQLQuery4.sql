-- Order by
/*
	Order by komutu sorgu sonucunu sýralamak için kullanýlan komuttur.
		Order by komutu tablodaki belirtilen alan veya alanlara göre sonucu bize sýralý olarak getirir
		Order by komutu ile beraber artan veya azalan sýralama yapmak mümkündür.

		ascending => artan sýralama (azdan çoka)
		descending => azalan sýralama (çoktan aza)

*/
-- Hangi kategoride kaç adet ürün vardýr ? Ürün adedine göre azdan çoka doðru sýralayýn.
select CategoryID,count(CategoryID) as 'Adet' from Products group by CategoryID order by 2 asc -- 1. ve 2. kolondan 2. sinin sýralanmasýný istiyoruz. order by dan sonra 2 yazdýk.
select CategoryID,count(CategoryID) as 'Adet' from Products group by CategoryID order by adet asc -- ismi biz verdik kolona bunuda yazabiliriz.

--Ünvaný Mr. veya Dr. olanlarý isimlerine göre çoktan aza doðru sýralayýn.
select * from Employees
select * from Employees where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.' order by FirstName desc
select FirstName,TitleOfCourtesy from Employees where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.' order by FirstName desc
select * from Employees where TitleOfCourtesy like '%r.%' order by FirstName desc -- like ile de yapýlabilir.

--Çalýþanlarýn yaþlarýný listeleyin. Yaþlarýný azdan çoka doðru sýralarýn.
select Firstname, lastname, Year(getdate())-year(BirthDate) as 'Yaþ'  from Employees order by 3 asc -- Þuanki tarihten doðum tarihlerini çýkardýk.

year() -- yýlý veren fonk.
getdate()-- þuanki tarihi veren fonk.
Year(getdate()) --þuanki tarihin yýlýný verir.

-- 1948 yýlýnda doðan personeller kimlerdir ?
select * from Employees where BirthDate like '%1948%'
select * from Employees where year(BirthDate)=1948

--1948, 1955 ve 1960 yýllarýnda doðanlarý yýla göre artan sýralama ile listeleyin.
select * from Employees where year(BirthDate) in (1948, 1955, 1960) order by BirthDate asc
select * from Employees where year(BirthDate)=1948 or year(BirthDate)=1955 or year(BirthDate)=1960 order by BirthDate asc

--Çalýþanlarýn ortalama yaþlarý nedir ?
select avg(Year(getdate())-year(BirthDate)) as 'Yaþ' from Employees
select sum(Year(getdate())-year(BirthDate)) as 'Yaþ' from Employees

