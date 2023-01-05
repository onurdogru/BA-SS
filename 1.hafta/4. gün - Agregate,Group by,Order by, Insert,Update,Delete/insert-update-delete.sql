

--DML
	--select
	--insert
	--update
	--delete

select * from Products

/*
	ProductName: armut
	categoryId:1
	supplierId:1
	unitPrice:20
	unitsInStock:500
*/

--insert
insert into Products(ProductName,CategoryID,SupplierID,UnitPrice,UnitsInStock) values ('armut',1,1,20,500)

--select
select * from Products where ProductName='armut'

--insert II
insert Products values ('elma',2,2,null,50,200,0,0,0)

--select
select * from Products where ProductName='elma'
-----------------------------------------------------
update Products set ProductName='çilek' where ProductID=79

--select
select * from Products where ProductID=79

------------------------------------------

delete from Products where ProductName='chai'

