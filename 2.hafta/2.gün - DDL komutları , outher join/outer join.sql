--Hangi personel hangi personel'e ba�l�d�r ?
select calisan.FirstName,mudur.FirstName from Employees calisan inner join Employees mudur on calisan.ReportsTo=mudur.EmployeeID

--outher join
	--left outer join
select calisan.FirstName as '�al��an',mudur.FirstName as 'M�d�r' from Employees calisan left outer join Employees mudur on calisan.ReportsTo=mudur.EmployeeID

	--right outher join
select calisan.FirstName as '�al��an',mudur.FirstName as 'M�d�r' from Employees calisan right outer join Employees mudur on calisan.ReportsTo=mudur.EmployeeID

	--cross join
select calisan.FirstName as '�al��an',mudur.FirstName as 'M�d�r' from Employees calisan cross join Employees mudur
