create database MovietheaterDB
	go
		use MovieTheaterDB
		 go
			
			create table Movies(
				ID int not null primary key identity(1,1),
					Moviename nvarchar(50) not null,
						Description nvarchar(500),
							Duration smallint,
							
			)
			insert movies values ('Hotaru no haka','Genç bir çocuk ve küçük kýz kardeþi, Ýkinci Dünya Savaþý sýrasýnda Japonyada hayatta kalma mücadelesi veriyor.',89)
insert movies values ('American History X','Eski bir neo-nazi dazlak kardeþinin onun yaptýðý ayný yanlýþ yola girmesini engellemeye çalýþýr.',119)
insert movies values ('Whiplash','Genç öðrenci Andrew davul çalma iþinde gelecek vaat eden biridir ve her zaman bu iþ de en iyisi olmak istemiþtir. Bu yüzden çok zorlu bir konservatuar imtihanýna hazýrlanan Andrew ünlü müzisyenlerden birinden ders almaya karar vermiþtir.Fakat hocasý Terence Fletcher genç öðrencinin kapasitesinin tam anlamýyla doruklarýna çýkmadan onu zorlamaktan vazgeçmeyecektir.',107)
insert movies values ('Gladiator','Eski bir Romalý general, ailesini öldüren ve onu köleliðe gönderen yozlaþmýþ imparatordan intikam almak için yola koyulur.',155)
insert movies values ('The Departed','Polis teþkilatý ile mayfa arasýnda geçen çetin bir savaþý anlatan filmde,polis teþkilatý içine sýzan adamlarýn ve mafya içerisine sýzan polislerin en iyi pozisyonlara kadar geldiðini görüyoruz.Her iki tarafýnda içlerinde köstebek olduðunu öðrenmeleri sonucu, yýllarca eðitilen adamlarýn hayatý tehlikeye girer.',151)

			
			create table Categories(
				ID int not null primary key identity(1,1),
					Categoryname nvarchar(50) not null,
													
			)
insert Categories values ('Animation,Drama,War')
insert Categories values ('Drama')
insert Categories values ('Drama,Music')
insert Categories values ('Action,Adventure,Drama')
insert Categories values ('Crime,Drama,Thriller')
		

			create table Moviescategories(
				MovieID int foreign key references Movies(ID),
					categoryID int foreign key references Categories(ID)
			
			)

insert Moviescategories values (1,1)
insert Moviescategories values (2,2)
insert Moviescategories values (3,3)
insert Moviescategories values (4,4)
insert Moviescategories values (5,5)

			create table Saloons(
				ID int not null primary key identity(1,1),
					Saloon char(1) not null,
						Capacity smallint not null,

			)

insert Saloons values ('A',94)
insert Saloons values ('B',40)
insert Saloons values ('C',72)
insert Saloons values ('D',58)
insert Saloons values ('E',40)

			create table Sessions(
				ID int not null primary key identity(1,1),
					Session time not null,
			
			) 

insert Sessions values ('14:00:00')
insert Sessions values ('15:00:00')
insert Sessions values ('17:00:00')
insert Sessions values ('18:30:00')
insert Sessions values ('21:30:00')

			create table Weeks(
				ID int not null primary key identity(1,1),
					Week nchar(3) not null,
						Firstday date not null,
							Lastday date not null,

			)
insert Weeks values ('W34','2016-08-22','2016-08-29')
insert Weeks values ('W35','2016-08-29','2016-09-05')
insert Weeks values ('W36','2016-09-05','2016-09-12')
insert Weeks values ('W37','2016-09-12','2016-09-19')
insert Weeks values ('W38','2016-09-26','2016-10-02')

			create table Theaters(
				ID int not null primary key identity (1,1),
					MovieID int not null foreign key references Movies(ID),
						SaloonID int not null foreign key references Saloons(ID),
							SessionID int not null foreign key references Sessions(ID),
								WeekID int not null foreign key references Weeks(ID),
						
			
			)

insert Theaters values (2,5,4,1)
insert Theaters values (3,2,1,2)
insert Theaters values (4,1,5,3)
insert Theaters values (5,3,3,4)
insert Theaters values (1,4,2,5)

