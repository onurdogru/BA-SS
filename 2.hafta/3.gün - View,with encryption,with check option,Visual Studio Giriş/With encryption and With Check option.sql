create view Çalýþanlar
as
select EmployeeID,FirstName,LastName,Title,City from Employees

select * from Çalýþanlar

insert Çalýþanlar values ('Enes','Serenli','IT Representative','Ýstanbul')

update Çalýþanlar set Title='Developer' Where EmployeeID=10

alter view çalýþanlar
as
select EmployeeID,FirstName,LastName,Title,City from Employees where City='Ýstanbul'

insert Çalýþanlar values ('Onur','Doðru','IT Representative','Ankara')

--with encryption
--View'i oluþturan kodlarýn baþkalarý tarafýndan görüntülenmesini istemiyorsak bu kodlarý with encryption komutu ile þifreleyebilir.
alter view çalýþanlar
	with encryption 
		as
			select EmployeeID,FirstName,LastName,Title,City from Employees where City='Ýstanbul' 
-- þifrelemeyi kaldýrmak istersen with encryption kýsmýný buradan silmemiz gerekiyor.	

--With check option
--Insert iþlemi gerçekleþtirirken 'with check option' komutu ile beraber city alanýnýn varsayýlan deðerini 'Ýstanbul' olmak zorunda olduðunu belirtmiþ olduk.
--Yani belirtilen kurala göre veri ekleme iþlemini gerçekleþtirir.
alter view çalýþanlar
as
select EmployeeID,FirstName,LastName,Title,City from Employees where City='Ýstanbul' with check option --bu bize sadece belirlenen kriterde veri giriþi yapmamýzý saðlar.

insert Çalýþanlar values ('Fatih','Serenli','IT Representative','Bursa') -- Hata vericek istenbul koþulunu saðlamýyor.
