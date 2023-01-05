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
			insert movies values ('Hotaru no haka','Gen� bir �ocuk ve k���k k�z karde�i, �kinci D�nya Sava�� s�ras�nda Japonyada hayatta kalma m�cadelesi veriyor.',89)
insert movies values ('American History X','Eski bir neo-nazi dazlak karde�inin onun yapt��� ayn� yanl�� yola girmesini engellemeye �al���r.',119)
insert movies values ('Whiplash','Gen� ��renci Andrew davul �alma i�inde gelecek vaat eden biridir ve her zaman bu i� de en iyisi olmak istemi�tir. Bu y�zden �ok zorlu bir konservatuar imtihan�na haz�rlanan Andrew �nl� m�zisyenlerden birinden ders almaya karar vermi�tir.Fakat hocas� Terence Fletcher gen� ��rencinin kapasitesinin tam anlam�yla doruklar�na ��kmadan onu zorlamaktan vazge�meyecektir.',107)
insert movies values ('Gladiator','Eski bir Romal� general, ailesini �ld�ren ve onu k�leli�e g�nderen yozla�m�� imparatordan intikam almak i�in yola koyulur.',155)
insert movies values ('The Departed','Polis te�kilat� ile mayfa aras�nda ge�en �etin bir sava�� anlatan filmde,polis te�kilat� i�ine s�zan adamlar�n ve mafya i�erisine s�zan polislerin en iyi pozisyonlara kadar geldi�ini g�r�yoruz.Her iki taraf�nda i�lerinde k�stebek oldu�unu ��renmeleri sonucu, y�llarca e�itilen adamlar�n hayat� tehlikeye girer.',151)

			
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

