--Order by

/*
	Order by komutu sorgu sonucunu sýralamak için kullanýlan komuttur. Order by komutu tablodaki belirtilen alan veya alanlara göre sonucu bize sýralý olarak getirir. order by komutu ile beraber artan veya azalan þekilde sýralama yapmak mümkündür.

		ascending => artan sýralama
		descending=> azalan sýralama
*/

--hangi kategoride kaç adet ürün vardýr? Ürün adetine göre azdan çok'a doðru sýralayýn.
select categoryId, COUNT(CategoryID) as 'Adet' from Products group by CategoryID order by  2 asc

--Alternatif
select categoryId, COUNT(CategoryID) as 'Adet' from Products group by CategoryID order by Adet asc

--Ünvaný Mr. veya Dr. olanlarý isimlerine göre çoktan az'a doðru sýralayýn.

select * from Employees where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.' order by FirstName desc

select FirstName,TitleOfCourtesy from Employees where TitleOfCourtesy like '%r.%' order by FirstName desc

--Çalýþanlarýn yaþlarýný listeleyin. Yaþlarýný azdan çok'a doðru sýralayýn.
select Firstname,lastname, Year(Getdate())-year(birthdate) as 'Yaþ' from Employees order by Yaþ asc

--1948 yýlýnda doðan personeller kimlerdir?
select * from Employees where BirthDate like '%1948%'

select * from Employees where YEAR(BirthDate)=1948

--1948,1955 ve 1960 yýllarýnda doðanlarý yýl'a göre artan sýralama ile listeleyin.
select * from Employees where YEAR(BirthDate)=1948 or YEAR(BirthDate)=1955 or YEAR(BirthDate)=1960 order by BirthDate asc

select * from Employees where YEAR(BirthDate) in(1948,1955,1960) order by BirthDate 

--çalýþanlarýn ortalama yaþý nedir?
select avg(YEAR(GETDATE())-YEAR(BirthDate)) as 'ortalama' from Employees

