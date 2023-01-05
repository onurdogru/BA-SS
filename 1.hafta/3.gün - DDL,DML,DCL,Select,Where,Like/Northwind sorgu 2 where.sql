-- Where (kriter/Filtre)
-- Where b�t�n tablodan sonra kullanmak gerekir. Beraberinde operat�rler kullan�l�r.

-- �r�n ID'di 1 olan� listeleyin.
select * from Products where ProductID=1

/* 
	operat�rler
		= atama operat�r�
		> b�y�kt�r
		< k���kt�r
		>= b�y�k e�ittir
		<= k���k e�ittir
		== e�ittir
		!= e�it de�ildir.
*/
--�r�n fiyat� 30 dan b�y�k olanlar�n �r�n ad�, fiyat� ve stok miktar� bilgileri ile listeleyin.
select ProductName, UnitPrice, UnitsInStock from Products where UnitPrice>30

-- �r�n fiyat� 30 olan �r�n�n ad� nedir ?
select ProductName as '�r�n Ad�' from Products where UnitPrice=30

-- Fiyat� 10 ile 40 aras�nda olan �r�nleri listeleyin.
select * from Products where UnitPrice>10 and UnitPrice<40
--ikinci yol
select * from Products where UnitPrice between 10 and 40 -- 10 ve 40'� da dahil eder bu komut. between aras�nda.

-- Fiyat� 10 yada 40 olan �r�nleri listeleyin.
select * from Products where UnitPrice=10 or UnitPrice=40
-- ikinci yol 
select * from Products where UnitPrice in(10,40,30) -- in burada parantez i�inde olanlar�n hepsini dahil eder.

-- Janet'in bilgilerini listeleyin.
select * from Employees where FirstName='Janet'
-- Janet'�n alm�� oldu�u sipari�leri listeleyin
select EmployeeID from Employees where FirstName='Janet' -- Adam�n EmployeeID numaras�n� tespit edip sipari�lerde bu numaray� filtreleyerek bulunabilir.
select * from Orders where EmployeeID=3

