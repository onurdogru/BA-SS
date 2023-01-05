--Select

-- T-SQL büyük küçük harf duyarlýlýðý yoktur.

--select <kolon adý> from <tablo adý>
select MovieName from movies

--weeks tablosu içerisinde bulunan "week", "firstday", "lastday" kolonlarýna ait verileri listeme
-- mavi renkler komutlarý temsil eder pembe renkler fonkiyonlarý temsil eder.
select Week,Weekfirstday,Weeklastday from Weeks

--saloons tablosunu tamamýný listele.

select * from Saloons -- yýldýz bütün kolonlarý temsil eder.

--movie tablosundaki bütün kolonlarý listele. Kolon isimleri TR olsun.
select ID as 'id', MovieName as 'Film adý', Description as 'açýklama' from Movies