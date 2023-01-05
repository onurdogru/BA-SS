-- Order by
/*
	Order by komutu sorgu sonucunu s�ralamak i�in kullan�lan komuttur.
		Order by komutu tablodaki belirtilen alan veya alanlara g�re sonucu bize s�ral� olarak getirir
		Order by komutu ile beraber artan veya azalan s�ralama yapmak m�mk�nd�r.

		ascending => artan s�ralama (azdan �oka)
		descending => azalan s�ralama (�oktan aza)

*/
-- Hangi kategoride ka� adet �r�n vard�r ? �r�n adedine g�re azdan �oka do�ru s�ralay�n.
select CategoryID,count(CategoryID) as 'Adet' from Products group by CategoryID order by 2 asc -- 1. ve 2. kolondan 2. sinin s�ralanmas�n� istiyoruz. order by dan sonra 2 yazd�k.
select CategoryID,count(CategoryID) as 'Adet' from Products group by CategoryID order by adet asc -- ismi biz verdik kolona bunuda yazabiliriz.

--�nvan� Mr. veya Dr. olanlar� isimlerine g�re �oktan aza do�ru s�ralay�n.
select * from Employees
select * from Employees where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.' order by FirstName desc
select FirstName,TitleOfCourtesy from Employees where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.' order by FirstName desc
select * from Employees where TitleOfCourtesy like '%r.%' order by FirstName desc -- like ile de yap�labilir.

--�al��anlar�n ya�lar�n� listeleyin. Ya�lar�n� azdan �oka do�ru s�ralar�n.
select Firstname, lastname, Year(getdate())-year(BirthDate) as 'Ya�'  from Employees order by 3 asc -- �uanki tarihten do�um tarihlerini ��kard�k.

year() -- y�l� veren fonk.
getdate()-- �uanki tarihi veren fonk.
Year(getdate()) --�uanki tarihin y�l�n� verir.

-- 1948 y�l�nda do�an personeller kimlerdir ?
select * from Employees where BirthDate like '%1948%'
select * from Employees where year(BirthDate)=1948

--1948, 1955 ve 1960 y�llar�nda do�anlar� y�la g�re artan s�ralama ile listeleyin.
select * from Employees where year(BirthDate) in (1948, 1955, 1960) order by BirthDate asc
select * from Employees where year(BirthDate)=1948 or year(BirthDate)=1955 or year(BirthDate)=1960 order by BirthDate asc

--�al��anlar�n ortalama ya�lar� nedir ?
select avg(Year(getdate())-year(BirthDate)) as 'Ya�' from Employees
select sum(Year(getdate())-year(BirthDate)) as 'Ya�' from Employees

