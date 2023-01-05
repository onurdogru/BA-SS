--Group By

/*
	Group by komutu tablodaki ortak verilerin gruplanarak d�nmesini sa�lar. Group by kullan�m�ndan �nce gruplanacak olan alanlar belirlenip daha sonra o alanlara g�re bir select sorgusu ger�ekle�tirilir.
*/

--hangi kategoride ka� adet �r�n vard�r?
select categoryId, COUNT(CategoryID) as 'Adet' from Products group by CategoryID

--Not=> Aggregate function haricinda kalan b�t�n kolonlar group by i�erisinde kullan�l�r.

--�lkelere g�re �al��an say�s�n� listeleyin
select country,COUNT(EmployeeID) from Employees group by Country

--Stokta hangi kategoriden toplam ne kadarl�k �r�n vard�r?
select CategoryID,SUM(UnitPrice*UnitsInStock) as 'Toplam Fiyat' from Products group by CategoryID
