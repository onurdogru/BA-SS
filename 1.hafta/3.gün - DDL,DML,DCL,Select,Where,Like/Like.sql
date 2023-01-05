--Like

--ürün adýnda i harfi geçen ürünleri listeleyin.

select * from Products where ProductName like '%i%'

--3. karakteri a olan ürünleri listeleyin.
select * from Products where ProductName like '__a%'


--Japonca bilen personelim kimdir?
select * from Employees where Notes like '%japan%'

