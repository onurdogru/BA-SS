select * from Movies
select * from Categories
select * from Saloons
select * from Sessions
select * from Theaters
select * from Weeks

-- Group by sorular�

--1) B�t�n salonlar�n toplam kapasitesi ne kadard�r ?

select Saloon,sum(Capacity) from Saloons group by Saloon

--2) Ka� adet salon vard�r ve kapasiteleri nelerdir ? 

select count(distinct Saloon) as 'Salon say�s�',Capacity from Saloons group by Capacity

--3) Hangi filmin ka� kategorisi oldu�unu g�steren kodu yaz�n�z.

select MovieId,count(CategorId) as 'Kategori Adedi' from MoviesCategories group by MovieId
select * from MoviesCategories


-- Order by Sorular�

--1) Film s�relerini �oktan aza s�ralar�n�z. Film adlar�da g�z�ks�n.

select MovieName,Duration from Movies order by Duration desc

--2) 34. hafta g�sterime girecek olan filmlerin salon kapasitelerini azdan �oka do�ru s�ralay�n�z.

select * from weeks where week='W34'
select * from Theaters where WeekId=3
select * from Saloons where ID in (1,2,3,4) order by Capacity asc

--3) ��erisinde Dram olan kategorileri azdan �oka do�ru s�ralay�n�z.

select * from Categories where Category like '%Dram%' order by Category desc