-- Like

-- Ürün adýnda i harfi geçen ürünleri listeleyin.
select * from Products where ProductName like '%i%' --%i sonda i olanlar, %i% herhangi biryerinde i olanlar

--3. karakteri a olan ürünleri listeleyin.
select * from Products where ProductName like '__a%' -- _ alt tre karakterin sýra numarasýný temsil eder.

-- Japonca bilen personelim kimdir ?
select * from Suppliers where Country like 'Japan' -- tedarikçilerde japonca olabilir

select * from Employees where Notes like '%japan%' -- çalýþanlarýmda japonda bile notlarda ýspatý var 