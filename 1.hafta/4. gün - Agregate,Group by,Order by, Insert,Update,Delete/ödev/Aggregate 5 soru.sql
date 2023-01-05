use MovieTheaterDB
select * from Movies
select * from Categories
select * from Saloons
select * from Sessions
select * from Theaters
select * from Weeks

-- Aggregate Sorularý

-- 1) En kýsa film ile en uzun film arasýnda kaç dk'lýk bir fark vardýr ?
select max(Duration) as 'En uzun film',min(Duration) as 'En kýsa film' from Movies
select max(Duration)-min(Duration) as 'En uzun ve kýsa film arasýndaki fark' from Movies

-- 2) A ve B salonlarýnda gösterime girecek olan filmlerin toplam seyirci sayýsý kaçtýr ? Not=Her filmde salonlarýn tamamen dolduðunu düþünelim.

select * from Saloons where Saloon in ('A','B')  -- 'A' salonu ID numaralarý 1 4 7, 'B' salonu ID numaralarý 2 6
select * from Theaters where SaloonId in (1,4,7) --A salonunda gösterime girecek olan film sayýsý = 3
select * from Theaters where SaloonId in (2,6) -- B salonunda gösterime girecek olan film sayýsý = 3
select sum(Capacity)*3 as 'A' from Saloons where ID=1
select sum(Capacity)*2 as 'B' from Saloons where ID=2
select sum(Capacity)*3 as 'A+B' from Saloons where ID in (1,2)
select 120+116 as 'A+B' -- Eðer A'da 3 film B'de 2 film olsaydý nasýl yapacaktýk ? 


-- 3) B salonunda gösterime girecek olan filmlerin sayýsý nedir ?
select * from Saloons where Saloon='B'
select count(SaloonId) as 'B salonu film sayýsý' from Theaters where SaloonId in (2,6,12)

-- 4) Seansý 11:00 olan filmlerin toplam süresi nedir ? 
select * from Theaters where SessionId=1
select sum(Duration) as 'Toplam' from Movies where ID in (1,4)

-- 5) Bütün filmlerin ortala süresi nedir ?
 select avg(Duration) as 'Filmlerin ortalama süresi' from Movies
