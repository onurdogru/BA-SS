--Order by

/*
	Order by komutu sorgu sonucunu s�ralamak i�in kullan�lan komuttur. Order by komutu tablodaki belirtilen alan veya alanlara g�re sonucu bize s�ral� olarak getirir. order by komutu ile beraber artan veya azalan �ekilde s�ralama yapmak m�mk�nd�r.

		ascending => artan s�ralama
		descending=> azalan s�ralama
*/

--hangi kategoride ka� adet �r�n vard�r? �r�n adetine g�re azdan �ok'a do�ru s�ralay�n.
select categoryId, COUNT(CategoryID) as 'Adet' from Products group by CategoryID order by  2 asc

--Alternatif
select categoryId, COUNT(CategoryID) as 'Adet' from Products group by CategoryID order by Adet asc

--�nvan� Mr. veya Dr. olanlar� isimlerine g�re �oktan az'a do�ru s�ralay�n.

select * from Employees where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.' order by FirstName desc

select FirstName,TitleOfCourtesy from Employees where TitleOfCourtesy like '%r.%' order by FirstName desc

--�al��anlar�n ya�lar�n� listeleyin. Ya�lar�n� azdan �ok'a do�ru s�ralay�n.
select Firstname,lastname, Year(Getdate())-year(birthdate) as 'Ya�' from Employees order by Ya� asc

--1948 y�l�nda do�an personeller kimlerdir?
select * from Employees where BirthDate like '%1948%'

select * from Employees where YEAR(BirthDate)=1948

--1948,1955 ve 1960 y�llar�nda do�anlar� y�l'a g�re artan s�ralama ile listeleyin.
select * from Employees where YEAR(BirthDate)=1948 or YEAR(BirthDate)=1955 or YEAR(BirthDate)=1960 order by BirthDate asc

select * from Employees where YEAR(BirthDate) in(1948,1955,1960) order by BirthDate 

--�al��anlar�n ortalama ya�� nedir?
select avg(YEAR(GETDATE())-YEAR(BirthDate)) as 'ortalama' from Employees

