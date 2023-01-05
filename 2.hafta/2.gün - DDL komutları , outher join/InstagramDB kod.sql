create database InstagramDB
go
use InstagramDB
go

	create table Users(
		ID int not null primary key identity(1,1),
			Username nvarchar(30) not null,
				Password char(8) not null
			
		)

			insert Users values ('umut','12345678'),('furkan','12345678'),('arya','12345678'),('s�la','12345678'),('kaan','12345678')

	create table UserProfiles(
		ID int not null primary key foreign key references Users(ID),
			Firstname nvarchar(30) not null,
				Lastname nvarchar(50) not null,
					Birtdate date not null,

		)
			insert UserProfiles values (1,'Umut','Y�lba�','01.01.1990'),(2,'Furkan','xxxx','01.01.1990'),(3,'Arya','xxxx','01.01.1990'),(4,'S�la','xxxx','01.01.1990'),(5,'Kaan','xxxx','01.01.1990')


	create table photos(
			ID int not null primary key identity (1,1),
				UserID int not null foreign key references Users(ID),
					Title nvarchar (50) not null,
						Photopath nvarchar(250) not null,
							Description nvarchar(250),
								Createdate datetime not null						
									
		)

			insert photos values (1,'hava ya�murlu','C:\Users\Desktop\yagmurlu_bir_gun.jpg','tam bir bahar havas�','02.02.2022'),(2,'sahilde','C:\Users\Desktop\sahil.jpg','hey gidi istanbul','02.02.2022')

	Create table Photocomments(
		ID int primary key not null,
			UserID int not null foreign key references Users(ID),
				PhotosID int not null foreign key references Photos(ID),
					Comment nvarchar(250),
						Createdate datetime default getdate() not null,

		
		)

			insert Photocomments values (1,1,1,'Aynen kabak gibi �sland�k','2022.02.22'),(2,4,2,'G�zel �ehir','2022.02.22')
			
--2 nolu kullac�n�n kullan�c� detaylar�n� listeleyin.
	
	select * from UserProfiles where ID=2

--kullan�c� ad� arya olan�n kullan�c� detaylar�n� listeleyin.
	
	select * from Users	u inner join UserProfiles up on u.ID=up.ID where Firstname='arya'

--Foto�raflara kimler yorum yapm��? ad, soyad ve kullan�c� ad� ile birlikte listeleyin.
	
	select u.Username,up.Firstname,up.Lastname,p.Comment from Photocomments p inner join Users u on u.ID=p.UserID inner join UserProfiles up on up.ID=u.ID

	alter table Userprofiles 
		add Email nvarchar(50)

			update UserProfiles set Email='umut.evren@hotmail.com' where ID=1

	create table testtable(
		ID int not null primary key identity(1,1)
		)
	
	drop table testtable

	alter table userprofiles
		drop column email