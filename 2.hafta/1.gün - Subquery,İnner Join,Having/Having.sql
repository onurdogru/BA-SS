-- 1) Having

/*
	sorgu sonucu gelen sonuç kümesi içerisinde aggregate fonksiyonlarýna baðlý olacak þekilde bir filtreleme
	yapýlacaksa where komutu yerine HAVING komutu kullanýlmalýdýr. Bu sayede aggregate fonk. da filtrekeme iþlemlerine dahil edilir.

*/

-- her bir sipariþteki toplam ürün sayýsý 100'den az olanlarý listeleyin.

select * from [Order Details] where sum(Quantity)<100 -- bu sorgu hata verir. Where komutundan sonra aggregate kullanýlmaz. Alt sorgu ile olabilir.
select * from [Order Details] having sum(Quantity)<100 -- aggtegate var gruop by gerekecek. çok satýr çok stun veremez.
select OrderID,sum(Quantity) from [Order Details] group by OrderID having sum(Quantity)<100

-- Stopkta hangi kategoriden toplam ne kadarlýk ürün vardýr ? 10000'den çok olanlarý listeleyin.

select CategoryID,sum(UnitPrice*UnitsInStock) from Products group by CategoryID having sum(UnitPrice*UnitsInStock)>10000

-- Hangi personel hangi müþteriye kaç adet satýþ yapmýþtýr ? 2 satýþtan büyük olanlarý listeleyin

select EmployeeID,CustomerID,count(*) from Orders group by EmployeeID, CustomerID having count(*)>2 --count(orderID)'de kullanabilirdik. caount satýr adedini sayacak.
