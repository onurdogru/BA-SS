-- 1) Having

/*
	sorgu sonucu gelen sonu� k�mesi i�erisinde aggregate fonksiyonlar�na ba�l� olacak �ekilde bir filtreleme
	yap�lacaksa where komutu yerine HAVING komutu kullan�lmal�d�r. Bu sayede aggregate fonk. da filtrekeme i�lemlerine dahil edilir.

*/

-- her bir sipari�teki toplam �r�n say�s� 100'den az olanlar� listeleyin.

select * from [Order Details] where sum(Quantity)<100 -- bu sorgu hata verir. Where komutundan sonra aggregate kullan�lmaz. Alt sorgu ile olabilir.
select * from [Order Details] having sum(Quantity)<100 -- aggtegate var gruop by gerekecek. �ok sat�r �ok stun veremez.
select OrderID,sum(Quantity) from [Order Details] group by OrderID having sum(Quantity)<100

-- Stopkta hangi kategoriden toplam ne kadarl�k �r�n vard�r ? 10000'den �ok olanlar� listeleyin.

select CategoryID,sum(UnitPrice*UnitsInStock) from Products group by CategoryID having sum(UnitPrice*UnitsInStock)>10000

-- Hangi personel hangi m��teriye ka� adet sat�� yapm��t�r ? 2 sat��tan b�y�k olanlar� listeleyin

select EmployeeID,CustomerID,count(*) from Orders group by EmployeeID, CustomerID having count(*)>2 --count(orderID)'de kullanabilirdik. caount sat�r adedini sayacak.
