create view �al��anlar
as
select EmployeeID,FirstName,LastName,Title,City from Employees

select * from �al��anlar

insert �al��anlar values ('Enes','Serenli','IT Representative','�stanbul')

update �al��anlar set Title='Developer' Where EmployeeID=10

alter view �al��anlar
as
select EmployeeID,FirstName,LastName,Title,City from Employees where City='�stanbul'

insert �al��anlar values ('Onur','Do�ru','IT Representative','Ankara')

--with encryption
--View'i olu�turan kodlar�n ba�kalar� taraf�ndan g�r�nt�lenmesini istemiyorsak bu kodlar� with encryption komutu ile �ifreleyebilir.
alter view �al��anlar
	with encryption 
		as
			select EmployeeID,FirstName,LastName,Title,City from Employees where City='�stanbul' 
-- �ifrelemeyi kald�rmak istersen with encryption k�sm�n� buradan silmemiz gerekiyor.	

--With check option
--Insert i�lemi ger�ekle�tirirken 'with check option' komutu ile beraber city alan�n�n varsay�lan de�erini '�stanbul' olmak zorunda oldu�unu belirtmi� olduk.
--Yani belirtilen kurala g�re veri ekleme i�lemini ger�ekle�tirir.
alter view �al��anlar
as
select EmployeeID,FirstName,LastName,Title,City from Employees where City='�stanbul' with check option --bu bize sadece belirlenen kriterde veri giri�i yapmam�z� sa�lar.

insert �al��anlar values ('Fatih','Serenli','IT Representative','Bursa') -- Hata vericek istenbul ko�ulunu sa�lam�yor.
