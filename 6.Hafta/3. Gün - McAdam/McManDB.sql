--Database
Create Database McManDB
go
use McManDB
go

--Hamburgerler Tablosu
create table Hamburgers (
 HamburgerID int not null primary key identity (1,1),
	HamburgerName nvarchar(30) not null,
		Price money not null)

--Hamburger Veri Ekleme
insert Hamburgers values ('Whooper',25),('SteakHouse',35),('Chichen Burger',20)

--Dimensions Tablosu
Create table Dimensions (
DimensionID	int not null primary key identity (1,1),
	Dimension nvarchar(20) not null,
		Price money not null )

--Veri Ekleme
insert Dimensions values ('Small',0),('Middle',3),('Large',5)


--Extralar Tablosu
Create table Extras (
ExtraID int not null primary key identity (1,1),
	ExtraName nvarchar(20) not null,
		Price money not null )


--Veri ekleme
insert Extras values ('Ketchap',2),('MAyonnaise',2),('Ranch',2),('Buffalo',2),('Chaddar',2),('Garlic Mayonnaise',2)


--Sipariþler Tablosu
Create table Orders (
ORderID int not null primary key identity (1,1),
	CustomerName nvarchar(100) not null,
		CustomerPhone nchar(11),
			OrderDate date not null )


--Veri ekleme
insert Orders values ('Enes',null,'2022.03.27'),('Onur',null,'2022.03.27'),('Eslem',null,'2022.03.27')


--Sipariþ Detaylarý Tablosu
Create table [Order Details] (
OrderID int not null foreign key references Orders(OrderID),
	HamburgerID int not null foreign key references Hamburgers(HamburgerID),
		DimensionsID int not null foreign key references Dimensions(DimensionID),
			ExtraID	int not null foreign key references Extras(ExtraID),
				Quantity smallint not null )


--Veri Ekleme
insert [Order Details] values (1,2,3,1,1),(1,2,3,6,1),(1,2,3,3,1),(1,2,3,4,1),(2,3,3,1,1),(2,2,3,2,1),(3,1,1,1,1),(3,1,1,2,1),(3,1,1,6,1)