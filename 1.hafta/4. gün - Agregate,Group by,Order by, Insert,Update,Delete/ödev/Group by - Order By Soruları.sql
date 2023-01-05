select * from Movies
select * from Categories
select * from Saloons
select * from Sessions
select * from Theaters
select * from Weeks

-- Group by sorularý

--1) Bütün salonlarýn toplam kapasitesi ne kadardýr ?

select Saloon,sum(Capacity) from Saloons group by Saloon

--2) Kaç adet salon vardýr ve kapasiteleri nelerdir ? 

select count(distinct Saloon) as 'Salon sayýsý',Capacity from Saloons group by Capacity

--3) Hangi filmin kaç kategorisi olduðunu gösteren kodu yazýnýz.

select MovieId,count(CategorId) as 'Kategori Adedi' from MoviesCategories group by MovieId
select * from MoviesCategories


-- Order by Sorularý

--1) Film sürelerini çoktan aza sýralarýnýz. Film adlarýda gözüksün.

select MovieName,Duration from Movies order by Duration desc

--2) 34. hafta gösterime girecek olan filmlerin salon kapasitelerini azdan çoka doðru sýralayýnýz.

select * from weeks where week='W34'
select * from Theaters where WeekId=3
select * from Saloons where ID in (1,2,3,4) order by Capacity asc

--3) Ýçerisinde Dram olan kategorileri azdan çoka doðru sýralayýnýz.

select * from Categories where Category like '%Dram%' order by Category desc