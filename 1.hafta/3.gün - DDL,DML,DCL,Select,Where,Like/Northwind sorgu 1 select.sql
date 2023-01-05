use Northwind -- use anahtar kelimesi hangi veritaban� �zerinde �al��aca��n� temsil eder.

-- product tablosunda bulunan b�t�n kolonlar� ve i�erisinde bulunan verileri listeleyin.

select * from Products

-- �al��anlar tablosunda �al��anlar�n ad� ve soyad�n� listeleyin. Ad ve soyad kolon isimleri t�rk�e olsun

select FirstName as 'AD', LastName as 'Soyad' from Employees

-- �al��anlar� �ehirlerini listeleyin
select City from Employees

--�al��anlar� listeleyin ancak tekrar eden �ehirler listelenmesin
select distinct City from Employees -- distinct tekrar edenleri teslim etmez

-- �al��anlar tablosundan �al��anlar�n ad ve soyadlar�n� tek kolonda listeleyin.

select FirstName+LastName as 'Ad Soyad' from Employees
--+ ifadesi metinsel verilerde birle�tirme i�lemi , say�sal verilerde toplama i�lemi ger�ekle�terir.
select FirstName+' '+LastName as 'Ad ve Soyad' from Employees -- Firstname ve LastName aras�nda bo�luk b�rakmak i�in ' ' �eklinde bir kullan�m var. T�rnak i�erisine ne yazarsak isim ve soyisim aras�nada onu yazar.

--�r�nleri �r�n ad� , fiyat� ve stok miktar� ile listeleyin.
select ProductName as '�r�n Ad�', UnitPrice as 'Fiyat�', UnitsInStock as 'Stok Miktar�' from Products

-- M��terilerin ID si ve ilgili ki�inin ad� ve soyad�n� listeleyin.
select CustomerID as 'M��teri ID', ContactName as 'Ad ve Soyad'  from Customers
