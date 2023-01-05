--Group By
/*
Group by komutu tablodaki ortak verilerin gruplanarak d�nmesini sa�lar. Group by kullan�m�ndan �nce gruplanacak olan alanlar belirlenip
	daha sonra o alanlara g�re bir select sorgusu ger�ekle�tirlir.
	- E�er eggregate varsa onun d���ndaki s�tunlar group by ile tan�mlanmal�.

*/

-- Hangi kategoride ka� adet �r�n vard�r ?
select CategoryID,count(CategoryID) as 'Adet' from Products group by CategoryID

--Not=> aggregate function haricinde kalan b�t�n kolnlar group by i�erisinde kullan�l�r.

-- �lkelere g�re �al��an say�s�n� listeleyin.
Select * from Employees
select Country, count(EmployeeID) as'�al��an Say�s�' from Employees group by Country

-- Stopkta hangi kategoriden toplam ne kadarl�k �r�n var ?
select * from Products
select CategoryID, sum(UnitsInStock*UnitPrice) as'Toplam Fiyat' from Products group by CategoryID
select sum(UnitsInStock*UnitPrice) as'Toplam Fiyat',CategoryID from Products group by CategoryID
