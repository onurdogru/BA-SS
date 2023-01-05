--DDL
--CREATE
--ALTER
--DROP

--database
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
--insert Users
insert Users values ('umut','1234'),('furkan','1234'),('arya','1234'),('sýla','1234'),('kaan','1234')

create table UserProfiles(
ID int not null primary key foreign key references Users(ID),
Firstname nvarchar(50),
Lastname nvarchar(50),
Birthdate date,

)

--insert userprofiles.
insert UserProfiles values(1,'Umut','Yýlbaþ','01.01.1990'),(2,'Furkan','xxxx','01.01.1990'),(3,'Arya','xxxx','01.01.1990'),(4,'Sýla','xxxx','01.01.1990'),(5,'Kaan','xxxx','01.01.1990')
--Photos
create table Photos(
ID int primary key identity(1,1),
UserId int not null foreign key references Users(ID),
PhotoTitle nvarchar(250) not null,
PhotoPath nvarchar(250) not null,
Description nvarchar(500) not null,
CreatedDate datetime
)
--Insert Photos
insert Photos values (1,'hava yaðmurlu','C:\Users\Desktop\yagmurlu_bir_gun.jpg','tam bir bahar havasý','02.02.2022'),(2,'sahilde','C:\Users\Desktop\sahil.jpg','hey gidi istanbul','02.02.2022')

--PhotoComments
create table PhotoComments(
ID int primary key identity(1,1),
UserId int not null foreign key references Users(ID),
PhotoId int not null foreign key references Photos(ID),
Comment nvarchar(500),
CreatedDate datetime default getdate()
)

--Insert photocomments
insert PhotoComments values (3,1,'evet ya hava kapalý','02.02.2022'),(4,2,'dikkat et rüzgar uçurmasýn','02.02.2022')



select * from Users
select * from UserProfiles

--2 nolu kullacýnýn kullanýcý detaylarýný listeleyin.
select * from UserProfiles where ID=2

--kullanýcý adý arya olanýn kullanýcý detaylarýný listeleyin.
select * from Users u inner join UserProfiles up on u.ID=up.ID where u.Username='arya'

--Fotoðraflara kimler yorum yapmýþ? ad, soyad ve kullanýcý adý ile birlikte listeleyin.
select up.Firstname,up.Lastname,u.Username,p.PhotoTitle,pc.Comment from PhotoComments pc 
join UserProfiles up on up.ID=pc.UserId
join Users u on u.ID=up.ID
join Photos p on p.ID=pc.PhotoId


--ALTER
alter table UserProfiles 
add Email nvarchar(150)

--DROP

create table TestTable(ID int primary key)

drop table TestTable

--drop column
alter table UserProfiles
drop column Email

--use Northwind
--drop database InstagramDB
