--Select

--T-SQL b�y�k k���k harf duyarl�l��� yoktur.

--select <kolon ad�> from <tablo ad�>
select MovieName from movies

--weeks tablosu i�erisinden "first day" isimli kolon i�erisinde bulunan verileri listeleyin.
select firstday from weeks

--weeks tablosu i�erisinde bulunan "week","first day", "last day" kolonlar�na ait verileri listeleyin.

select Week,FirstDay,LastDay from Weeks

--saloons tablosunda bulunan b�t�n kolonlara ait verileri listeleyin.

select ID,Saloon,Capacity from Saloons

select * from Saloons -- * b�t�n kolonlar� temsil eder.

--movies tablosunda bulunan b�t�n kolonlar�n i�erisinde bulunan verileri listeleyin. Ancak kolonlar� T�rk�e olsun.

select ID as 'id', MovieName as 'Film ad�',Description as 'A��klama',Duration as 'S�re' from Movies
