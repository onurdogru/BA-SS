--Select

--T-SQL büyük küçük harf duyarlýlýðý yoktur.

--select <kolon adý> from <tablo adý>
select MovieName from movies

--weeks tablosu içerisinden "first day" isimli kolon içerisinde bulunan verileri listeleyin.
select firstday from weeks

--weeks tablosu içerisinde bulunan "week","first day", "last day" kolonlarýna ait verileri listeleyin.

select Week,FirstDay,LastDay from Weeks

--saloons tablosunda bulunan bütün kolonlara ait verileri listeleyin.

select ID,Saloon,Capacity from Saloons

select * from Saloons -- * bütün kolonlarý temsil eder.

--movies tablosunda bulunan bütün kolonlarýn içerisinde bulunan verileri listeleyin. Ancak kolonlarý Türkçe olsun.

select ID as 'id', MovieName as 'Film adý',Description as 'Açýklama',Duration as 'Süre' from Movies
