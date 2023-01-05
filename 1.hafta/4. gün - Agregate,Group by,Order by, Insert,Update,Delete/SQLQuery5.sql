

--DML
	--Slecet
	--insert
	--update
	--delete
select * from Products

/*
	ProductName: armut
	categoryId: 1
	supplierId: 1
	unitprice: 20
	unitInStock: 500
*/
--insert
insert into Products(ProductName,CategoryID,SupplierID,UnitPrice,UnitsInStock) values('armut',1,1,20,500) 
--select
select * from Products where ProductName='armut'

--insert II
insert Products values ('elma',2,2,null,50,200,0,0,0) -- Bu yolu kullanýrsak bütün satýr ve sütunlarýn deðerlerini sýrasý ile vermemiz gerekir. 
													  --Harfli ifadelerde boþ vermek için 'null' kullanabiliriz. Sayýsallarda '0'kullanabilir.

--select
select * from Products where ProductName='elma'

select * from Products where Discontinued=0 -- Discontinued burada bit olarak veri tipi tanýmlanmýþ. Bu bize istediðimizi listelemek için olanak saðlar.

update Products set ProductName='çilek' where ProductID=79

--select
select * from Products where ProductID=79

--------------------------------------------
delete from Products where ProductName='chai' -- bunu silemiyoruz çünkü baþka tabloda 2. bir key olarak atanmýþ. 

-- bunu silmek için diyagrama gidip aradaký baðlantýnýn properties den 'insert and update' kýsmýnda delete kýsmýný cascade yapmamýs gerekir.

delete from Products where ProductName='çilek'

