

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
insert Products values ('elma',2,2,null,50,200,0,0,0) -- Bu yolu kullan�rsak b�t�n sat�r ve s�tunlar�n de�erlerini s�ras� ile vermemiz gerekir. 
													  --Harfli ifadelerde bo� vermek i�in 'null' kullanabiliriz. Say�sallarda '0'kullanabilir.

--select
select * from Products where ProductName='elma'

select * from Products where Discontinued=0 -- Discontinued burada bit olarak veri tipi tan�mlanm��. Bu bize istedi�imizi listelemek i�in olanak sa�lar.

update Products set ProductName='�ilek' where ProductID=79

--select
select * from Products where ProductID=79

--------------------------------------------
delete from Products where ProductName='chai' -- bunu silemiyoruz ��nk� ba�ka tabloda 2. bir key olarak atanm��. 

-- bunu silmek i�in diyagrama gidip aradak� ba�lant�n�n properties den 'insert and update' k�sm�nda delete k�sm�n� cascade yapmam�s gerekir.

delete from Products where ProductName='�ilek'

