--Where (kriter/filtre)


--�r�n Id'si 1 olan� listeleyin.
select * from Products where ProductID=15

/*
	operat�rler
		= atama operat�r�
		> b�y�kt�r
		< k���kt�r
		>= b�y�k e�ittir
		<= k���k e�ittir
		!= e�it de�ildir.
*/

--�r�n fiyat� 30'dan b�y�k olan �r�nlerin �r�n ad�, fiyat� ve stok miktar�n� listeleyin.

select ProductName as '�r�n Ad',UnitPrice as 'Fiyat', UnitsInStock as 'Stok Miktar' from Products where UnitPrice>30

--�r�n fiyat� 30 olan �r�n�n ad� nedir?

select * from Products where UnitPrice=30

--fiyat� 10 ile 40 aras�nda olan �r�nleri listeleyin.

select * from Products where UnitPrice>10 and UnitPrice<40
--II.YOL
select * from Products where UnitPrice between 10 and 40

--fiyat� 10 ya da 40 olan �r�nleri listeleyin.
select * from Products where UnitPrice=10 or UnitPrice=40

--II.YOL
select * from Products where UnitPrice in(10,40)

--janet'�n bilgilerini listeleyin.

select * from Employees where FirstName='janet'

--janet'�n alm�� oldu�u sipari�leri listeleyin.
select EmployeeID from Employees where FirstName='janet' -- EmployeeID=3
select * from Orders where EmployeeID=3

