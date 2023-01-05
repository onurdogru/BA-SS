use Northwind -- use anahtar kelimesi hangi veritaban� �zerinde �al��aca��n� temsil eder.

--Product tablosunda bulunan b�t�n kolonlar� ve i�erisinde bulunan verileri listeleyin.
select * from Products

--�al��anlar tablosundan �al��anlar�n ad� ve soyad�n� listeleyin. ad ve soyad kolon isimleri T�rk�e olsun.
select FirstName as [�al��an Ad],LastName as 'Soyad' from Employees

--�al��anlar�n �ehirlerini listeleyin.
select City from Employees

--�al��anlar� listeleyin. Ancak tekrar eden �ehirler listelenmesin.

select distinct City from Employees --distinct tekrar edenleri teslim etmez.

--�al��anlar tablosundan �al��anlar�n ad ve soyadlar�n� tek kolonda listeleyin.

select FirstName+' '+LastName as 'Ad ve soyad' from Employees
-- + ifadesi metinsel verilerde birle�tirme i�lemi, say�sal verilerde toplama i�lemini ger�ekle�tirir.

--�r�nleri �r�n ad�, fiyat� ve stok miktar� ile listeleyin.
select ProductName as '�r�n Ad�', UnitPrice as 'Fiyat', UnitsInStock from Products

--M��terilerin Id'si ve ilgili ki�inin ad� ve soyad�n� listeleyin.

select customerId as 'id',contactname as 'ad� ve soyad�' from Customers
