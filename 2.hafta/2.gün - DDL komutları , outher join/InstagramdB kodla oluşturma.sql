--DDL
--CREATE
--ALTER
--DROP

--DATABASE

create database InstagramDB
go
use InstagramDB
go
--table
create table Users(
ID int not null primary key identity(1,1),
Username nvarchar(50) not null,
Password nvarchar(50) not null
)

--insert
insert Users values ('Umut','1234'),('Furkan','1234'),('Arya','1234'),('sýla','1234'),('kaan','1234')

create table Userprofiles(
ID int not null primary key foreign key references Users(ID),
Firstname nvarchar(50),
Lastname nvarchar(50),
Birthdate date
)

--insert Userprofiles
--PHOTOS
--photocomments

insert Userprofiles values (1,'Umut','Evren','02.02.2021'),(2,'Furkan','Tunç','02.02.2021'),(3,'Enes','Serenli','02.02.2021'),(4,'Onur','Doðru','02.02.2021'),(5,'Kaan','Atýcý','02.02.2021')

create table Photos(
ID int not null primary key identity (1,1),
Photopath nvarchar(250) not null,
userid int foreign key references Users(ID),
Phototitle nvarchar(250) not null,
Description nvarchar(500) not null,
Createdate datetime not null
)

insert Photos values ('C:/Users/desktop/yaðmurlu bir gün.jpg',1,'Yaðmurlu Gün','asdasddsa','03.02.2022'),('C:/Users/desktop/Sahil.jpg',2,'Ýstanbul','asdasddsa','02.02.2022')

create table Photocomments(
ID int primary key not null,
userid int not null foreign key references users(ID),
Photoid int not null foreign key references Photos(ID),
Comment nvarchar(500),
Createdate datetime default getdate()

)

insert Photocomments values (1,1,1,'evet kapalý hava','03.02.2022'),(2,1,2,'evet kapalý hava','03.02.2022')

--2 nolu kullacýnýn detaylarýný listeleyin

--fotoðraflara kimler yorum yapmýþ ad soyad ve kullanýcý adý ile listeleyin.

--Alter
alter table Userprofiles
add Email nvarchar(150)

select * from Userprofiles

--DROP

create table testtable(ID int primary key)

drop table testtable

--Drop column

alter table userprofiles
drop column Email

--use Nortwind
--Drop databse InstagramDB