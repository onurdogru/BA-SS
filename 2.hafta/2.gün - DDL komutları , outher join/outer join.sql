--Hangi personel hangi personel'e baðlýdýr ?
select calisan.FirstName,mudur.FirstName from Employees calisan inner join Employees mudur on calisan.ReportsTo=mudur.EmployeeID

--outher join
	--left outer join
select calisan.FirstName as 'Çalýþan',mudur.FirstName as 'Müdür' from Employees calisan left outer join Employees mudur on calisan.ReportsTo=mudur.EmployeeID

	--right outher join
select calisan.FirstName as 'Çalýþan',mudur.FirstName as 'Müdür' from Employees calisan right outer join Employees mudur on calisan.ReportsTo=mudur.EmployeeID

	--cross join
select calisan.FirstName as 'Çalýþan',mudur.FirstName as 'Müdür' from Employees calisan cross join Employees mudur
