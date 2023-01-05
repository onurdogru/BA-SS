select * from Movies
select * from Categories
select * from Saloons
select * from Sessions
select * from Theaters
select * from Weeks


--Where Sorularý

-- 1) Süresi 150 dk ve üzeri olan filmler nelerdir ?
select * from Movies where Duration>=150

--2) Süresi 100 dk ve 150 dk arasýnda olan filmler nelerdir ?
select * from Movies where Duration>=100 and Duration<=150

--3) Saat 12:00:00 seansýnda oynayacak olan filmler hangileridir ?
select * from Sessions where Duration='12:00:00'
select * from Theaters where SessionId in (2,8)
select ID,MovieName as 'Film Adý' from Movies where ID in (3,5)

-- 4) 3 numaralý film hangi haftalarda gösterime girecektir ?
select * from Theaters where MovieId=3
select * from Weeks where ID in (2,3,4)

--5) Salon kapastesi 70'in altýnda olan salonlar hangileridir ?
select * from Saloons where Capacity<70


-- Like Sorularý

--1) Sonu A ile biten filimlerin kategorileri nelerdir ?
select * from Movies where MovieName like '%a'
select * from Categories where ID in (2,11)

--2) 2 Sihirbazýn birbiri ile rekabet içerisinde olduðu film hangisidir ?
select * from movies where Description like '%sihirbaz%'

--3) Drama yada action kategorisinde olan filimleri listeleyin. Kolon adý TR olsun.
select * from Categories where Category like '%Dram%' or Category like '%action%'
select * from MoviesCategories where CategorId in (1,2,4,5,6,7,8,9,10,11,12,13)
select MovieName as 'Film adý' from Movies where ID in (1,2,3,4,5,6,8,9,10,11,12)

-- 4) Andrew karakterinin olduðu film hangisidir ?
select * from Movies where Description like '%Andrew%'

-- 5) Ýçerisinde 'War' olan kaç kategori vardýr ?
select * from Categories where Category like '%War%'