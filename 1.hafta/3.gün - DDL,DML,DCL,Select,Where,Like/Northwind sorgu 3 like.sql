-- Like

-- �r�n ad�nda i harfi ge�en �r�nleri listeleyin.
select * from Products where ProductName like '%i%' --%i sonda i olanlar, %i% herhangi biryerinde i olanlar

--3. karakteri a olan �r�nleri listeleyin.
select * from Products where ProductName like '__a%' -- _ alt tre karakterin s�ra numaras�n� temsil eder.

-- Japonca bilen personelim kimdir ?
select * from Suppliers where Country like 'Japan' -- tedarik�ilerde japonca olabilir

select * from Employees where Notes like '%japan%' -- �al��anlar�mda japonda bile notlarda �spat� var 