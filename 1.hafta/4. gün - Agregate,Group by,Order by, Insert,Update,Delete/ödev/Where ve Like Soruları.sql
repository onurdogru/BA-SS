select * from Movies
select * from Categories
select * from Saloons
select * from Sessions
select * from Theaters
select * from Weeks


--Where Sorular�

-- 1) S�resi 150 dk ve �zeri olan filmler nelerdir ?
select * from Movies where Duration>=150

--2) S�resi 100 dk ve 150 dk aras�nda olan filmler nelerdir ?
select * from Movies where Duration>=100 and Duration<=150

--3) Saat 12:00:00 seans�nda oynayacak olan filmler hangileridir ?
select * from Sessions where Duration='12:00:00'
select * from Theaters where SessionId in (2,8)
select ID,MovieName as 'Film Ad�' from Movies where ID in (3,5)

-- 4) 3 numaral� film hangi haftalarda g�sterime girecektir ?
select * from Theaters where MovieId=3
select * from Weeks where ID in (2,3,4)

--5) Salon kapastesi 70'in alt�nda olan salonlar hangileridir ?
select * from Saloons where Capacity<70


-- Like Sorular�

--1) Sonu A ile biten filimlerin kategorileri nelerdir ?
select * from Movies where MovieName like '%a'
select * from Categories where ID in (2,11)

--2) 2 Sihirbaz�n birbiri ile rekabet i�erisinde oldu�u film hangisidir ?
select * from movies where Description like '%sihirbaz%'

--3) Drama yada action kategorisinde olan filimleri listeleyin. Kolon ad� TR olsun.
select * from Categories where Category like '%Dram%' or Category like '%action%'
select * from MoviesCategories where CategorId in (1,2,4,5,6,7,8,9,10,11,12,13)
select MovieName as 'Film ad�' from Movies where ID in (1,2,3,4,5,6,8,9,10,11,12)

-- 4) Andrew karakterinin oldu�u film hangisidir ?
select * from Movies where Description like '%Andrew%'

-- 5) ��erisinde 'War' olan ka� kategori vard�r ?
select * from Categories where Category like '%War%'