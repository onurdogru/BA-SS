--Select

-- T-SQL b�y�k k���k harf duyarl�l��� yoktur.

--select <kolon ad�> from <tablo ad�>
select MovieName from movies

--weeks tablosu i�erisinde bulunan "week", "firstday", "lastday" kolonlar�na ait verileri listeme
-- mavi renkler komutlar� temsil eder pembe renkler fonkiyonlar� temsil eder.
select Week,Weekfirstday,Weeklastday from Weeks

--saloons tablosunu tamam�n� listele.

select * from Saloons -- y�ld�z b�t�n kolonlar� temsil eder.

--movie tablosundaki b�t�n kolonlar� listele. Kolon isimleri TR olsun.
select ID as 'id', MovieName as 'Film ad�', Description as 'a��klama' from Movies