use MovieTheaterDB
select * from Movies
select * from Categories
select * from Saloons
select * from Sessions
select * from Theaters
select * from Weeks

-- Aggregate Sorular�

-- 1) En k�sa film ile en uzun film aras�nda ka� dk'l�k bir fark vard�r ?
select max(Duration) as 'En uzun film',min(Duration) as 'En k�sa film' from Movies
select max(Duration)-min(Duration) as 'En uzun ve k�sa film aras�ndaki fark' from Movies

-- 2) A ve B salonlar�nda g�sterime girecek olan filmlerin toplam seyirci say�s� ka�t�r ? Not=Her filmde salonlar�n tamamen doldu�unu d���nelim.

select * from Saloons where Saloon in ('A','B')  -- 'A' salonu ID numaralar� 1 4 7, 'B' salonu ID numaralar� 2 6
select * from Theaters where SaloonId in (1,4,7) --A salonunda g�sterime girecek olan film say�s� = 3
select * from Theaters where SaloonId in (2,6) -- B salonunda g�sterime girecek olan film say�s� = 3
select sum(Capacity)*3 as 'A' from Saloons where ID=1
select sum(Capacity)*2 as 'B' from Saloons where ID=2
select sum(Capacity)*3 as 'A+B' from Saloons where ID in (1,2)
select 120+116 as 'A+B' -- E�er A'da 3 film B'de 2 film olsayd� nas�l yapacakt�k ? 


-- 3) B salonunda g�sterime girecek olan filmlerin say�s� nedir ?
select * from Saloons where Saloon='B'
select count(SaloonId) as 'B salonu film say�s�' from Theaters where SaloonId in (2,6,12)

-- 4) Seans� 11:00 olan filmlerin toplam s�resi nedir ? 
select * from Theaters where SessionId=1
select sum(Duration) as 'Toplam' from Movies where ID in (1,4)

-- 5) B�t�n filmlerin ortala s�resi nedir ?
 select avg(Duration) as 'Filmlerin ortalama s�resi' from Movies
